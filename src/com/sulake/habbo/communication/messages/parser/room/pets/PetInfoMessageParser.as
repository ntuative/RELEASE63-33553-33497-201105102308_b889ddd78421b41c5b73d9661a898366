package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1705:int;
      
      private var _name:String;
      
      private var var_1464:int;
      
      private var var_2337:int;
      
      private var var_2211:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_645:String;
      
      private var var_2339:int;
      
      private var var_2336:int;
      
      private var var_2338:int;
      
      private var var_2319:int;
      
      private var var_2212:int;
      
      private var _ownerName:String;
      
      private var var_543:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1705;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1464;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2337;
      }
      
      public function get experience() : int
      {
         return this.var_2211;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_645;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2339;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2336;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2338;
      }
      
      public function get respect() : int
      {
         return this.var_2319;
      }
      
      public function get ownerId() : int
      {
         return this.var_2212;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_543;
      }
      
      public function flush() : Boolean
      {
         this.var_1705 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1705 = param1.readInteger();
         this._name = param1.readString();
         this.var_1464 = param1.readInteger();
         this.var_2337 = param1.readInteger();
         this.var_2211 = param1.readInteger();
         this.var_2339 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2336 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2338 = param1.readInteger();
         this.var_645 = param1.readString();
         this.var_2319 = param1.readInteger();
         this.var_2212 = param1.readInteger();
         this.var_543 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
