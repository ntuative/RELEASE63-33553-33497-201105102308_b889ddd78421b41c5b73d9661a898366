package com.sulake.habbo.widget
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.navigator.IHabboNavigator;
   import com.sulake.habbo.quest.IHabboQuestEngine;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.sound.IHabboSoundManager;
   import com.sulake.habbo.widget.avatarinfo.AvatarInfoWidget;
   import com.sulake.habbo.widget.chatinput.RoomChatInputWidget;
   import com.sulake.habbo.widget.chatinput.RoomChatInputWidgetOld;
   import com.sulake.habbo.widget.chooser.FurniChooserWidget;
   import com.sulake.habbo.widget.chooser.UserChooserWidget;
   import com.sulake.habbo.widget.doorbell.DoorbellWidget;
   import com.sulake.habbo.widget.enums.RoomWidgetEnum;
   import com.sulake.habbo.widget.friendrequest.FriendRequestWidget;
   import com.sulake.habbo.widget.furniture.clothingchange.ClothingChangeFurnitureWidget;
   import com.sulake.habbo.widget.furniture.credit.CreditFurniWidget;
   import com.sulake.habbo.widget.furniture.dimmer.DimmerFurniWidget;
   import com.sulake.habbo.widget.furniture.ecotronbox.EcotronBoxFurniWidget;
   import com.sulake.habbo.widget.furniture.petpackage.PetPackageFurniWidget;
   import com.sulake.habbo.widget.furniture.placeholder.PlaceholderWidget;
   import com.sulake.habbo.widget.furniture.present.PresentFurniWidget;
   import com.sulake.habbo.widget.furniture.stickie.SpamWallPostItFurniWidget;
   import com.sulake.habbo.widget.furniture.stickie.StickieFurniWidget;
   import com.sulake.habbo.widget.furniture.teaser.TeaserFurniWidget;
   import com.sulake.habbo.widget.furniture.trophy.TrophyFurniWidget;
   import com.sulake.habbo.widget.furniture.welcomegift.WelcomeGiftWidget;
   import com.sulake.habbo.widget.infostand.InfostandWidget;
   import com.sulake.habbo.widget.loadingbar.LoadingBarWidget;
   import com.sulake.habbo.widget.memenu.MeMenuWidget;
   import com.sulake.habbo.widget.notification.UserNotificationWidget;
   import com.sulake.habbo.widget.playlisteditor.PlayListEditorWidget;
   import com.sulake.habbo.widget.poll.PollWidget;
   import com.sulake.habbo.widget.poll.VoteWidget;
   import com.sulake.habbo.widget.purse.PurseWidget;
   import com.sulake.habbo.widget.roomchat.RoomChatWidget;
   import com.sulake.habbo.widget.roomqueue.RoomQueueWidget;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCatalog;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboInventory;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboNavigator;
   import com.sulake.iid.IIDHabboQuestEngine;
   import com.sulake.iid.IIDHabboSoundManager;
   import com.sulake.iid.IIDRoomEngine;
   import iid.IIDHabboWindowManager;
   
   public class RoomWidgetFactory extends Component implements IRoomWidgetFactory
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_2940:IAssetLibrary;
      
      private var var_58:IHabboLocalizationManager;
      
      private var var_132:IHabboConfigurationManager;
      
      private var _questEngine:IHabboQuestEngine;
      
      private var _catalog:IHabboCatalog;
      
      private var _inventory:IHabboInventory;
      
      private var _soundManager:IHabboSoundManager;
      
      private var _navigator:IHabboNavigator;
      
      private var _roomEngine:IRoomEngine;
      
      private var var_2547:int = 0;
      
      public function RoomWidgetFactory(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         super(param1,param2,param3);
         this.var_2940 = param1.root.assets;
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationReady);
         queueInterface(new IIDHabboConfigurationManager(),this.onHabboConfigurationReady);
         queueInterface(new IIDHabboCatalog(),this.onCatalogReady);
         queueInterface(new IIDHabboInventory(),this.onInventoryReady);
         queueInterface(new IIDHabboSoundManager(),this.onSoundManagerReady);
         queueInterface(new IIDHabboNavigator(),this.onNavigatorReady);
         queueInterface(new IIDHabboQuestEngine(),this.onQuestEngineReady);
         queueInterface(new IIDRoomEngine(),this.onRoomEngineReady);
      }
      
      override public function dispose() : void
      {
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_58)
         {
            this.var_58.release(new IIDHabboLocalizationManager());
            this.var_58 = null;
         }
         if(this.var_132)
         {
            this.var_132.release(new IIDHabboConfigurationManager());
            this.var_132 = null;
         }
         if(this._soundManager)
         {
            this._soundManager.release(new IIDHabboSoundManager());
            this._soundManager = null;
         }
         if(this._catalog)
         {
            this._catalog.release(new IIDHabboCatalog());
            this._catalog = null;
         }
         if(this._inventory)
         {
            this._inventory.release(new IIDHabboInventory());
            this._inventory = null;
         }
         if(this._navigator)
         {
            this._navigator.release(new IIDHabboNavigator());
            this._navigator = null;
         }
         if(this._questEngine)
         {
            this._questEngine.release(new IIDHabboQuestEngine());
            this._questEngine = null;
         }
         if(this._roomEngine)
         {
            this._roomEngine.release(new IIDRoomEngine());
            this._roomEngine = null;
         }
         super.dispose();
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = param2 as IHabboWindowManager;
      }
      
      private function onLocalizationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_58 = param2 as IHabboLocalizationManager;
      }
      
      private function onHabboConfigurationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_132 = param2 as IHabboConfigurationManager;
      }
      
      private function onCatalogReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._catalog = param2 as IHabboCatalog;
      }
      
      private function onInventoryReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._inventory = param2 as IHabboInventory;
      }
      
      private function onSoundManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._soundManager = param2 as IHabboSoundManager;
      }
      
      private function onNavigatorReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._navigator = param2 as IHabboNavigator;
      }
      
      private function onQuestEngineReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._questEngine = param2 as IHabboQuestEngine;
      }
      
      private function onRoomEngineReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._roomEngine = param2 as IRoomEngine;
      }
      
      public function createWidget(param1:String) : IRoomWidget
      {
         var _loc2_:* = null;
         if(this._windowManager == null)
         {
            return null;
         }
         switch(param1)
         {
            case RoomWidgetEnum.const_384:
               _loc2_ = new RoomChatWidget(this._windowManager,assets,this.var_58,this.var_132,this.var_2547++,this,this._questEngine);
               break;
            case RoomWidgetEnum.CHAT_INPUT_WIDGET:
               if(this.var_132.getKey("new.chat.widget.enabled") == "1")
               {
                  _loc2_ = new RoomChatInputWidget(this._windowManager,assets,this.var_58,this.var_132,this);
               }
               else
               {
                  _loc2_ = new RoomChatInputWidgetOld(this._windowManager,assets,this.var_58,this.var_132,this);
               }
               break;
            case RoomWidgetEnum.const_540:
               _loc2_ = new InfostandWidget(this._windowManager,assets,this.var_58,this.var_132,this._catalog);
               break;
            case RoomWidgetEnum.const_566:
               _loc2_ = new MeMenuWidget(this._windowManager,assets,this.var_58,events,this.var_132);
               break;
            case RoomWidgetEnum.const_747:
               _loc2_ = new PlaceholderWidget(this._windowManager,assets,this.var_58);
               break;
            case RoomWidgetEnum.const_554:
               _loc2_ = new CreditFurniWidget(this._windowManager,assets,this.var_58);
               break;
            case RoomWidgetEnum.const_522:
               _loc2_ = new StickieFurniWidget(this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_545:
               _loc2_ = new PresentFurniWidget(this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_537:
               _loc2_ = new TrophyFurniWidget(this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_619:
               _loc2_ = new TeaserFurniWidget(this._windowManager,assets,this.var_58,this.var_132,this._inventory);
               break;
            case RoomWidgetEnum.const_575:
               _loc2_ = new EcotronBoxFurniWidget(this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_637:
               _loc2_ = new PetPackageFurniWidget(this._windowManager,assets,this.var_58);
               break;
            case RoomWidgetEnum.const_136:
               _loc2_ = new DoorbellWidget(this._windowManager,assets,this.var_58);
               break;
            case RoomWidgetEnum.const_521:
               _loc2_ = new LoadingBarWidget(this._windowManager,assets,this.var_58,this.var_132);
               break;
            case RoomWidgetEnum.const_878:
               _loc2_ = new RoomQueueWidget(this._windowManager,assets,this.var_58,this.var_132);
               break;
            case RoomWidgetEnum.const_128:
               _loc2_ = new VoteWidget(this._windowManager,assets,this.var_58,this.var_132);
               break;
            case RoomWidgetEnum.const_391:
               _loc2_ = new PollWidget(this._windowManager,assets,this.var_58);
               break;
            case RoomWidgetEnum.const_336:
               _loc2_ = new UserChooserWidget(this._windowManager,assets,this.var_58);
               break;
            case RoomWidgetEnum.const_524:
               _loc2_ = new FurniChooserWidget(this._windowManager,assets,this.var_58);
               break;
            case RoomWidgetEnum.const_583:
               _loc2_ = new DimmerFurniWidget(this._windowManager,assets,this.var_58);
               break;
            case RoomWidgetEnum.const_159:
               _loc2_ = new FriendRequestWidget(this._windowManager,assets,this.var_58,this);
               break;
            case RoomWidgetEnum.const_565:
               _loc2_ = new ClothingChangeFurnitureWidget(this._windowManager,assets,this.var_58);
               break;
            case RoomWidgetEnum.const_921:
               _loc2_ = new RoomWidgetBase(this._windowManager);
               break;
            case RoomWidgetEnum.const_124:
               _loc2_ = new UserNotificationWidget(this._windowManager,assets,this.var_58);
               break;
            case RoomWidgetEnum.const_411:
               _loc2_ = new PurseWidget(this._windowManager,assets,this.var_58);
               break;
            case RoomWidgetEnum.const_126:
               _loc2_ = new AvatarInfoWidget(this._windowManager,assets,this.var_132,this.var_58,this);
               break;
            case RoomWidgetEnum.const_505:
               _loc2_ = new WelcomeGiftWidget(this._windowManager,assets,this.var_58);
               break;
            case RoomWidgetEnum.const_550:
               _loc2_ = new PlayListEditorWidget(this._windowManager,this._soundManager,assets,this.var_58,this.var_132,this._catalog);
               break;
            case RoomWidgetEnum.const_513:
               _loc2_ = new SpamWallPostItFurniWidget(this._windowManager,this._inventory,this._roomEngine,assets);
         }
         return _loc2_;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get localizations() : IHabboLocalizationManager
      {
         return this.var_58;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this.var_132;
      }
      
      public function get navigator() : IHabboNavigator
      {
         return this._navigator;
      }
   }
}
