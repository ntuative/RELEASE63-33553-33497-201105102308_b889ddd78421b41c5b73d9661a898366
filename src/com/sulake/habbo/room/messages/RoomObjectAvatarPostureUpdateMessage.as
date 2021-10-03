package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2678:String;
      
      private var var_1466:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         this.var_2678 = param1;
         this.var_1466 = param2;
      }
      
      public function get postureType() : String
      {
         return this.var_2678;
      }
      
      public function get parameter() : String
      {
         return this.var_1466;
      }
   }
}
