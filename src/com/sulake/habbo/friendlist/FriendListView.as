package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.friendlist.events.HabboFriendListTrackingEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class FriendListView
   {
      
      private static const const_1482:Point = new Point(110,50);
       
      
      private var _friendList:HabboFriendList;
      
      private var var_1839:FriendListTabsView;
      
      private var var_15:IFrameWindow;
      
      private var var_999:IWindowContainer;
      
      private var var_255:IWindowContainer;
      
      private var var_1489:ITextWindow;
      
      private var var_1837:int = -1;
      
      private var var_1838:int = -1;
      
      private var var_1840:Boolean;
      
      public function FriendListView(param1:HabboFriendList)
      {
         super();
         this._friendList = param1;
         this.var_1839 = new FriendListTabsView(this._friendList);
      }
      
      public function isFriendListOpen() : Boolean
      {
         return this.var_15 != null && this.var_15.visible;
      }
      
      public function openFriendList() : void
      {
         if(this.var_15 == null)
         {
            this.prepare();
            this.var_15.position = const_1482;
            this._friendList.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_61,HabboToolbarIconEnum.FRIENDLIST,this.var_15));
         }
         else
         {
            this.var_15.visible = true;
            this.var_15.activate();
         }
      }
      
      public function showInfo(param1:WindowEvent, param2:String) : void
      {
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.type == WindowMouseEvent.const_25)
         {
            this.var_1489.text = "";
         }
         else if(_loc3_.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            this.var_1489.text = param2;
         }
      }
      
      public function refresh(param1:String) : void
      {
         if(this.var_15 == null)
         {
            return;
         }
         this.var_1839.refresh(param1);
         this.refreshWindowSize();
      }
      
      public function close() : void
      {
         if(this.var_15 != null)
         {
            this.var_15.visible = false;
         }
      }
      
      public function isOpen() : Boolean
      {
         return this.var_15 && this.var_15.visible;
      }
      
      private function prepare() : void
      {
         this.var_15 = IFrameWindow(this._friendList.getXmlWindow("main_window"));
         this.var_15.findChildByTag("close").procedure = this.onWindowClose;
         this.var_999 = IWindowContainer(this.var_15.content.findChildByName("main_content"));
         this.var_255 = IWindowContainer(this.var_15.content.findChildByName("footer"));
         this.var_1839.prepare(this.var_999);
         this.var_15.procedure = this.onWindow;
         this.var_15.content.setParamFlag(HabboWindowParam.const_1175,false);
         this.var_15.content.setParamFlag(HabboWindowParam.const_1104,true);
         this.var_15.header.setParamFlag(HabboWindowParam.const_744,false);
         this.var_15.header.setParamFlag(HabboWindowParam.const_725,true);
         this.var_15.content.setParamFlag(HabboWindowParam.const_744,false);
         this.var_15.content.setParamFlag(HabboWindowParam.const_725,true);
         this.var_15.findChildByName("open_edit_ctgs_but").procedure = this.onEditCategoriesButtonClick;
         this.var_1489 = ITextWindow(this.var_15.findChildByName("info_text"));
         this.var_1489.text = "";
         this._friendList.refreshButton(this.var_15,"open_edit_ctgs",true,null,0);
         this.var_15.title.color = 4294623744;
         this.var_15.title.textColor = 4287851525;
         this.refresh("prepare");
         this.var_15.height = 350;
         this.var_15.width = 230;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         this.var_15.visible = false;
         this._friendList.trackFriendListEvent(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_CLOSED);
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_43 || param2 != this.var_15)
         {
            return;
         }
         if(this.var_1840)
         {
            return;
         }
         var _loc3_:int = this.var_1837 == -1 ? 0 : int(this.var_15.height - this.var_1837);
         var _loc4_:int = this.var_1838 == -1 ? 0 : int(this.var_15.width - this.var_1838);
         this._friendList.tabs.tabContentHeight = Math.max(100,this._friendList.tabs.tabContentHeight + _loc3_);
         this._friendList.tabs.windowWidth = Math.max(147,this._friendList.tabs.windowWidth + _loc4_);
         this.refresh("resize: " + _loc3_);
      }
      
      private function refreshWindowSize() : void
      {
         this.var_1840 = true;
         this.var_255.visible = false;
         this.var_255.y = Util.getLowestPoint(this.var_15.content);
         this.var_255.width = this._friendList.tabs.windowWidth;
         this.var_255.visible = true;
         this.var_15.content.height = Util.getLowestPoint(this.var_15.content);
         this.var_15.content.width = this._friendList.tabs.windowWidth - 10;
         this.var_15.header.width = this._friendList.tabs.windowWidth - 10;
         this.var_15.height = this.var_15.content.height + 30;
         this.var_15.width = this._friendList.tabs.windowWidth;
         this.var_1840 = false;
         this.var_15.scaler.setParamFlag(HabboWindowParam.const_766,false);
         this.var_15.scaler.setParamFlag(HabboWindowParam.const_1326,this._friendList.tabs.findSelectedTab() != null);
         this.var_15.scaler.setParamFlag(HabboWindowParam.const_744,false);
         this.var_15.scaler.setParamFlag(HabboWindowParam.const_1175,false);
         this.var_15.scaler.x = this.var_15.width - this.var_15.scaler.width;
         this.var_15.scaler.y = this.var_15.height - this.var_15.scaler.height;
         this.var_1837 = this.var_15.height;
         this.var_1838 = this.var_15.width;
         Logger.log("RESIZED: " + this._friendList.tabs.windowWidth);
      }
      
      private function onEditCategoriesButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         this._friendList.view.showInfo(param1,"${friendlist.tip.preferences}");
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Edit categories clicked");
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         this._friendList.openHabboWebPage("link.format.friendlist.pref",new Dictionary(),_loc3_.stageX,_loc3_.stageY);
      }
      
      public function get mainWindow() : IWindowContainer
      {
         return this.var_15;
      }
   }
}
