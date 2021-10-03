package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_67:String = "i";
      
      public static const const_77:String = "s";
      
      public static const const_223:String = "e";
       
      
      private var var_1448:String;
      
      private var var_2177:int;
      
      private var var_1165:String;
      
      private var var_1449:int;
      
      private var var_1772:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1448 = param1.readString();
         this.var_2177 = param1.readInteger();
         this.var_1165 = param1.readString();
         this.var_1449 = param1.readInteger();
         this.var_1772 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1448;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2177;
      }
      
      public function get extraParam() : String
      {
         return this.var_1165;
      }
      
      public function get productCount() : int
      {
         return this.var_1449;
      }
      
      public function get expiration() : int
      {
         return this.var_1772;
      }
   }
}
