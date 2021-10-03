package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2238:int;
      
      private var var_2497:int;
      
      private var var_2496:int;
      
      private var _dayOffsets:Array;
      
      private var var_2065:Array;
      
      private var var_2064:Array;
      
      private var var_2498:int;
      
      private var var_2495:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2238;
      }
      
      public function get offerCount() : int
      {
         return this.var_2497;
      }
      
      public function get historyLength() : int
      {
         return this.var_2496;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_2065;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_2064;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2498;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2495;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2238 = param1.readInteger();
         this.var_2497 = param1.readInteger();
         this.var_2496 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_2065 = [];
         this.var_2064 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_2065.push(param1.readInteger());
            this.var_2064.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2495 = param1.readInteger();
         this.var_2498 = param1.readInteger();
         return true;
      }
   }
}
