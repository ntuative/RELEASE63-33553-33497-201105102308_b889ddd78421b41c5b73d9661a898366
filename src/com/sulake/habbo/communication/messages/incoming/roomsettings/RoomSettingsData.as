package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_520:int = 0;
      
      public static const const_212:int = 1;
      
      public static const const_130:int = 2;
      
      public static const const_808:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1650:String;
      
      private var var_2188:int;
      
      private var var_1599:int;
      
      private var var_2351:int;
      
      private var var_2353:int;
      
      private var var_866:Array;
      
      private var var_2352:Array;
      
      private var var_2346:int;
      
      private var var_2348:Boolean;
      
      private var var_2349:Boolean;
      
      private var var_2350:Boolean;
      
      private var var_2347:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2348;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2348 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2349;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2349 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2350;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2350 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2347;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2347 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1650;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1650 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2188;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2188 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1599;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1599 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2351;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2351 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2353;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2353 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_866;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_866 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2352;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2352 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2346;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2346 = param1;
      }
   }
}
