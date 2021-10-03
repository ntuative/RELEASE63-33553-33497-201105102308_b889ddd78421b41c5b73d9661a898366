package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_848:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1079)
         {
            _structure = null;
            _assets = null;
            var_263 = null;
            var_286 = null;
            var_645 = null;
            var_573 = null;
            var_337 = null;
            if(!var_1342 && var_46)
            {
               var_46.dispose();
            }
            var_46 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_733 = null;
            var_1079 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_848[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_848[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_418:
               switch(_loc3_)
               {
                  case AvatarAction.const_734:
                  case AvatarAction.const_613:
                  case AvatarAction.const_376:
                  case AvatarAction.const_932:
                  case AvatarAction.const_424:
                  case AvatarAction.const_983:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_342:
            case AvatarAction.const_833:
            case AvatarAction.const_256:
            case AvatarAction.const_736:
            case AvatarAction.const_916:
            case AvatarAction.const_742:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
