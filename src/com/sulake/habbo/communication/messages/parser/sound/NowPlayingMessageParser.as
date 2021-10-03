package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1882:int;
      
      private var _currentPosition:int;
      
      private var var_1883:int;
      
      private var var_1880:int;
      
      private var var_1881:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1882;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1883;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1880;
      }
      
      public function get syncCount() : int
      {
         return this.var_1881;
      }
      
      public function flush() : Boolean
      {
         this.var_1882 = -1;
         this._currentPosition = -1;
         this.var_1883 = -1;
         this.var_1880 = -1;
         this.var_1881 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1882 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1883 = param1.readInteger();
         this.var_1880 = param1.readInteger();
         this.var_1881 = param1.readInteger();
         return true;
      }
   }
}
