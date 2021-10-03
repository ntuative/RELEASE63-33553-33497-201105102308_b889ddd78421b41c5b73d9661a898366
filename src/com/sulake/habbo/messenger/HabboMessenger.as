package com.sulake.habbo.messenger
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.friendlist.InstantMessageErrorEvent;
   import com.sulake.habbo.communication.messages.incoming.friendlist.MessengerInitEvent;
   import com.sulake.habbo.communication.messages.incoming.friendlist.NewConsoleMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.friendlist.RoomInviteEvent;
   import com.sulake.habbo.communication.messages.parser.friendlist.InstantMessageErrorMessageParser;
   import com.sulake.habbo.communication.messages.parser.friendlist.NewConsoleMessageMessageParser;
   import com.sulake.habbo.communication.messages.parser.friendlist.RoomInviteMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.friendlist.IFriend;
   import com.sulake.habbo.friendlist.IHabboFriendList;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.messenger.domain.Conversation;
   import com.sulake.habbo.messenger.domain.Conversations;
   import com.sulake.habbo.messenger.domain.ConversationsDeps;
   import com.sulake.habbo.messenger.domain.Message;
   import com.sulake.habbo.sound.HabboSoundTypesEnum;
   import com.sulake.habbo.sound.IHabboSoundManager;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDAvatarRenderManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboFriendList;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboSoundManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboMessenger extends Component implements IHabboMessenger, IAvatarImageListener
   {
      
      public static const const_186:String = "face";
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_181:IHabboConfigurationManager;
      
      private var _localization:IHabboLocalizationManager;
      
      private var _friendList:IHabboFriendList;
      
      private var var_1181:IAvatarRenderManager;
      
      private var var_621:Conversations;
      
      private var var_161:MessengerView;
      
      private var _toolbar:IHabboToolbar;
      
      private var _soundManager:IHabboSoundManager;
      
      public function HabboMessenger(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         super(param1,param2,param3);
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDHabboSoundManager(),this.onSoundManagerReady);
      }
      
      override public function dispose() : void
      {
         if(this._soundManager)
         {
            this._soundManager.release(new IIDHabboSoundManager());
            this._soundManager = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this._communication)
         {
            this._communication.release(new IIDHabboCommunicationManager());
            this._communication = null;
         }
         if(this.var_181)
         {
            this.var_181.release(new IIDHabboConfigurationManager());
            this.var_181 = null;
         }
         if(this._localization)
         {
            this._localization.release(new IIDHabboLocalizationManager());
            this._localization = null;
         }
         if(this._friendList)
         {
            this._friendList.release(new IIDHabboFriendList());
            this._friendList = null;
         }
         if(this.var_1181)
         {
            this.var_1181.release(new IIDAvatarRenderManager());
            this.var_1181 = null;
         }
         if(this._toolbar)
         {
            this._toolbar.release(new IIDHabboToolbar());
            this._toolbar = null;
         }
         if(this.var_161)
         {
            this.var_161.dispose();
            this.var_161 = null;
         }
         super.dispose();
      }
      
      public function startConversation(param1:int) : void
      {
         var _loc2_:Conversation = this.var_621.addConversation(param1);
         if(_loc2_ == null)
         {
            Logger.log("No friend " + param1 + " found. Shouldn\'t happen");
         }
         else
         {
            this.setHabboToolbarIcon(true,false);
            this.var_621.setSelected(_loc2_);
            this.var_161.openMessenger();
            this.var_161.refresh();
         }
      }
      
      public function setFollowingAllowed(param1:int, param2:Boolean) : void
      {
         this.var_621.setFollowingAllowedAndUpdateView(param1,param2);
      }
      
      public function setOnlineStatus(param1:int, param2:Boolean) : void
      {
         this.var_621.setOnlineStatusAndUpdateView(param1,param2);
      }
      
      public function createConversation(param1:int) : Conversation
      {
         var _loc2_:IFriend = this._friendList.getFriend(param1);
         if(_loc2_ == null)
         {
            Logger.log("No friend found with: " + param1);
            return null;
         }
         Logger.log("A FRIEND FOUND: " + _loc2_.id + ", " + _loc2_.name + ", " + _loc2_.gender + ", " + _loc2_.figure);
         return new Conversation(_loc2_.id,_loc2_.name,_loc2_.figure,_loc2_.followingAllowed);
      }
      
      public function getAvatarFaceBitmap(param1:String) : BitmapData
      {
         var _loc3_:* = null;
         var _loc2_:IAvatarImage = this.var_1181.createAvatarImage(param1,AvatarScaleType.const_98,null,this);
         if(_loc2_)
         {
            _loc3_ = _loc2_.getImage(AvatarSetType.const_51,true);
            _loc2_.dispose();
            return _loc3_;
         }
         return null;
      }
      
      public function send(param1:IMessageComposer) : void
      {
         this._communication.getHabboMainConnection(null).send(param1);
      }
      
      public function playSendSound() : void
      {
         if(this._soundManager != null)
         {
            this._soundManager.playSound(HabboSoundTypesEnum.const_1223);
         }
      }
      
      public function isOpen() : Boolean
      {
         return this.var_161.isMessengerOpen();
      }
      
      public function toggleMessenger() : void
      {
         if(this.var_161.isMessengerOpen())
         {
            this.var_161.close();
         }
         else
         {
            this.var_161.openMessenger();
         }
      }
      
      public function openHabboWebPage(param1:String, param2:Dictionary, param3:WindowEvent) : void
      {
         var linkAlias:String = param1;
         var params:Dictionary = param2;
         var event:WindowEvent = param3;
         params["predefined"] = this.getPageParam("url.prefix");
         var url:String = this.getVariable(linkAlias,params);
         var webWindowName:String = "habboMain";
         try
         {
            HabboWebTools.navigateToURL(url,webWindowName);
         }
         catch(e:Error)
         {
            Logger.log("GOT ERROR: " + e);
         }
         var wme:WindowMouseEvent = event as WindowMouseEvent;
      }
      
      public function getText(param1:String) : String
      {
         return this._localization.getKey(param1,param1);
      }
      
      private function getPageParam(param1:String) : String
      {
         var _loc2_:* = null;
         if(param1 == "url.prefix")
         {
            _loc2_ = "d31.web.varoke.net";
            _loc2_ = this.var_181.getKey("url.prefix",_loc2_);
            _loc2_ = _loc2_.replace("http://","");
            return _loc2_.replace("https://","");
         }
         return null;
      }
      
      private function getVariable(param1:String, param2:Dictionary) : String
      {
         return this.var_181.getKey(param1,param1,param2);
      }
      
      private function onSoundManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._soundManager = param2 as IHabboSoundManager;
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         Logger.log("Messenger: window manager available " + [param1,param2]);
         this._windowManager = param2 as IHabboWindowManager;
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationReady);
      }
      
      private function onCommunicationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         Logger.log("Messenger: communication available " + [param1,param2]);
         this._communication = param2 as IHabboCommunicationManager;
         queueInterface(new IIDAvatarRenderManager(),this.onAvatarRenderedReady);
      }
      
      private function onAvatarRenderedReady(param1:IID = null, param2:IUnknown = null) : void
      {
         Logger.log("Messenger: avatar renderer " + [param1,param2]);
         this.var_1181 = param2 as IAvatarRenderManager;
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationReady);
      }
      
      private function onConfigurationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         Logger.log("Friend list: configuration " + [param1,param2]);
         this.var_181 = param2 as IHabboConfigurationManager;
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationReady);
      }
      
      private function onLocalizationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         Logger.log("Friend list: localization " + [param1,param2]);
         this._localization = param2 as IHabboLocalizationManager;
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._toolbar = IHabboToolbar(param2) as IHabboToolbar;
         queueInterface(new IIDHabboFriendList(),this.onFriendListReady);
      }
      
      private function onFriendListReady(param1:IID = null, param2:IUnknown = null) : void
      {
         Logger.log("Messenger: friend list available " + [param1,param2]);
         this._friendList = param2 as IHabboFriendList;
         this._communication.addHabboConnectionMessageEvent(new MessengerInitEvent(this.onMessengerInit));
      }
      
      private function onMessengerInit(param1:IMessageEvent) : void
      {
         this.var_621 = new Conversations(new ConversationsDeps(this));
         this.var_161 = new MessengerView(this);
         this._communication.addHabboConnectionMessageEvent(new NewConsoleMessageEvent(this.onNewConsoleMessage));
         this._communication.addHabboConnectionMessageEvent(new RoomInviteEvent(this.onRoomInvite));
         this._communication.addHabboConnectionMessageEvent(new InstantMessageErrorEvent(this.onInstantMessageError));
         this._toolbar.events.addEventListener(HabboToolbarEvent.const_37,this.onHabboToolbarEvent);
      }
      
      public function setHabboToolbarIcon(param1:Boolean, param2:Boolean) : void
      {
         if(!param1)
         {
            this._toolbar.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_211,HabboToolbarIconEnum.MESSENGER));
            return;
         }
         this._toolbar.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_141,HabboToolbarIconEnum.MESSENGER));
         var _loc3_:HabboToolbarSetIconEvent = new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_119,HabboToolbarIconEnum.MESSENGER);
         _loc3_.iconState = !!param2 ? "1" : "0";
         this._toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.iconId != HabboToolbarIconEnum.MESSENGER)
         {
            return;
         }
         if(param1.type == HabboToolbarEvent.const_37)
         {
            if(this.var_161.isMessengerOpen())
            {
               this.var_161.close();
            }
            else
            {
               this.var_161.openMessenger();
            }
            this.setHabboToolbarIcon(true,false);
         }
      }
      
      private function onNewConsoleMessage(param1:IMessageEvent) : void
      {
         var _loc2_:NewConsoleMessageMessageParser = (param1 as NewConsoleMessageEvent).getParser();
         Logger.log("Received console msg: " + _loc2_.messageText + ", " + _loc2_.senderId);
         var _loc3_:Message = new Message(Message.const_904,_loc2_.senderId,_loc2_.messageText,Util.getFormattedNow());
         this.addMsg(_loc3_);
      }
      
      private function onRoomInvite(param1:IMessageEvent) : void
      {
         var _loc2_:RoomInviteMessageParser = (param1 as RoomInviteEvent).getParser();
         var _loc3_:Message = new Message(Message.const_1207,_loc2_.senderId,this.getText("messenger.invitation") + " " + _loc2_.messageText,Util.getFormattedNow());
         this.addMsg(_loc3_);
      }
      
      private function addMsg(param1:Message) : void
      {
         this.var_621.addMessageAndUpdateView(param1);
         if(!this.var_161.isMessengerOpen())
         {
            if(this._soundManager != null)
            {
               this._soundManager.playSound(HabboSoundTypesEnum.const_1334);
            }
            this.setHabboToolbarIcon(true,true);
         }
      }
      
      private function onInstantMessageError(param1:IMessageEvent) : void
      {
         var _loc2_:InstantMessageErrorMessageParser = (param1 as InstantMessageErrorEvent).getParser();
         var _loc3_:Message = new Message(Message.const_1224,_loc2_.userId,this.getInstantMessageErrorText(_loc2_.errorCode),Util.getFormattedNow());
         this.var_621.addMessageAndUpdateView(_loc3_);
      }
      
      private function getInstantMessageErrorText(param1:int) : String
      {
         if(param1 == 3)
         {
            return this.getText("messenger.error.receivermuted");
         }
         if(param1 == 4)
         {
            return this.getText("messenger.error.sendermuted");
         }
         if(param1 == 5)
         {
            return this.getText("messenger.error.offline");
         }
         if(param1 == 6)
         {
            return this.getText("messenger.error.notfriend");
         }
         if(param1 == 7)
         {
            return this.getText("messenger.error.busy");
         }
         return "Unknown im error " + param1;
      }
      
      public function refreshButton(param1:IWindowContainer, param2:String, param3:Boolean, param4:Function, param5:int) : void
      {
         var _loc6_:IBitmapWrapperWindow = param1.findChildByName(param2) as IBitmapWrapperWindow;
         this.refreshButtonDir(_loc6_,param2,param3,param4,param5);
      }
      
      public function refreshButtonDir(param1:IBitmapWrapperWindow, param2:String, param3:Boolean, param4:Function, param5:int) : void
      {
         if(!param3)
         {
            param1.visible = false;
         }
         else
         {
            this.prepareButton(param1,param2,param4,param5);
            param1.visible = true;
         }
      }
      
      private function prepareButton(param1:IBitmapWrapperWindow, param2:String, param3:Function, param4:int) : void
      {
         param1.id = param4;
         if(param1.bitmap != null)
         {
            return;
         }
         param1.bitmap = this.getButtonImage(param2);
         param1.width = param1.bitmap.width;
         param1.height = param1.bitmap.height;
         param1.procedure = param3;
      }
      
      public function getButtonImage(param1:String) : BitmapData
      {
         var _loc5_:* = null;
         var _loc2_:IAsset = assets.getAssetByName(param1 + "_png");
         var _loc3_:BitmapDataAsset = _loc2_ as BitmapDataAsset;
         Logger.log("GETTING ASSET: " + param1);
         var _loc4_:BitmapData = _loc3_.content as BitmapData;
         Logger.log("GOT ASSET: " + _loc2_ + ", " + _loc4_);
         _loc5_ = new BitmapData(_loc4_.width,_loc4_.height,true,0);
         _loc5_.draw(_loc4_);
         return _loc5_;
      }
      
      public function getXmlWindow(param1:String) : IWindow
      {
         var _loc2_:IAsset = assets.getAssetByName(param1 + "_xml");
         var _loc3_:XmlAsset = XmlAsset(_loc2_);
         return this._windowManager.buildFromXML(XML(_loc3_.content));
      }
      
      public function isEmbeddedMinimailEnabled() : Boolean
      {
         var _loc1_:String = this.var_181.getKey("client.minimail.embed.enabled");
         return _loc1_ == "true";
      }
      
      public function avatarImageReady(param1:String) : void
      {
         if(this.var_161)
         {
            this.var_161.refresh();
         }
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get conversations() : Conversations
      {
         return this.var_621;
      }
      
      public function get messengerView() : MessengerView
      {
         return this.var_161;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this._toolbar;
      }
   }
}
