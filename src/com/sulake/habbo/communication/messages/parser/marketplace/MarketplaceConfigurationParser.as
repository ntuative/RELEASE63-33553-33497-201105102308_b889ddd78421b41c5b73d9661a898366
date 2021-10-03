package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1526:Boolean;
      
      private var var_2602:int;
      
      private var var_1860:int;
      
      private var var_1859:int;
      
      private var var_2604:int;
      
      private var var_2601:int;
      
      private var var_2607:int;
      
      private var var_2603:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1526;
      }
      
      public function get commission() : int
      {
         return this.var_2602;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1860;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1859;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2601;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2604;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2607;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2603;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1526 = param1.readBoolean();
         this.var_2602 = param1.readInteger();
         this.var_1860 = param1.readInteger();
         this.var_1859 = param1.readInteger();
         this.var_2601 = param1.readInteger();
         this.var_2604 = param1.readInteger();
         this.var_2607 = param1.readInteger();
         this.var_2603 = param1.readInteger();
         return true;
      }
   }
}
