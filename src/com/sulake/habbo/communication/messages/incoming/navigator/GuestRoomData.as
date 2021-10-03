package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_387:int;
      
      private var var_783:Boolean;
      
      private var var_877:String;
      
      private var _ownerName:String;
      
      private var var_2188:int;
      
      private var var_2234:int;
      
      private var var_2804:int;
      
      private var var_1650:String;
      
      private var var_2802:int;
      
      private var var_2186:Boolean;
      
      private var var_791:int;
      
      private var var_1599:int;
      
      private var var_2801:String;
      
      private var var_866:Array;
      
      private var var_2803:RoomThumbnailData;
      
      private var var_2348:Boolean;
      
      private var var_2800:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_866 = new Array();
         super();
         this.var_387 = param1.readInteger();
         this.var_783 = param1.readBoolean();
         this.var_877 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2188 = param1.readInteger();
         this.var_2234 = param1.readInteger();
         this.var_2804 = param1.readInteger();
         this.var_1650 = param1.readString();
         this.var_2802 = param1.readInteger();
         this.var_2186 = param1.readBoolean();
         this.var_791 = param1.readInteger();
         this.var_1599 = param1.readInteger();
         this.var_2801 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_866.push(_loc4_);
            _loc3_++;
         }
         this.var_2803 = new RoomThumbnailData(param1);
         this.var_2348 = param1.readBoolean();
         this.var_2800 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_866 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_387;
      }
      
      public function get event() : Boolean
      {
         return this.var_783;
      }
      
      public function get roomName() : String
      {
         return this.var_877;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2188;
      }
      
      public function get userCount() : int
      {
         return this.var_2234;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2804;
      }
      
      public function get description() : String
      {
         return this.var_1650;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2802;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2186;
      }
      
      public function get score() : int
      {
         return this.var_791;
      }
      
      public function get categoryId() : int
      {
         return this.var_1599;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2801;
      }
      
      public function get tags() : Array
      {
         return this.var_866;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2803;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2348;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2800;
      }
   }
}
