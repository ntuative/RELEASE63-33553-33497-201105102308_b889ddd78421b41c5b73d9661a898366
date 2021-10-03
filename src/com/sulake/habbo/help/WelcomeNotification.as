package com.sulake.habbo.help
{
   public class WelcomeNotification
   {
       
      
      private var var_2859:String;
      
      private var var_2266:String;
      
      public function WelcomeNotification(param1:String, param2:String)
      {
         super();
         this.var_2859 = param1;
         this.var_2266 = param2;
      }
      
      public function get targetIconId() : String
      {
         return this.var_2859;
      }
      
      public function get localizationKey() : String
      {
         return this.var_2266;
      }
   }
}
