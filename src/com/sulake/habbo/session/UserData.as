package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_886:String = "";
      
      private var var_645:String = "";
      
      private var var_2166:String = "";
      
      private var var_2164:int;
      
      private var var_2167:int = 0;
      
      private var var_2169:String = "";
      
      private var var_2165:int = 0;
      
      private var var_2168:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2164;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2164 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_886;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_886 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_645;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_645 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2166;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2166 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2167;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2167 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2169;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2169 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2165;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2165 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2168;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2168 = param1;
      }
   }
}
