package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2237:int;
      
      private var var_2126:String;
      
      private var var_1658:int;
      
      private var var_404:int;
      
      private var var_2239:int = -1;
      
      private var var_2238:int;
      
      private var var_1659:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2237 = param3;
         this.var_2126 = param4;
         this.var_1658 = param5;
         this.var_404 = param6;
         this.var_2239 = param7;
         this.var_2238 = param8;
         this.var_1659 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2237;
      }
      
      public function get stuffData() : String
      {
         return this.var_2126;
      }
      
      public function get price() : int
      {
         return this.var_1658;
      }
      
      public function get status() : int
      {
         return this.var_404;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2239;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2238;
      }
      
      public function get offerCount() : int
      {
         return this.var_1659;
      }
   }
}
