package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2056:int = 1;
      
      public static const const_1597:int = 2;
       
      
      private var var_881:String;
      
      private var var_2862:int;
      
      private var var_2866:int;
      
      private var var_2865:int;
      
      private var var_2861:int;
      
      private var var_2867:Boolean;
      
      private var var_2622:Boolean;
      
      private var var_2869:int;
      
      private var var_2864:int;
      
      private var var_2860:Boolean;
      
      private var var_2863:int;
      
      private var var_2868:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_881 = param1.readString();
         this.var_2862 = param1.readInteger();
         this.var_2866 = param1.readInteger();
         this.var_2865 = param1.readInteger();
         this.var_2861 = param1.readInteger();
         this.var_2867 = param1.readBoolean();
         this.var_2622 = param1.readBoolean();
         this.var_2869 = param1.readInteger();
         this.var_2864 = param1.readInteger();
         this.var_2860 = param1.readBoolean();
         this.var_2863 = param1.readInteger();
         this.var_2868 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_881;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2862;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2866;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2865;
      }
      
      public function get responseType() : int
      {
         return this.var_2861;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2867;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2622;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2869;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2864;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2860;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2863;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2868;
      }
   }
}
