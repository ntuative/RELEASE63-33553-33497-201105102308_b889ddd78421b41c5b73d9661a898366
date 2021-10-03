package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_998:int;
      
      private var var_721:Boolean;
      
      private var var_1620:Boolean;
      
      private var var_645:String;
      
      private var var_1599:int;
      
      private var var_1776:String;
      
      private var var_1676:String;
      
      private var var_1678:String;
      
      private var var_2462:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_998 = param1.readInteger();
         this.var_721 = param1.readBoolean();
         this.var_1620 = param1.readBoolean();
         this.var_645 = param1.readString();
         this.var_1599 = param1.readInteger();
         this.var_1776 = param1.readString();
         this.var_1676 = param1.readString();
         this.var_1678 = param1.readString();
         this.var_2462 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_998;
      }
      
      public function get online() : Boolean
      {
         return this.var_721;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1620;
      }
      
      public function get figure() : String
      {
         return this.var_645;
      }
      
      public function get categoryId() : int
      {
         return this.var_1599;
      }
      
      public function get motto() : String
      {
         return this.var_1776;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1676;
      }
      
      public function get realName() : String
      {
         return this.var_1678;
      }
      
      public function get facebookId() : String
      {
         return this.var_2462;
      }
   }
}
