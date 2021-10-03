package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1637:int;
      
      private var var_1897:int;
      
      private var var_1898:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1897 = param1.readInteger();
         this.var_1637 = param1.readInteger();
         this.var_1898 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1637 = 0;
         this.var_1897 = 0;
         this.var_1898 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1637;
      }
      
      public function get messageId() : int
      {
         return this.var_1897;
      }
      
      public function get timestamp() : String
      {
         return this.var_1898;
      }
   }
}
