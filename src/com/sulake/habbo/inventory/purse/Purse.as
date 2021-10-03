package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2078:int = 0;
      
      private var var_2079:int = 0;
      
      private var var_2624:int = 0;
      
      private var var_2623:Boolean = false;
      
      private var var_2622:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2078 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2079 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2624 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2623 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2622 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2078;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2079;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2624;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2623;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2622;
      }
   }
}
