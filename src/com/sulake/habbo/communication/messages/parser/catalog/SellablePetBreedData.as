package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class SellablePetBreedData
   {
       
      
      private var _type:int;
      
      private var var_1767:int;
      
      private var var_2799:Boolean;
      
      private var var_2798:Boolean;
      
      public function SellablePetBreedData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1767 = param1.readInteger();
         this.var_2799 = param1.readBoolean();
         this.var_2798 = param1.readBoolean();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get breed() : int
      {
         return this.var_1767;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2799;
      }
      
      public function get rare() : Boolean
      {
         return this.var_2798;
      }
   }
}
