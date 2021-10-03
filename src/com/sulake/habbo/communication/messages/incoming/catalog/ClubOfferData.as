package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1821:String;
      
      private var var_1658:int;
      
      private var var_2557:Boolean;
      
      private var var_2556:Boolean;
      
      private var var_2562:int;
      
      private var var_2559:int;
      
      private var var_2563:int;
      
      private var var_2558:int;
      
      private var var_2560:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1821 = param1.readString();
         this.var_1658 = param1.readInteger();
         this.var_2557 = param1.readBoolean();
         this.var_2556 = param1.readBoolean();
         this.var_2562 = param1.readInteger();
         this.var_2559 = param1.readInteger();
         this.var_2563 = param1.readInteger();
         this.var_2558 = param1.readInteger();
         this.var_2560 = param1.readInteger();
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
   }
}
