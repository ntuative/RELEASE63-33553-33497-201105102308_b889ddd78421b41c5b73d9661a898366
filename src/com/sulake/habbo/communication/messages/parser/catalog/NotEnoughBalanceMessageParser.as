package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1989:int = 0;
      
      private var var_1988:int = 0;
      
      private var var_1906:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1989;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1988;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1906;
      }
      
      public function flush() : Boolean
      {
         this.var_1989 = 0;
         this.var_1988 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1989 = param1.readInteger();
         this.var_1988 = param1.readInteger();
         this.var_1906 = param1.readInteger();
         return true;
      }
   }
}
