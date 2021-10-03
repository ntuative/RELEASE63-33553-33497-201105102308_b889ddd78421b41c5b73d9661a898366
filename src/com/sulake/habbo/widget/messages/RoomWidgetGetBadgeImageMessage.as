package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_768:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_303:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_768);
         this.var_303 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_303;
      }
   }
}
