package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1794:Boolean;
      
      private var var_2481:int;
      
      private var var_2482:String;
      
      private var var_387:int;
      
      private var var_2484:int;
      
      private var var_2485:String;
      
      private var var_2480:String;
      
      private var var_2483:String;
      
      private var var_866:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_866 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1794 = false;
            return;
         }
         this.var_1794 = true;
         this.var_2481 = int(_loc2_);
         this.var_2482 = param1.readString();
         this.var_387 = int(param1.readString());
         this.var_2484 = param1.readInteger();
         this.var_2485 = param1.readString();
         this.var_2480 = param1.readString();
         this.var_2483 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_866.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_866 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2481;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2482;
      }
      
      public function get flatId() : int
      {
         return this.var_387;
      }
      
      public function get eventType() : int
      {
         return this.var_2484;
      }
      
      public function get eventName() : String
      {
         return this.var_2485;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2480;
      }
      
      public function get creationTime() : String
      {
         return this.var_2483;
      }
      
      public function get tags() : Array
      {
         return this.var_866;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1794;
      }
   }
}
