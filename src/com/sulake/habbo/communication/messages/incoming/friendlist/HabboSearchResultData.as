package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2520:int;
      
      private var var_1677:String;
      
      private var var_2285:String;
      
      private var var_2785:Boolean;
      
      private var var_2784:Boolean;
      
      private var var_2786:int;
      
      private var var_2286:String;
      
      private var var_2787:String;
      
      private var var_1678:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2520 = param1.readInteger();
         this.var_1677 = param1.readString();
         this.var_2285 = param1.readString();
         this.var_2785 = param1.readBoolean();
         this.var_2784 = param1.readBoolean();
         param1.readString();
         this.var_2786 = param1.readInteger();
         this.var_2286 = param1.readString();
         this.var_2787 = param1.readString();
         this.var_1678 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2520;
      }
      
      public function get avatarName() : String
      {
         return this.var_1677;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2285;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2785;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2784;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2786;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2286;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2787;
      }
      
      public function get realName() : String
      {
         return this.var_1678;
      }
   }
}
