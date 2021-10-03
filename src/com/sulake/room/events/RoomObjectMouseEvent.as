package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_145:String = "ROE_MOUSE_CLICK";
      
      public static const const_184:String = "ROE_MOUSE_ENTER";
      
      public static const const_627:String = "ROE_MOUSE_MOVE";
      
      public static const const_193:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2051:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_561:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2052:String = "";
      
      private var var_2375:Boolean;
      
      private var var_2380:Boolean;
      
      private var var_2382:Boolean;
      
      private var var_2378:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_2052 = param2;
         this.var_2375 = param5;
         this.var_2380 = param6;
         this.var_2382 = param7;
         this.var_2378 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_2052;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2375;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2380;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2382;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2378;
      }
   }
}
