package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2445:String;
      
      private var var_2461:int;
      
      private var var_2178:int;
      
      private var var_2753:String;
      
      private var var_2883:int;
      
      private var var_1636:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2445 = param1.readString();
         this.var_2461 = param1.readInteger();
         this.var_2178 = param1.readInteger();
         this.var_2753 = param1.readString();
         this.var_2883 = param1.readInteger();
         this.var_1636 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2445;
      }
      
      public function get unitPort() : int
      {
         return this.var_2461;
      }
      
      public function get worldId() : int
      {
         return this.var_2178;
      }
      
      public function get castLibs() : String
      {
         return this.var_2753;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2883;
      }
      
      public function get nodeId() : int
      {
         return this.var_1636;
      }
   }
}
