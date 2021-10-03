package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2161:int = 1;
      
      public static const const_2067:int = 2;
      
      public static const const_2123:int = 3;
      
      public static const const_1982:int = 4;
      
      public static const const_1586:int = 5;
      
      public static const const_2002:int = 6;
      
      public static const const_1655:int = 7;
      
      public static const const_1683:int = 8;
      
      public static const const_2018:int = 9;
      
      public static const const_1711:int = 10;
      
      public static const const_1741:int = 11;
      
      public static const const_1814:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1637:int;
      
      private var var_1438:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1637 = param1.readInteger();
         this.var_1438 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1637;
      }
      
      public function get info() : String
      {
         return this.var_1438;
      }
   }
}
