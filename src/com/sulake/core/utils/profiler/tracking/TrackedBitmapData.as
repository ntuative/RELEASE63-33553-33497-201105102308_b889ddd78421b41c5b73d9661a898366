package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2140:int = 16777215;
      
      public static const const_1219:int = 8191;
      
      public static const const_1265:int = 8191;
      
      public static const const_1990:int = 1;
      
      public static const const_1258:int = 1;
      
      public static const const_1103:int = 1;
      
      private static var var_520:uint = 0;
      
      private static var var_521:uint = 0;
       
      
      private var var_451:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1219)
         {
            param2 = const_1219;
         }
         else if(param2 < const_1258)
         {
            param2 = const_1258;
         }
         if(param3 > const_1265)
         {
            param3 = const_1265;
         }
         else if(param3 < const_1103)
         {
            param3 = const_1103;
         }
         super(param2,param3,param4,param5);
         ++var_520;
         var_521 += param2 * param3 * 4;
         this.var_451 = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_520;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_521;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_521 -= width * height * 4;
            --var_520;
            this._disposed = true;
            this.var_451 = null;
            super.dispose();
         }
      }
   }
}
