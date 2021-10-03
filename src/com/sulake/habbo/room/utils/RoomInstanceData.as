package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_811:TileHeightMap = null;
      
      private var var_1261:LegacyWallGeometry = null;
      
      private var var_1260:RoomCamera = null;
      
      private var var_812:SelectedRoomObjectData = null;
      
      private var var_810:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_529:Map;
      
      private var var_530:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_529 = new Map();
         this.var_530 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1261 = new LegacyWallGeometry();
         this.var_1260 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_811;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_811 != null)
         {
            this.var_811.dispose();
         }
         this.var_811 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1261;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1260;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_812;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_812 != null)
         {
            this.var_812.dispose();
         }
         this.var_812 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_810;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_810 != null)
         {
            this.var_810.dispose();
         }
         this.var_810 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_811 != null)
         {
            this.var_811.dispose();
            this.var_811 = null;
         }
         if(this.var_1261 != null)
         {
            this.var_1261.dispose();
            this.var_1261 = null;
         }
         if(this.var_1260 != null)
         {
            this.var_1260.dispose();
            this.var_1260 = null;
         }
         if(this.var_812 != null)
         {
            this.var_812.dispose();
            this.var_812 = null;
         }
         if(this.var_810 != null)
         {
            this.var_810.dispose();
            this.var_810 = null;
         }
         if(this.var_529 != null)
         {
            this.var_529.dispose();
            this.var_529 = null;
         }
         if(this.var_530 != null)
         {
            this.var_530.dispose();
            this.var_530 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_529.remove(param1.id);
            this.var_529.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_529.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_529.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_529.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_530.remove(param1.id);
            this.var_530.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_530.length > 0)
         {
            return this.getWallItemDataWithId(this.var_530.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_530.remove(param1);
      }
   }
}
