package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_792:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_1170:int = 0;
      
      public static const const_1609:Array = [2,3,4];
       
      
      private var var_78:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_792);
         this.var_78 = param1;
      }
      
      public function get style() : int
      {
         return this.var_78;
      }
   }
}
