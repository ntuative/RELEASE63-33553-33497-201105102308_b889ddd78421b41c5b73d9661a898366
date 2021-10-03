package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2199:Number = 0.0;
      
      private var var_2197:Number = 0.0;
      
      private var var_2198:Number = 0.0;
      
      private var var_2196:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2199 = param1;
         this.var_2197 = param2;
         this.var_2198 = param3;
         this.var_2196 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2199;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2197;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2198;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2196;
      }
   }
}
