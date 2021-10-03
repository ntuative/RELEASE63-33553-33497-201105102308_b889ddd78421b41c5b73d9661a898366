package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1821:String;
      
      private var var_1658:int;
      
      private var var_2557:Boolean;
      
      private var var_2556:Boolean;
      
      private var var_2562:int;
      
      private var var_2559:int;
      
      private var var_379:ICatalogPage;
      
      private var var_2563:int;
      
      private var var_2558:int;
      
      private var var_2560:int;
      
      private var var_1401:String;
      
      private var var_2561:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1821 = param2;
         this.var_1658 = param3;
         this.var_2557 = param4;
         this.var_2556 = param5;
         this.var_2562 = param6;
         this.var_2559 = param7;
         this.var_2563 = param8;
         this.var_2558 = param9;
         this.var_2560 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get extraParameter() : String
      {
         return this.var_1401;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1401 = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1821;
      }
      
      public function get price() : int
      {
         return this.var_1658;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2557;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2556;
      }
      
      public function get periods() : int
      {
         return this.var_2562;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2559;
      }
      
      public function get year() : int
      {
         return this.var_2563;
      }
      
      public function get month() : int
      {
         return this.var_2558;
      }
      
      public function get day() : int
      {
         return this.var_2560;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_228;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1658;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_379;
      }
      
      public function get priceType() : String
      {
         return Offer.const_955;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1821;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_379 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2561;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2561 = param1;
      }
   }
}
