package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_997:int = 10;
      
      private static const const_647:int = 20;
      
      private static const const_1355:int = 31;
      
      private static const const_1354:int = 32;
       
      
      private var var_289:Array;
      
      private var var_838:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_289 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
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
         if(param1 > 0 && param1 <= const_997)
         {
            if(this.var_838)
            {
               this.var_838 = false;
               this.var_289 = new Array();
               this.var_289.push(const_997 + param1);
               this.var_289.push(const_647 + param1);
               this.var_289.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
