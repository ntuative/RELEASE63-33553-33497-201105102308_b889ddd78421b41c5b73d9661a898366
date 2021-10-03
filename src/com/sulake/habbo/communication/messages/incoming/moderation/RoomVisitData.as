package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_2018:Boolean;
      
      private var _roomId:int;
      
      private var var_877:String;
      
      private var var_2386:int;
      
      private var var_2387:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2018 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_877 = param1.readString();
         this.var_2386 = param1.readInteger();
         this.var_2387 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_2018;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_877;
      }
      
      public function get enterHour() : int
      {
         return this.var_2386;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2387;
      }
   }
}
