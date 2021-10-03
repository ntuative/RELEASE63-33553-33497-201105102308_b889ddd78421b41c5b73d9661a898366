package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1113:int = 0;
       
      
      private var var_438:BitmapData = null;
      
      private var var_1673:String = "";
      
      private var var_305:Boolean = true;
      
      private var var_2268:String = "";
      
      private var var_2273:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_2270:String = "normal";
      
      private var var_1519:Boolean = false;
      
      private var var_1520:Boolean = false;
      
      private var _offset:Point;
      
      private var var_248:int = 0;
      
      private var _height:int = 0;
      
      private var var_1281:Number = 0;
      
      private var var_2269:Boolean = false;
      
      private var var_2271:Boolean = true;
      
      private var var_2267:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var _instanceId:int = 0;
      
      private var var_2272:Array = null;
      
      public function RoomObjectSprite()
      {
         this._offset = new Point(0,0);
         super();
         this._instanceId = var_1113++;
      }
      
      public function dispose() : void
      {
         this.var_438 = null;
         this.var_248 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_438;
      }
      
      public function get assetName() : String
      {
         return this.var_1673;
      }
      
      public function get visible() : Boolean
      {
         return this.var_305;
      }
      
      public function get tag() : String
      {
         return this.var_2268;
      }
      
      public function get alpha() : int
      {
         return this.var_2273;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_2270;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1520;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1519;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_248;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1281;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2269;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2271;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2267;
      }
      
      public function get instanceId() : int
      {
         return this._instanceId;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2272;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_248 = param1.width;
            this._height = param1.height;
         }
         this.var_438 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_1673 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_305 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2268 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2273 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_2270 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2272 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1519 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1520 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1281 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2269 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2271 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2267 = param1;
         ++this._updateID;
      }
   }
}
