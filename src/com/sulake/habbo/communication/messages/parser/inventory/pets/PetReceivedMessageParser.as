package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1781:Boolean;
      
      private var var_946:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1781 = param1.readBoolean();
         this.var_946 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1781 + ", " + this.var_946.id + ", " + this.var_946.name + ", " + this.var_946.type + ", " + this.var_946.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1781;
      }
      
      public function get pet() : PetData
      {
         return this.var_946;
      }
   }
}
