package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2425:int;
      
      private var var_2426:int;
      
      private var var_721:Boolean;
      
      private var var_2428:int;
      
      private var var_2427:int;
      
      private var var_2430:int;
      
      private var var_2429:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2425 = param1.readInteger();
         this.var_2426 = param1.readInteger();
         this.var_721 = param1.readBoolean();
         this.var_2428 = param1.readInteger();
         this.var_2427 = param1.readInteger();
         this.var_2430 = param1.readInteger();
         this.var_2429 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2425;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2426;
      }
      
      public function get online() : Boolean
      {
         return this.var_721;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2428;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2427;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2430;
      }
      
      public function get banCount() : int
      {
         return this.var_2429;
      }
   }
}
