package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1108:Boolean;
      
      private var var_1107:Boolean;
      
      private var var_1367:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1108;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1107;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1367;
      }
      
      public function flush() : Boolean
      {
         this.var_1108 = false;
         this.var_1107 = false;
         this.var_1367 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1108 = param1.readBoolean();
         this.var_1107 = param1.readBoolean();
         this.var_1367 = param1.readBoolean();
         return true;
      }
   }
}
