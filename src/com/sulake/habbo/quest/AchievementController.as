package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.inventory.achievements.AchievementData;
   import com.sulake.habbo.communication.messages.outgoing.inventory.achievements.GetAchievementsComposer;
   import com.sulake.habbo.session.events.BadgeImageReadyEvent;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class AchievementController implements IDisposable
   {
      
      private static const const_1093:int = 4;
      
      private static const const_1094:int = 5;
      
      private static const const_1573:int = 2;
      
      private static const const_1095:int = 6;
      
      private static const const_684:int = 180;
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var _window:IFrameWindow;
      
      private var var_673:IWindowContainer;
      
      private var var_844:IWindowContainer;
      
      private var var_236:IWindowContainer;
      
      private var var_1580:IWindowContainer;
      
      private var var_1049:IWindowContainer;
      
      private var var_101:AchievementCategories;
      
      private var _category:AchievementCategory;
      
      private var var_93:AchievementData;
      
      private var _badgeRefreshTimer:Timer;
      
      private var var_845:Dictionary;
      
      private var var_1302:Matrix;
      
      private var var_2051:ColorMatrixFilter;
      
      public function AchievementController(param1:HabboQuestEngine)
      {
         this.var_845 = new Dictionary();
         super();
         this._questEngine = param1;
         this._badgeRefreshTimer = new Timer(100,1);
         this._badgeRefreshTimer.addEventListener(TimerEvent.TIMER,this.doBadgeRefresh);
         this.var_1302 = new Matrix();
         this.var_2051 = this.createGrayscaleFilter();
      }
      
      public static function moveAllChildrenToColumn(param1:IWindowContainer, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         while(_loc4_ < param1.numChildren)
         {
            _loc5_ = param1.getChildAt(_loc4_);
            if(_loc5_ != null && _loc5_.visible && _loc5_.height > 0)
            {
               _loc5_.y = param2;
               param2 += _loc5_.height + param3;
            }
            _loc4_++;
         }
      }
      
      public static function getLowestPoint(param1:IWindowContainer) : int
      {
         var _loc4_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.numChildren)
         {
            _loc4_ = param1.getChildAt(_loc3_);
            if(_loc4_.visible)
            {
               _loc2_ = Math.max(_loc2_,_loc4_.y + _loc4_.height);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         this.var_845 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this._badgeRefreshTimer)
         {
            this._badgeRefreshTimer.removeEventListener(TimerEvent.TIMER,this.doBadgeRefresh);
            this._badgeRefreshTimer.reset();
            this._badgeRefreshTimer = null;
         }
         this.var_673 = null;
         this.var_236 = null;
         this.var_236 = null;
         this.var_1049 = null;
         this.var_1580 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function isVisible() : Boolean
      {
         return this._window && this._window.visible;
      }
      
      public function close() : void
      {
         if(this._window)
         {
            this._window.visible = false;
         }
      }
      
      public function onRoomExit() : void
      {
         this.close();
      }
      
      public function onToolbarClick() : void
      {
         if(this.isVisible())
         {
            this.close();
         }
         else if(this.var_101 == null)
         {
            this._questEngine.send(new GetAchievementsComposer());
         }
         else
         {
            this.refresh();
            this._window.visible = true;
            this._window.activate();
         }
      }
      
      public function onAchievements(param1:Array) : void
      {
         if(this.var_101 == null)
         {
            this.var_101 = new AchievementCategories(param1);
         }
         this.refresh();
         this._window.visible = true;
         this._window.activate();
      }
      
      public function onAchievement(param1:AchievementData) : void
      {
         if(this.var_101 != null)
         {
            this.var_101.update(param1);
            if(this.var_93 && this.var_93.type == param1.type)
            {
               this.var_93 = param1;
            }
            if(this._window && this._window.visible)
            {
               this.refresh();
            }
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshCategoryList();
         this.refreshAchievementsHeader();
         this.refreshAchievementsFooter();
         this.refreshAchievementList();
         this.refreshAchievementDetails();
         moveAllChildrenToColumn(this._window.content,0,4);
         this._window.height = getLowestPoint(this._window.content) + 50;
      }
      
      private function refreshCategoryList() : void
      {
         var _loc3_:Boolean = false;
         if(this._category != null)
         {
            this.var_673.visible = false;
            return;
         }
         this.var_673.visible = true;
         var _loc1_:Array = this.var_101.categoryList;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < _loc1_.length)
            {
               this.refreshCategoryEntry(true,_loc2_,_loc1_[_loc2_]);
            }
            else
            {
               _loc3_ = this.refreshCategoryEntry(false,_loc2_,null);
               if(_loc3_)
               {
                  break;
               }
            }
            _loc2_++;
         }
         this.var_673.height = getLowestPoint(this.var_673);
      }
      
      private function refreshAchievementList() : void
      {
         var _loc3_:Boolean = false;
         if(this._category == null)
         {
            this.var_844.visible = false;
            return;
         }
         this.var_844.visible = true;
         Logger.log(this._category.code + " has " + this._category.achievements.length + " achievemenets");
         var _loc1_:Array = this._category.achievements;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < _loc1_.length)
            {
               this.refreshAchievementEntry(_loc2_,_loc1_[_loc2_]);
            }
            else
            {
               _loc3_ = this.refreshAchievementEntry(_loc2_,null);
               if(_loc3_)
               {
                  break;
               }
            }
            _loc2_++;
         }
         this.var_844.height = getLowestPoint(this.var_844);
      }
      
      private function refreshAchievementsHeader() : void
      {
         if(this._category == null)
         {
            this.var_1049.visible = false;
            return;
         }
         this.var_1049.visible = true;
         this.var_1049.findChildByName("category_name_txt").caption = this._questEngine.getAchievementCategoryName(this._category);
         this._questEngine.setupAchievementCategoryImage(this.var_1049,this._category);
      }
      
      private function refreshAchievementsFooter() : void
      {
         if(this._category == null)
         {
            this.var_1580.visible = false;
            return;
         }
         this.var_1580.visible = true;
      }
      
      private function refreshAchievementDetails() : void
      {
         if(this.var_93 == null)
         {
            this.var_236.visible = false;
            return;
         }
         this.var_236.visible = true;
         this.var_236.findChildByName("achievement_name_txt").caption = this._questEngine.localization.getAchievementName(this.var_93.badgeId);
         this.var_236.findChildByName("achievement_desc_txt").caption = this._questEngine.localization.getAchievementDesc(this.var_93.badgeId,this.var_93.scoreLimit);
         this._questEngine.localization.registerParameter("achievements.details.level","level","" + this.var_93.level);
         var _loc1_:String = this._questEngine.localization.getKey("inventory.achievements.unit." + this.var_93.type,"");
         var _loc3_:ITextWindow = this.var_236.findChildByName("progress_txt") as ITextWindow;
         this._questEngine.localization.registerParameter("achievements.details.progress","points","" + this.var_93.currentPoints);
         this._questEngine.localization.registerParameter("achievements.details.progress","limit","" + this.var_93.scoreLimit);
         _loc3_.text = this._questEngine.localization.getKey("achievements.details.progress");
         _loc3_.visible = true;
         this._questEngine.refreshReward(this.var_236,this.var_93.method_3,this.var_93.levelRewardPoints);
         this.refreshBadgeImageLarge(this.var_236,this.var_93);
         this.var_236.findChildByName("bar_c").width = const_684;
         this.var_236.findChildByName("bar_r").x = const_684 + 4;
         var _loc4_:int = Math.max(0,Math.round(const_684 * this.var_93.currentPoints / this.var_93.scoreLimit));
         this.var_236.findChildByName("bar_a_c").width = _loc4_;
         this.var_236.findChildByName("bar_a_r").x = _loc4_ + 4;
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IFrameWindow(this._questEngine.getXmlWindow("Achievements"));
         this._window.findChildByTag("close").procedure = this.onWindowClose;
         this._window.findChildByName("back_button").procedure = this.onBack;
         this._window.center();
         this.var_673 = IWindowContainer(this._window.findChildByName("categories_cont"));
         this.var_1049 = IWindowContainer(this._window.findChildByName("achievements_header_cont"));
         this.var_844 = IWindowContainer(this._window.findChildByName("achievements_cont"));
         this.var_236 = IWindowContainer(this._window.findChildByName("achievement_cont"));
         this.var_1580 = IWindowContainer(this._window.findChildByName("achievements_footer_cont"));
         new PendingImage(this._questEngine,this._window.findChildByName("bar_l"),"ach_progressbar1");
         new PendingImage(this._questEngine,this._window.findChildByName("bar_c"),"ach_progressbar2");
         new PendingImage(this._questEngine,this._window.findChildByName("bar_r"),"ach_progressbar3");
         new PendingImage(this._questEngine,this._window.findChildByName("bar_a_c"),"ach_progressbar4");
         new PendingImage(this._questEngine,this._window.findChildByName("bar_a_r"),"ach_progressbar5");
      }
      
      private function refreshCategoryEntry(param1:Boolean, param2:int, param3:AchievementCategory) : Boolean
      {
         var _loc4_:IWindowContainer = IWindowContainer(this.var_673.getChildByName("" + param2));
         if(_loc4_ == null)
         {
            if(!param1)
            {
               return true;
            }
            _loc4_ = IWindowContainer(this._questEngine.getXmlWindow("AchievementCategory"));
            _loc4_.name = "" + param2;
            this.var_673.addChild(_loc4_);
            new PendingImage(this._questEngine,IBitmapWrapperWindow(_loc4_.findChildByName("completion_bg_green_bitmap")),"quest_counterbkg2");
            _loc4_.findChildByName("bg").procedure = this.onSelectCategory;
            _loc4_.x = (_loc4_.width + const_1094) * (param2 % const_1093);
            _loc4_.y = (_loc4_.height + const_1094) * Math.floor(param2 / const_1093);
         }
         _loc4_.findChildByName("bg").id = param2;
         if(param1)
         {
            _loc4_.findChildByName("header_txt").caption = this._questEngine.getAchievementCategoryName(param3);
            _loc4_.findChildByName("completion_txt").caption = param3.getProgress() + "/" + param3.getMaxProgress();
            this._questEngine.setupAchievementCategoryImage(_loc4_,param3);
            _loc4_.visible = true;
         }
         else
         {
            _loc4_.visible = false;
         }
         return false;
      }
      
      private function refreshAchievementEntry(param1:int, param2:AchievementData) : Boolean
      {
         var _loc8_:* = null;
         var _loc3_:IWindowContainer = IWindowContainer(this.var_844.getChildByName("" + param1));
         var _loc4_:int = Math.floor(param1 / const_1095);
         var _loc5_:* = _loc4_ < const_1573;
         if(_loc3_ == null)
         {
            if(param2 == null && !_loc5_)
            {
               return true;
            }
            _loc3_ = IWindowContainer(this._questEngine.getXmlWindow("Achievement"));
            _loc3_.name = "" + param1;
            this.var_844.addChild(_loc3_);
            _loc8_ = _loc3_.findChildByName("achievement_pic_bitmap") as IBitmapWrapperWindow;
            _loc8_.bitmap = new BitmapData(_loc8_.width,_loc8_.height,true,16777215);
            new PendingImage(this._questEngine,_loc3_.findChildByName("bg_selected_bitmap"),"achievement_active");
            new PendingImage(this._questEngine,_loc3_.findChildByName("bg_unselected_bitmap"),"achievement_inactive");
            _loc3_.x = _loc3_.width * (param1 % const_1095);
            _loc3_.y = _loc3_.height * _loc4_;
         }
         var _loc6_:IWindow = _loc3_.findChildByName("bg_unselected_bitmap");
         var _loc7_:IWindow = _loc3_.findChildByName("bg_selected_bitmap");
         _loc6_.id = param1;
         this.refreshBadgeImage(_loc3_,param2);
         if(param2)
         {
            _loc6_.visible = param2 != this.var_93;
            _loc7_.visible = param2 == this.var_93;
            _loc6_.procedure = this.onSelectAchievement;
            _loc3_.visible = true;
         }
         else if(_loc5_)
         {
            _loc7_.visible = false;
            _loc6_.visible = true;
            _loc6_.procedure = null;
            _loc3_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
         }
         return false;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.close();
         }
      }
      
      private function onSelectCategory(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = param2.id;
         Logger.log("Category index: " + _loc3_);
         this._category = this.var_101.categoryList[_loc3_];
         this.var_93 = this._category.achievements[0];
         Logger.log("Category: " + this._category.code);
         this.refresh();
      }
      
      private function onSelectAchievement(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = param2.id;
         Logger.log("Achievement index: " + _loc3_);
         this.var_93 = this._category.achievements[_loc3_];
         Logger.log("Achievement: " + this.var_93.badgeId);
         this.refresh();
      }
      
      private function onBack(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._category = null;
         this.var_93 = null;
         this.refresh();
      }
      
      private function refreshBadgeImage(param1:IWindowContainer, param2:AchievementData) : void
      {
         var _loc3_:IBitmapWrapperWindow = param1.findChildByName("achievement_pic_bitmap") as IBitmapWrapperWindow;
         if(param2 == null)
         {
            _loc3_.visible = false;
            return;
         }
         var _loc4_:BitmapData = this.var_845[param2.badgeId];
         if(_loc4_ == null)
         {
            _loc4_ = this._questEngine.sessionDataManager.getBadgeImage(param2.badgeId);
            this.var_845[param2.badgeId] = _loc4_;
         }
         var _loc5_:Point = new Point((_loc3_.width - _loc4_.width) / 2,(_loc3_.height - _loc4_.height) / 2);
         _loc3_.bitmap.fillRect(_loc3_.bitmap.rect,16777215);
         if(param2.firstLevelAchieved)
         {
            _loc3_.bitmap.copyPixels(_loc4_,_loc4_.rect,_loc5_,null,null,true);
         }
         else
         {
            _loc3_.bitmap.applyFilter(_loc4_,_loc4_.rect,_loc5_,this.var_2051);
         }
         _loc3_.visible = false;
         _loc3_.visible = true;
      }
      
      private function refreshBadgeImageLarge(param1:IWindowContainer, param2:AchievementData) : void
      {
         var _loc3_:IBitmapWrapperWindow = param1.findChildByName("achievement_pic_bitmap") as IBitmapWrapperWindow;
         var _loc4_:BitmapData = this.var_845[param2.badgeId];
         if(_loc4_ == null)
         {
            _loc4_ = this._questEngine.sessionDataManager.getBadgeImage(param2.badgeId);
            this.var_845[param2.badgeId] = _loc4_;
         }
         if(_loc3_.bitmap == null)
         {
            _loc3_.bitmap = new BitmapData(_loc3_.width,_loc3_.height,true,16777215);
         }
         this.var_1302.identity();
         this.var_1302.scale(2,2);
         this.var_1302.translate((_loc3_.width - _loc4_.width * 2) / 2,(_loc3_.height - _loc4_.height * 2) / 2);
         _loc3_.bitmap.fillRect(_loc3_.bitmap.rect,16777215);
         _loc3_.bitmap.draw(_loc4_,this.var_1302);
         if(!param2.firstLevelAchieved)
         {
            _loc3_.bitmap.applyFilter(_loc3_.bitmap,_loc3_.bitmap.rect,new Point(0,0),this.var_2051);
         }
         _loc3_.visible = false;
         _loc3_.visible = true;
      }
      
      private function doBadgeRefresh(param1:TimerEvent) : void
      {
         this._badgeRefreshTimer.reset();
         this.refresh();
      }
      
      public function onBadgeImageReady(param1:BadgeImageReadyEvent) : void
      {
         if(this._window == null)
         {
            return;
         }
         this.var_845[param1.badgeId] = param1.badgeImage;
         if(!this._badgeRefreshTimer.running)
         {
            this._badgeRefreshTimer.start();
         }
      }
      
      private function createGrayscaleFilter() : ColorMatrixFilter
      {
         var _loc1_:* = 0.3333333333333333;
         var _loc2_:Number = 1 - _loc1_ * 2;
         var _loc3_:Array = [_loc2_,_loc1_,_loc1_,0,0,_loc1_,_loc2_,_loc1_,0,0,_loc1_,_loc1_,_loc2_,0,0,0,0,0,1,0];
         return new ColorMatrixFilter(_loc3_);
      }
   }
}
