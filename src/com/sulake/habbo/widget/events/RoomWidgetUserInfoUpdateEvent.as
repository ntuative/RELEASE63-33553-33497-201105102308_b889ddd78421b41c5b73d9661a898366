package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_140:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_117:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_771:int = 2;
      
      public static const const_760:int = 3;
      
      public static const const_1600:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1776:String = "";
      
      private var var_2164:int;
      
      private var var_2167:int = 0;
      
      private var var_2168:int = 0;
      
      private var var_645:String = "";
      
      private var var_46:BitmapData = null;
      
      private var var_266:Array;
      
      private var var_1419:int = 0;
      
      private var var_2369:String = "";
      
      private var var_2370:int = 0;
      
      private var var_2368:int = 0;
      
      private var var_1780:Boolean = false;
      
      private var var_1678:String = "";
      
      private var var_2629:Boolean = false;
      
      private var var_2628:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2633:Boolean = false;
      
      private var var_2631:Boolean = false;
      
      private var var_2634:Boolean = false;
      
      private var var_2630:Boolean = false;
      
      private var var_2635:Boolean = false;
      
      private var var_2627:Boolean = false;
      
      private var var_2632:int = 0;
      
      private var var_1778:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_266 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1776 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1776;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2164 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2164;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2167 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2167;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2168 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2168;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_645 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_645;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_46 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_266 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_266;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1419 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1419;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2369 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2369;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2629 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2629;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2633 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2633;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2631 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2631;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2634 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2634;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2630 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2630;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2635 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2635;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2627 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2627;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2632 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2632;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2628 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2628;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1778 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1778;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2370 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2370;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2368 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2368;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1780 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1780;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1678 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1678;
      }
   }
}
