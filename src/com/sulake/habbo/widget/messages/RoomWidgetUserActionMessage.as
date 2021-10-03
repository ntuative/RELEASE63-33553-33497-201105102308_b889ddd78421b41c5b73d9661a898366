package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_503:String = "RWUAM_WHISPER_USER";
      
      public static const const_500:String = "RWUAM_IGNORE_USER";
      
      public static const const_476:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_398:String = "RWUAM_KICK_USER";
      
      public static const const_555:String = "RWUAM_BAN_USER";
      
      public static const const_552:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_574:String = "RWUAM_RESPECT_USER";
      
      public static const const_506:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_607:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_567:String = "RWUAM_START_TRADING";
      
      public static const const_691:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_612:String = "RWUAM_KICK_BOT";
      
      public static const const_511:String = "RWUAM_REPORT";
      
      public static const const_473:String = "RWUAM_PICKUP_PET";
      
      public static const const_1701:String = "RWUAM_TRAIN_PET";
      
      public static const const_482:String = " RWUAM_RESPECT_PET";
      
      public static const const_440:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_938:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
