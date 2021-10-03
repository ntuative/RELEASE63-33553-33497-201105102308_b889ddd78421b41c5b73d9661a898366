package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1636:int;
      
      private var var_2400:String;
      
      private var var_305:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1636 = param1.readInteger();
         this.var_2400 = param1.readString();
         this.var_305 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1636;
      }
      
      public function get nodeName() : String
      {
         return this.var_2400;
      }
      
      public function get visible() : Boolean
      {
         return this.var_305;
      }
   }
}
