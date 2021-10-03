package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSpamWallPostItFinishEditingMessage extends RoomWidgetMessage
   {
      
      public static const const_724:String = "RWSWPFEE_SEND_POSTIT_DATA";
       
      
      private var var_194:int;
      
      private var var_460:String;
      
      private var _text:String;
      
      private var var_336:String;
      
      public function RoomWidgetSpamWallPostItFinishEditingMessage(param1:String, param2:int, param3:String, param4:String, param5:String)
      {
         super(param1);
         this.var_194 = param2;
         this.var_460 = param3;
         this._text = param4;
         this.var_336 = param5;
      }
      
      public function get location() : String
      {
         return this.var_460;
      }
      
      public function get objectId() : int
      {
         return this.var_194;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get colorHex() : String
      {
         return this.var_336;
      }
   }
}
