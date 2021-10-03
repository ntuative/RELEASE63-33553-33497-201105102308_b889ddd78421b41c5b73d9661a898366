package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1354:int = 3;
      
      private static const const_1449:int = 2;
      
      private static const const_1451:int = 1;
      
      private static const const_1450:int = 15;
       
      
      private var var_289:Array;
      
      private var var_1186:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_289 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1449)
         {
            this.var_289 = new Array();
            this.var_289.push(const_1451);
            this.var_1186 = const_1450;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1186 > 0)
         {
            --this.var_1186;
         }
         if(this.var_1186 == 0)
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
