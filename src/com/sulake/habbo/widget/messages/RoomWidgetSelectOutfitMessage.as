package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1156:String = "select_outfit";
       
      
      private var var_2807:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1156);
         this.var_2807 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2807;
      }
   }
}
