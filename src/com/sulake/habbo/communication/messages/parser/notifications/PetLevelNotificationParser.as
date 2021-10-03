package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1705:int;
      
      private var var_2311:String;
      
      private var var_1464:int;
      
      private var var_1161:int;
      
      private var var_1767:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1705 = param1.readInteger();
         this.var_2311 = param1.readString();
         this.var_1464 = param1.readInteger();
         this.var_1161 = param1.readInteger();
         this.var_1767 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1705;
      }
      
      public function get petName() : String
      {
         return this.var_2311;
      }
      
      public function get level() : int
      {
         return this.var_1464;
      }
      
      public function get petType() : int
      {
         return this.var_1161;
      }
      
      public function get breed() : int
      {
         return this.var_1767;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
