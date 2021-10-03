package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_250:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2756:int = 0;
      
      private var var_2757:int = 0;
      
      private var var_2755:int = 0;
      
      private var var_2758:Boolean = false;
      
      private var var_2486:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_250,param6,param7);
         this.var_2756 = param1;
         this.var_2757 = param2;
         this.var_2755 = param3;
         this.var_2758 = param4;
         this.var_2486 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2756;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2757;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2755;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2758;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2486;
      }
   }
}
