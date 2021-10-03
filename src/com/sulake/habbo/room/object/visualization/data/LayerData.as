package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_829:String = "";
      
      public static const const_413:int = 0;
      
      public static const const_502:int = 255;
      
      public static const const_794:Boolean = false;
      
      public static const const_623:int = 0;
      
      public static const const_588:int = 0;
      
      public static const const_382:int = 0;
      
      public static const const_1113:int = 1;
      
      public static const const_1177:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2268:String = "";
      
      private var var_1787:int = 0;
      
      private var var_2273:int = 255;
      
      private var var_2340:Boolean = false;
      
      private var var_2343:int = 0;
      
      private var var_2342:int = 0;
      
      private var var_2341:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2268 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2268;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1787 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1787;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2273 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2273;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2340 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2340;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2343 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2343;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2342 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2342;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2341 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2341;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
