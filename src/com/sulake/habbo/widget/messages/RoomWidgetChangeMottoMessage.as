package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChangeMottoMessage extends RoomWidgetMessage
   {
      
      public static const const_807:String = "RWVM_CHANGE_MOTTO_MESSAGE";
       
      
      private var var_1776:String;
      
      public function RoomWidgetChangeMottoMessage(param1:String)
      {
         super(const_807);
         this.var_1776 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1776;
      }
   }
}
