package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChangeEmailMessage extends RoomWidgetMessage
   {
      
      public static const const_797:String = "rwcem_change_email";
       
      
      private var var_2502:String;
      
      public function RoomWidgetChangeEmailMessage(param1:String)
      {
         super(const_797);
         this.var_2502 = param1;
      }
      
      public function get newEmail() : String
      {
         return this.var_2502;
      }
   }
}
