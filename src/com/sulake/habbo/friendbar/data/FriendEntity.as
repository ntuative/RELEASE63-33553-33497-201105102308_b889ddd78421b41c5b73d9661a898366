package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_998:int;
      
      private var var_721:Boolean;
      
      private var var_1775:Boolean;
      
      private var var_645:String;
      
      private var var_1599:int;
      
      private var var_1776:String;
      
      private var var_1676:String;
      
      private var var_1678:String;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1678 = param3;
         this.var_1776 = param4;
         this.var_998 = param5;
         this.var_721 = param6;
         this.var_1775 = param7;
         this.var_645 = param8;
         this.var_1599 = param9;
         this.var_1676 = param10;
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
      
      public function get allowFollow() : Boolean
      {
         return this.var_1775;
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
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_998 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_721 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this.var_1775 = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_645 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1599 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1776 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1676 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1678 = param1;
      }
   }
}
