package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2575:Boolean = false;
      
      private var var_2576:int = 0;
      
      private var var_2577:int = 0;
      
      private var var_2379:int = 0;
      
      private var var_2376:int = 0;
      
      private var var_159:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_458:String = "";
      
      private var _type:int = 0;
      
      private var var_2973:String = "";
      
      private var var_1595:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_183:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2575 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_183 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2575;
      }
      
      public function get wallX() : Number
      {
         return this.var_2576;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_183)
         {
            this.var_2576 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2577;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_183)
         {
            this.var_2577 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2379;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_183)
         {
            this.var_2379 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2376;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_183)
         {
            this.var_2376 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_159;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_183)
         {
            this.var_159 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_158;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_183)
         {
            this.var_158 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_458;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_183)
         {
            this.var_458 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_183)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_183)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_183)
         {
            this._data = param1;
         }
      }
   }
}
