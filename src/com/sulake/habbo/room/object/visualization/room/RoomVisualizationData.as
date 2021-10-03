package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_540:WallRasterizer;
      
      private var var_541:FloorRasterizer;
      
      private var var_831:WallAdRasterizer;
      
      private var var_539:LandscapeRasterizer;
      
      private var var_832:PlaneMaskManager;
      
      private var var_762:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_540 = new WallRasterizer();
         this.var_541 = new FloorRasterizer();
         this.var_831 = new WallAdRasterizer();
         this.var_539 = new LandscapeRasterizer();
         this.var_832 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_762;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_541;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_540;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_831;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_539;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_832;
      }
      
      public function dispose() : void
      {
         if(this.var_540 != null)
         {
            this.var_540.dispose();
            this.var_540 = null;
         }
         if(this.var_541 != null)
         {
            this.var_541.dispose();
            this.var_541 = null;
         }
         if(this.var_831 != null)
         {
            this.var_831.dispose();
            this.var_831 = null;
         }
         if(this.var_539 != null)
         {
            this.var_539.dispose();
            this.var_539 = null;
         }
         if(this.var_832 != null)
         {
            this.var_832.dispose();
            this.var_832 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_540 != null)
         {
            this.var_540.clearCache();
         }
         if(this.var_541 != null)
         {
            this.var_541.clearCache();
         }
         if(this.var_539 != null)
         {
            this.var_539.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_540.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_541.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_831.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_539.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_832.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_762)
         {
            return;
         }
         this.var_540.initializeAssetCollection(param1);
         this.var_541.initializeAssetCollection(param1);
         this.var_831.initializeAssetCollection(param1);
         this.var_539.initializeAssetCollection(param1);
         this.var_832.initializeAssetCollection(param1);
         this.var_762 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
