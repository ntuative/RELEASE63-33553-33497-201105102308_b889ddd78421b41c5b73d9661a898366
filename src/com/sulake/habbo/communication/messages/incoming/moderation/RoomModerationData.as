package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_387:int;
      
      private var var_2234:int;
      
      private var var_2235:Boolean;
      
      private var var_2212:int;
      
      private var _ownerName:String;
      
      private var var_127:RoomData;
      
      private var var_783:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_387 = param1.readInteger();
         this.var_2234 = param1.readInteger();
         this.var_2235 = param1.readBoolean();
         this.var_2212 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_127 = new RoomData(param1);
         this.var_783 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_127 != null)
         {
            this.var_127.dispose();
            this.var_127 = null;
         }
         if(this.var_783 != null)
         {
            this.var_783.dispose();
            this.var_783 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_387;
      }
      
      public function get userCount() : int
      {
         return this.var_2234;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2235;
      }
      
      public function get ownerId() : int
      {
         return this.var_2212;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_127;
      }
      
      public function get event() : RoomData
      {
         return this.var_783;
      }
   }
}
