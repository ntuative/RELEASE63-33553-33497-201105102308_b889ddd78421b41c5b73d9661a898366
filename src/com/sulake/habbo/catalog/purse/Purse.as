package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_228:int = 0;
       
      
      private var var_1913:int = 0;
      
      private var var_1596:Dictionary;
      
      private var var_2078:int = 0;
      
      private var var_2079:int = 0;
      
      private var var_2622:Boolean = false;
      
      private var var_2869:int = 0;
      
      private var var_2864:int = 0;
      
      public function Purse()
      {
         this.var_1596 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1913;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1913 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2078;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2078 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2079;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2079 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_2078 > 0 || this.var_2079 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2622;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2622 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2869;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2869 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2864;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2864 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1596;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1596 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1596[param1];
      }
   }
}
