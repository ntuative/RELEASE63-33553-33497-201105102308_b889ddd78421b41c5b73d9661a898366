package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2237:int;
      
      private var var_2126:String;
      
      private var var_1658:int;
      
      private var var_2238:int;
      
      private var var_2240:int;
      
      private var var_404:int;
      
      private var var_2239:int = -1;
      
      private var var_1659:int;
      
      private var var_46:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2237 = param3;
         this.var_2126 = param4;
         this.var_1658 = param5;
         this.var_404 = param6;
         this.var_2238 = param7;
         this.var_1659 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_46)
         {
            this.var_46.dispose();
            this.var_46 = null;
         }
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
      
      public function get averagePrice() : int
      {
         return this.var_2238;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_46 != null)
         {
            this.var_46.dispose();
         }
         this.var_46 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2240 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2240;
      }
      
      public function get status() : int
      {
         return this.var_404;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2239;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2239 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1658 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1659;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1659 = param1;
      }
   }
}
