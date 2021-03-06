package com.sulake.habbo.quest
{
   import com.sulake.habbo.communication.messages.incoming.inventory.achievements.AchievementData;
   import flash.utils.Dictionary;
   
   public class AchievementCategories
   {
       
      
      private var var_170:Dictionary;
      
      private var var_2024:Array;
      
      public function AchievementCategories(param1:Array)
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         this.var_170 = new Dictionary();
         this.var_2024 = new Array();
         super();
         for each(_loc2_ in param1)
         {
            _loc3_ = this.var_170[_loc2_.category];
            if(_loc3_ == null)
            {
               _loc3_ = new AchievementCategory(_loc2_.category);
               this.var_170[_loc2_.category] = _loc3_;
               this.var_2024.push(_loc3_);
            }
            _loc3_.add(_loc2_);
            Logger.log("DUP: " + _loc2_.type + ", " + _loc2_.badgeId + ", " + _loc3_.code + ", " + _loc3_.achievements.length);
         }
      }
      
      public function update(param1:AchievementData) : void
      {
         var _loc2_:AchievementCategory = this.var_170[param1.category];
         _loc2_.update(param1);
      }
      
      public function get categoryList() : Array
      {
         return this.var_2024;
      }
   }
}
