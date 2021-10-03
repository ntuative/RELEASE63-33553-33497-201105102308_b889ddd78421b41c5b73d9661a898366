package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_159:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_458:int = 0;
      
      private var var_562:int = 0;
      
      private var var_692:int = 0;
      
      private var var_183:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_183 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_183)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_183)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_183)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_458;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_183)
         {
            this.var_458 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_562;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_183)
         {
            this.var_562 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_692;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_183)
         {
            this.var_692 = param1;
         }
      }
   }
}
