package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2709:int;
      
      private var var_2711:int;
      
      private var var_2708:int;
      
      private var var_2710:String;
      
      private var var_1635:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2709 = param1.readInteger();
         this.var_2711 = param1.readInteger();
         this.var_2708 = param1.readInteger();
         this.var_2710 = param1.readString();
         this.var_1635 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2709;
      }
      
      public function get minute() : int
      {
         return this.var_2711;
      }
      
      public function get chatterId() : int
      {
         return this.var_2708;
      }
      
      public function get chatterName() : String
      {
         return this.var_2710;
      }
      
      public function get msg() : String
      {
         return this.var_1635;
      }
   }
}
