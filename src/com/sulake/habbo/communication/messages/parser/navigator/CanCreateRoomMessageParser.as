package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CanCreateRoomMessageParser implements IMessageParser
   {
      
      public static const const_1965:int = 0;
      
      public static const const_2136:int = 1;
       
      
      private var var_1848:int;
      
      private var var_2749:int;
      
      public function CanCreateRoomMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1848 = param1.readInteger();
         this.var_2749 = param1.readInteger();
         return true;
      }
      
      public function get resultCode() : int
      {
         return this.var_1848;
      }
      
      public function get roomLimit() : int
      {
         return this.var_2749;
      }
   }
}
