package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2153:int;
      
      private var var_1562:String;
      
      private var _objId:int;
      
      private var var_2038:int;
      
      private var _category:int;
      
      private var var_2126:String;
      
      private var var_2392:Boolean;
      
      private var var_2393:Boolean;
      
      private var var_2391:Boolean;
      
      private var var_2265:Boolean;
      
      private var var_2390:int;
      
      private var var_1595:int;
      
      private var var_1927:String = "";
      
      private var var_1753:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2153 = param1;
         this.var_1562 = param2;
         this._objId = param3;
         this.var_2038 = param4;
         this._category = param5;
         this.var_2126 = param6;
         this.var_2392 = param7;
         this.var_2393 = param8;
         this.var_2391 = param9;
         this.var_2265 = param10;
         this.var_2390 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1927 = param1;
         this.var_1595 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2153;
      }
      
      public function get itemType() : String
      {
         return this.var_1562;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_2038;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2126;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2392;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2393;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2391;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2265;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2390;
      }
      
      public function get slotId() : String
      {
         return this.var_1927;
      }
      
      public function get songId() : int
      {
         return this.var_1753;
      }
      
      public function get extra() : int
      {
         return this.var_1595;
      }
   }
}
