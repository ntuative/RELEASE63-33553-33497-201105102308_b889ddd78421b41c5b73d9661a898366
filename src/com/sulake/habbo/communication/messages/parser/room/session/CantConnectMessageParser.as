package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1638:int = 1;
      
      public static const const_2012:int = 2;
      
      public static const const_1764:int = 3;
      
      public static const const_1633:int = 4;
       
      
      private var var_1465:int = 0;
      
      private var var_1466:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1465 = 0;
         this.var_1466 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1465 = param1.readInteger();
         if(this.var_1465 == 3)
         {
            this.var_1466 = param1.readString();
         }
         else
         {
            this.var_1466 = "";
         }
         return true;
      }
      
      public function get reason() : int
      {
         return this.var_1465;
      }
      
      public function get parameter() : String
      {
         return this.var_1466;
      }
   }
}
