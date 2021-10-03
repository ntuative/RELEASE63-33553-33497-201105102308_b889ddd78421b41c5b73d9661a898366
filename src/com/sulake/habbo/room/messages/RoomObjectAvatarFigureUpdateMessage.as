package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_645:String;
      
      private var var_2592:String;
      
      private var var_998:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_645 = param1;
         this.var_998 = param2;
         this.var_2592 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_645;
      }
      
      public function get race() : String
      {
         return this.var_2592;
      }
      
      public function get gender() : String
      {
         return this.var_998;
      }
   }
}
