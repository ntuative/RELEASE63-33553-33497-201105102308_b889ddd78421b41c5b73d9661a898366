package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1712:int;
      
      private var var_2357:int;
      
      private var var_1392:int;
      
      private var var_2358:int;
      
      private var var_127:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1712 = param1.readInteger();
         this.var_2357 = param1.readInteger();
         this.var_1392 = param1.readInteger();
         this.var_2358 = param1.readInteger();
         this.var_127 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1712);
      }
      
      public function get callId() : int
      {
         return this.var_1712;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2357;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1392;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2358;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_127;
      }
   }
}
