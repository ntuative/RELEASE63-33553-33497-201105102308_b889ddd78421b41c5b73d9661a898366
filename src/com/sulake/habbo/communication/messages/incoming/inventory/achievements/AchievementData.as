package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1464:int;
      
      private var var_303:String;
      
      private var var_2668:int;
      
      private var var_2510:int;
      
      private var var_1810:int;
      
      private var var_2666:int;
      
      private var var_1910:Boolean;
      
      private var _category:String;
      
      private var var_2667:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1464 = param1.readInteger();
         this.var_303 = param1.readString();
         this.var_2668 = param1.readInteger();
         this.var_2510 = param1.readInteger();
         this.var_1810 = param1.readInteger();
         this.var_2666 = param1.readInteger();
         this.var_1910 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2667 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_303;
      }
      
      public function get level() : int
      {
         return this.var_1464;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2668;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2510;
      }
      
      public function get method_3() : int
      {
         return this.var_1810;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2666;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1910;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2667;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1464 > 1 || this.var_1910;
      }
   }
}
