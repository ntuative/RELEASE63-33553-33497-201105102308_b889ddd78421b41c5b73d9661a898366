package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1705:int;
      
      private var var_1464:int;
      
      private var var_2219:int;
      
      private var var_2211:int;
      
      private var var_2216:int;
      
      private var _energy:int;
      
      private var var_2214:int;
      
      private var _nutrition:int;
      
      private var var_2218:int;
      
      private var var_2212:int;
      
      private var _ownerName:String;
      
      private var var_2319:int;
      
      private var var_543:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1705;
      }
      
      public function get level() : int
      {
         return this.var_1464;
      }
      
      public function get levelMax() : int
      {
         return this.var_2219;
      }
      
      public function get experience() : int
      {
         return this.var_2211;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2216;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2214;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2218;
      }
      
      public function get ownerId() : int
      {
         return this.var_2212;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2319;
      }
      
      public function get age() : int
      {
         return this.var_543;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1705 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1464 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2219 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2211 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2216 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2214 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2218 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2212 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2319 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_543 = param1;
      }
   }
}
