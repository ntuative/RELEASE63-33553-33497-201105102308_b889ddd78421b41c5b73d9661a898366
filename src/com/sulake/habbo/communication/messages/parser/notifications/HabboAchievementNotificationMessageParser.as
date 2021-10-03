package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1464:int;
      
      private var var_1954:int;
      
      private var var_2510:int;
      
      private var var_1810:int;
      
      private var var_1463:int;
      
      private var var_2283:String = "";
      
      private var var_2706:String = "";
      
      private var var_2707:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1464 = param1.readInteger();
         this.var_2283 = param1.readString();
         this.var_1954 = param1.readInteger();
         this.var_2510 = param1.readInteger();
         this.var_1810 = param1.readInteger();
         this.var_1463 = param1.readInteger();
         this.var_2707 = param1.readInteger();
         this.var_2706 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1464;
      }
      
      public function get points() : int
      {
         return this.var_1954;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2510;
      }
      
      public function get method_3() : int
      {
         return this.var_1810;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1463;
      }
      
      public function get badgeID() : String
      {
         return this.var_2283;
      }
      
      public function get achievementID() : int
      {
         return this.var_2707;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2706;
      }
   }
}
