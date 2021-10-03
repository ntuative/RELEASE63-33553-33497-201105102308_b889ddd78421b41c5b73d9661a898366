package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2773:String;
      
      private var var_2775:Class;
      
      private var var_2774:Class;
      
      private var var_1996:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2773 = param1;
         this.var_2775 = param2;
         this.var_2774 = param3;
         if(rest == null)
         {
            this.var_1996 = new Array();
         }
         else
         {
            this.var_1996 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2773;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2775;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2774;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1996;
      }
   }
}
