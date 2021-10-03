package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_997:int = 20;
      
      private static const const_647:int = 10;
      
      private static const const_1355:int = 31;
      
      private static const const_1354:int = 32;
      
      private static const const_646:int = 30;
       
      
      private var var_289:Array;
      
      private var var_838:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_289 = new Array();
         super();
         super.setAnimation(const_646);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_838)
            {
               this.var_838 = true;
               this.var_289 = new Array();
               this.var_289.push(const_1355);
               this.var_289.push(const_1354);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_647)
         {
            if(this.var_838)
            {
               this.var_838 = false;
               this.var_289 = new Array();
               if(direction == 2)
               {
                  this.var_289.push(const_997 + 5 - param1);
                  this.var_289.push(const_647 + 5 - param1);
               }
               else
               {
                  this.var_289.push(const_997 + param1);
                  this.var_289.push(const_647 + param1);
               }
               this.var_289.push(const_646);
               return;
            }
            super.setAnimation(const_646);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
         {
            if(this.var_289.length > 0)
            {
               super.setAnimation(this.var_289.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
