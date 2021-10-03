package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1102:int;
      
      private var var_2413:String;
      
      private var var_2412:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1102 = param1.readInteger();
         this.var_2413 = param1.readString();
         this.var_2412 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1102;
      }
      
      public function get requesterName() : String
      {
         return this.var_2413;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2412;
      }
   }
}
