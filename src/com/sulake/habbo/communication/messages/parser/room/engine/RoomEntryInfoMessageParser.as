package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1748:Boolean;
      
      private var var_2404:int;
      
      private var var_451:Boolean;
      
      private var var_1158:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get privateRoom() : Boolean
      {
         return this.var_1748;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2404;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1158;
      }
      
      public function get owner() : Boolean
      {
         return this.var_451;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1158 != null)
         {
            this.var_1158.dispose();
            this.var_1158 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1748 = param1.readBoolean();
         if(this.var_1748)
         {
            this.var_2404 = param1.readInteger();
            this.var_451 = param1.readBoolean();
         }
         else
         {
            this.var_1158 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
