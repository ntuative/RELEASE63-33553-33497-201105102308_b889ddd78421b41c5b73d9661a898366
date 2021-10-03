package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_710:int = 1;
      
      public static const const_904:int = 2;
      
      public static const const_881:int = 3;
      
      public static const const_1224:int = 4;
      
      public static const const_951:int = 5;
      
      public static const const_1207:int = 6;
       
      
      private var _type:int;
      
      private var var_1135:int;
      
      private var var_2292:String;
      
      private var var_2626:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1135 = param2;
         this.var_2292 = param3;
         this.var_2626 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2292;
      }
      
      public function get time() : String
      {
         return this.var_2626;
      }
      
      public function get senderId() : int
      {
         return this.var_1135;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
