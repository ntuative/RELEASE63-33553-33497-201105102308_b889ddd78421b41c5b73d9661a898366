package com.sulake.habbo.catalog.viewer
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer, IDisposable
   {
      
      public static const const_1872:String = "pricing_model_unknown";
      
      public static const const_387:String = "pricing_model_single";
      
      public static const const_421:String = "pricing_model_multi";
      
      public static const const_576:String = "pricing_model_bundle";
      
      public static const const_1782:String = "price_type_none";
      
      public static const const_955:String = "price_type_credits";
      
      public static const const_1148:String = "price_type_activitypoints";
      
      public static const const_1101:String = "price_type_credits_and_activitypoints";
       
      
      private var var_796:String;
      
      private var var_1233:String;
      
      private var _offerId:int;
      
      private var var_1905:String;
      
      private var var_1232:int;
      
      private var var_1234:int;
      
      private var var_1906:int;
      
      private var var_379:ICatalogPage;
      
      private var var_643:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2665:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this._offerId = param1;
         this.var_1905 = param2;
         this.var_1232 = param3;
         this.var_1234 = param4;
         this.var_1906 = param5;
         this.var_379 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_379;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1905;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1232;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1234;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1906;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_643;
      }
      
      public function get pricingModel() : String
      {
         return this.var_796;
      }
      
      public function get priceType() : String
      {
         return this.var_1233;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2665;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2665 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this._offerId = 0;
         this.var_1905 = "";
         this.var_1232 = 0;
         this.var_1234 = 0;
         this.var_1906 = 0;
         this.var_379 = null;
         if(this.var_643 != null)
         {
            this.var_643.dispose();
            this.var_643 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_796)
         {
            case const_387:
               this.var_643 = new SingleProductContainer(this,param1);
               break;
            case const_421:
               this.var_643 = new MultiProductContainer(this,param1);
               break;
            case const_576:
               this.var_643 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_796);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_796 = const_387;
            }
            else
            {
               this.var_796 = const_421;
            }
         }
         else if(param1.length > 1)
         {
            this.var_796 = const_576;
         }
         else
         {
            this.var_796 = const_1872;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1232 > 0 && this.var_1234 > 0)
         {
            this.var_1233 = const_1101;
         }
         else if(this.var_1232 > 0)
         {
            this.var_1233 = const_955;
         }
         else if(this.var_1234 > 0)
         {
            this.var_1233 = const_1148;
         }
         else
         {
            this.var_1233 = const_1782;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_379.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_643.products)
         {
            _loc4_ = this.var_379.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}
