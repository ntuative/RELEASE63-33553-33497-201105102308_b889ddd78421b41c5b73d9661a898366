package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1526:Boolean = false;
      
      private var var_1658:int;
      
      private var var_1708:Array;
      
      private var var_729:Array;
      
      private var var_730:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1526 = _loc2_.isWrappingEnabled;
         this.var_1658 = _loc2_.wrappingPrice;
         this.var_1708 = _loc2_.stuffTypes;
         this.var_729 = _loc2_.boxTypes;
         this.var_730 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1526;
      }
      
      public function get price() : int
      {
         return this.var_1658;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1708;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_729;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_730;
      }
   }
}
