package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_924:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1124:String = "inventory_effects";
      
      public static const const_1260:String = "inventory_badges";
      
      public static const const_1861:String = "inventory_clothes";
      
      public static const const_1752:String = "inventory_furniture";
       
      
      private var var_2289:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_924);
         this.var_2289 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2289;
      }
   }
}
