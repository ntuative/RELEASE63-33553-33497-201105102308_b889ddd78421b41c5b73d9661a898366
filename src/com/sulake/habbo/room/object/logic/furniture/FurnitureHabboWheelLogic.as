package com.sulake.habbo.room.object.logic.furniture
{
   import com.sulake.habbo.room.events.RoomObjectFurnitureActionEvent;
   import com.sulake.room.events.RoomObjectEvent;
   import com.sulake.room.events.RoomSpriteMouseEvent;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.events.MouseEvent;
   
   public class FurnitureHabboWheelLogic extends FurnitureLogic
   {
       
      
      public function FurnitureHabboWheelLogic()
      {
         super();
      }
      
      override public function getEventTypes() : Array
      {
         var _loc1_:Array = [RoomObjectFurnitureActionEvent.const_489];
         return getAllEventTypes(super.getEventTypes(),_loc1_);
      }
      
      override public function method_1(param1:RoomSpriteMouseEvent, param2:IRoomGeometry) : void
      {
         if(param1 == null || param2 == null)
         {
            return;
         }
         if(object == null)
         {
            return;
         }
         switch(param1.type)
         {
            case MouseEvent.DOUBLE_CLICK:
               this.useObject();
               break;
            default:
               super.method_1(param1,param2);
         }
      }
      
      override public function useObject() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(eventDispatcher != null && object != null)
         {
            _loc1_ = object.getId();
            _loc2_ = object.getType();
            _loc3_ = new RoomObjectFurnitureActionEvent(RoomObjectFurnitureActionEvent.const_489,_loc1_,_loc2_);
            if(_loc3_ != null)
            {
               eventDispatcher.dispatchEvent(_loc3_);
            }
         }
      }
   }
}
