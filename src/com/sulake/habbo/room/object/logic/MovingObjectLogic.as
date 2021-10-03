package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectController;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.object.logic.ObjectLogicBase;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class MovingObjectLogic extends ObjectLogicBase
   {
      
      public static const const_969:int = 500;
      
      private static var var_595:Vector3d = new Vector3d();
       
      
      private var var_419:Vector3d;
      
      private var var_91:Vector3d;
      
      private var var_915:Number = 0.0;
      
      private var var_1711:int = 0;
      
      private var var_2356:int;
      
      private var var_914:int = 500;
      
      public function MovingObjectLogic()
      {
         this.var_419 = new Vector3d();
         this.var_91 = new Vector3d();
         super();
      }
      
      protected function get lastUpdateTime() : int
      {
         return this.var_1711;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_91 = null;
         this.var_419 = null;
      }
      
      override public function set object(param1:IRoomObjectController) : void
      {
         super.object = param1;
         if(param1 != null)
         {
            this.var_91.assign(param1.getLocation());
         }
      }
      
      protected function set moveUpdateInterval(param1:int) : void
      {
         if(param1 <= 0)
         {
            param1 = 1;
         }
         this.var_914 = param1;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         if(param1.loc != null)
         {
            this.var_91.assign(param1.loc);
         }
         var _loc2_:RoomObjectMoveUpdateMessage = param1 as RoomObjectMoveUpdateMessage;
         if(_loc2_ == null)
         {
            return;
         }
         if(object != null)
         {
            if(param1.loc != null)
            {
               _loc3_ = _loc2_.targetLoc;
               this.var_2356 = this.var_1711;
               this.var_419.assign(_loc3_);
               this.var_419.sub(this.var_91);
            }
         }
      }
      
      protected function getLocationOffset() : IVector3d
      {
         return null;
      }
      
      override public function update(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc2_:IVector3d = this.getLocationOffset();
         var _loc3_:IRoomObjectModelController = object.getModelController();
         if(_loc3_ != null)
         {
            if(_loc2_ != null)
            {
               if(this.var_915 != _loc2_.z)
               {
                  this.var_915 = _loc2_.z;
                  _loc3_.setNumber(RoomObjectVariableEnum.const_777,this.var_915);
               }
            }
            else if(this.var_915 != 0)
            {
               this.var_915 = 0;
               _loc3_.setNumber(RoomObjectVariableEnum.const_777,this.var_915);
            }
         }
         if(this.var_419.length > 0 || _loc2_ != null)
         {
            _loc4_ = param1 - this.var_2356;
            if(_loc4_ == this.var_914 >> 1)
            {
               _loc4_++;
            }
            if(_loc4_ > this.var_914)
            {
               _loc4_ = this.var_914;
            }
            if(this.var_419.length > 0)
            {
               var_595.assign(this.var_419);
               var_595.mul(_loc4_ / Number(this.var_914));
               var_595.add(this.var_91);
            }
            else
            {
               var_595.assign(this.var_91);
            }
            if(_loc2_ != null)
            {
               var_595.add(_loc2_);
            }
            if(object != null)
            {
               object.setLocation(var_595);
            }
            if(_loc4_ == this.var_914)
            {
               this.var_419.x = 0;
               this.var_419.y = 0;
               this.var_419.z = 0;
            }
         }
         this.var_1711 = param1;
      }
   }
}
