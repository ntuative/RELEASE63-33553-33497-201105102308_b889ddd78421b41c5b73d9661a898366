package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1753:int;
      
      private var var_1816:Number;
      
      private var var_2535:Number;
      
      private var var_2536:int;
      
      private var var_2533:Number;
      
      private var var_2534:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1753 = param1;
         this.var_1816 = param2;
         this.var_2535 = param3;
         this.var_2533 = param4;
         this.var_2534 = param5;
         this.var_2536 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1753;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1816 < 0)
         {
            return 0;
         }
         return this.var_1816 + (getTimer() - this.var_2536) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2535;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2533;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2534;
      }
   }
}
