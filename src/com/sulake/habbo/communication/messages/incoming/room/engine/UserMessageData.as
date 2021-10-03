package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1105:String = "M";
      
      public static const const_1678:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_159:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_458:int = 0;
      
      private var _name:String = "";
      
      private var var_1609:int = 0;
      
      private var var_886:String = "";
      
      private var var_645:String = "";
      
      private var var_2166:String = "";
      
      private var var_2164:int;
      
      private var var_2167:int = 0;
      
      private var var_2169:String = "";
      
      private var var_2165:int = 0;
      
      private var var_2168:int = 0;
      
      private var var_2611:String = "";
      
      private var var_183:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_183 = true;
      }
      
      public function get id() : int
      {
         return this._id;
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
      
      public function get userType() : int
      {
         return this.var_1609;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_183)
         {
            this.var_1609 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_886;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_183)
         {
            this.var_886 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_645;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_183)
         {
            this.var_645 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2166;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_183)
         {
            this.var_2166 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2164;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_183)
         {
            this.var_2164 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2167;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_183)
         {
            this.var_2167 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2169;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_183)
         {
            this.var_2169 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2165;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_183)
         {
            this.var_2165 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2168;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_183)
         {
            this.var_2168 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2611;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_183)
         {
            this.var_2611 = param1;
         }
      }
   }
}
