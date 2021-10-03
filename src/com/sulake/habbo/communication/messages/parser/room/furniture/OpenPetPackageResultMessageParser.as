package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_194:int = 0;
      
      private var var_1799:int = 0;
      
      private var var_1800:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_194;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1799;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1800;
      }
      
      public function flush() : Boolean
      {
         this.var_194 = 0;
         this.var_1799 = 0;
         this.var_1800 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_194 = param1.readInteger();
         this.var_1799 = param1.readInteger();
         this.var_1800 = param1.readString();
         return true;
      }
   }
}
