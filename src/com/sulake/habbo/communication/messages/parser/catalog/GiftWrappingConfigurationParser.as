package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2843:Boolean;
      
      private var var_2842:int;
      
      private var var_1708:Array;
      
      private var var_729:Array;
      
      private var var_730:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2843;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2842;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1708 = [];
         this.var_729 = [];
         this.var_730 = [];
         this.var_2843 = param1.readBoolean();
         this.var_2842 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1708.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_729.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_730.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
