package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_2052:String = "";
      
      private var var_1638:String = "";
      
      private var var_2377:String = "";
      
      private var var_2383:Number = 0;
      
      private var var_2381:Number = 0;
      
      private var var_2379:Number = 0;
      
      private var var_2376:Number = 0;
      
      private var var_2380:Boolean = false;
      
      private var var_2375:Boolean = false;
      
      private var var_2382:Boolean = false;
      
      private var var_2378:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_2052 = param2;
         this.var_1638 = param3;
         this.var_2377 = param4;
         this.var_2383 = param5;
         this.var_2381 = param6;
         this.var_2379 = param7;
         this.var_2376 = param8;
         this.var_2380 = param9;
         this.var_2375 = param10;
         this.var_2382 = param11;
         this.var_2378 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_2052;
      }
      
      public function get canvasId() : String
      {
         return this.var_1638;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2377;
      }
      
      public function get screenX() : Number
      {
         return this.var_2383;
      }
      
      public function get screenY() : Number
      {
         return this.var_2381;
      }
      
      public function get localX() : Number
      {
         return this.var_2379;
      }
      
      public function get localY() : Number
      {
         return this.var_2376;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2380;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2375;
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
