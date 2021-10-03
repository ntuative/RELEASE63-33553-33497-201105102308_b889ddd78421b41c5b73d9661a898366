package com.sulake.habbo.toolbar.events
{
   import flash.events.Event;
   
   public class HabboToolbarEvent extends Event
   {
      
      public static const const_68:String = "HTE_INITIALIZED";
      
      public static const const_37:String = "HTE_TOOLBAR_CLICK";
      
      public static const const_1713:String = "HTE_TOOLBAR_ORIENTATION";
      
      public static const const_1252:String = "HTE_TOOLBAR_RESIZED";
      
      public static const const_303:String = "HTE_TOOLBAR_STATE_HOTEL_VIEW";
      
      public static const const_326:String = "HTE_TOOLBAR_STATE_ROOM_VIEW";
       
      
      private var var_1904:String;
      
      private var var_2549:String;
      
      private var var_2548:String;
      
      public function HabboToolbarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set iconId(param1:String) : void
      {
         this.var_1904 = param1;
      }
      
      public function get iconId() : String
      {
         return this.var_1904;
      }
      
      public function set orientation(param1:String) : void
      {
         this.var_2549 = param1;
      }
      
      public function get orientation() : String
      {
         return this.var_2549;
      }
      
      public function set iconName(param1:String) : void
      {
         this.var_2548 = param1;
      }
      
      public function get iconName() : String
      {
         return this.var_2548;
      }
   }
}
