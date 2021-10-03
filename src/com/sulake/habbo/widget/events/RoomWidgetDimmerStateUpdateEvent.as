package com.sulake.habbo.widget.events
{
   public class RoomWidgetDimmerStateUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_66:String = "RWDSUE_DIMMER_STATE";
       
      
      private var _state:int;
      
      private var var_2555:int;
      
      private var var_1131:int;
      
      private var _color:uint;
      
      private var var_1133:int;
      
      public function RoomWidgetDimmerStateUpdateEvent(param1:int, param2:int, param3:int, param4:uint, param5:uint, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_66,param6,param7);
         this._state = param1;
         this.var_2555 = param2;
         this.var_1131 = param3;
         this._color = param4;
         this.var_1133 = param5;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get presetId() : int
      {
         return this.var_2555;
      }
      
      public function get effectId() : int
      {
         return this.var_1131;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : uint
      {
         return this.var_1133;
      }
   }
}
