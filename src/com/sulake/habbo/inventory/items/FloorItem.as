package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2126:String;
      
      protected var var_1595:Number;
      
      protected var var_2904:Boolean;
      
      protected var var_2905:Boolean;
      
      protected var var_2638:Boolean;
      
      protected var var_2799:Boolean;
      
      protected var var_2903:int;
      
      protected var var_2640:int;
      
      protected var var_2643:int;
      
      protected var var_2642:int;
      
      protected var var_1927:String;
      
      protected var var_1753:int;
      
      protected var var_919:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2638 = param5;
         this.var_2905 = param6;
         this.var_2904 = param7;
         this.var_2799 = param8;
         this.var_2126 = param9;
         this.var_1595 = param10;
         this.var_2903 = param11;
         this.var_2640 = param12;
         this.var_2643 = param13;
         this.var_2642 = param14;
         this.var_1927 = param15;
         this.var_1753 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2126;
      }
      
      public function get extra() : Number
      {
         return this.var_1595;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2904;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2905;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2638;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2799;
      }
      
      public function get expires() : int
      {
         return this.var_2903;
      }
      
      public function get creationDay() : int
      {
         return this.var_2640;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2643;
      }
      
      public function get creationYear() : int
      {
         return this.var_2642;
      }
      
      public function get slotId() : String
      {
         return this.var_1927;
      }
      
      public function get songId() : int
      {
         return this.var_1753;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_919 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_919;
      }
   }
}
