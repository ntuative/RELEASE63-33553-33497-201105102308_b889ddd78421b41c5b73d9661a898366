package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDataProvider;
   
   public class EffectListProxy implements IThumbListDataProvider
   {
       
      
      private var var_65:EffectsModel;
      
      private var var_389:int;
      
      public function EffectListProxy(param1:EffectsModel, param2:int)
      {
         super();
         this.var_65 = param1;
         this.var_389 = param2;
      }
      
      public function dispose() : void
      {
         this.var_65 = null;
      }
      
      public function getDrawableList() : Array
      {
         return this.var_65.getEffects(this.var_389);
      }
   }
}
