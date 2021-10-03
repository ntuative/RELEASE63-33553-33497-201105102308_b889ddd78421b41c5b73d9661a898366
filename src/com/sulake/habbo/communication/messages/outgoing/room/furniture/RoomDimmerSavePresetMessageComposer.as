package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2296:int;
      
      private var var_2297:int;
      
      private var var_2295:String;
      
      private var var_2293:int;
      
      private var var_2294:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2296 = param1;
         this.var_2297 = param2;
         this.var_2295 = param3;
         this.var_2293 = param4;
         this.var_2294 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2296,this.var_2297,this.var_2295,this.var_2293,int(this.var_2294)];
      }
      
      public function dispose() : void
      {
      }
   }
}
