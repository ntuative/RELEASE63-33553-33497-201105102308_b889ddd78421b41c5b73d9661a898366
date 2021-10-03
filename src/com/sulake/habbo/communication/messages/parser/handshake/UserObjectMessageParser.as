package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_645:String;
      
      private var var_886:String;
      
      private var var_2181:String;
      
      private var var_1678:String;
      
      private var var_2180:int;
      
      private var var_2184:String;
      
      private var var_2182:int;
      
      private var var_2179:int;
      
      private var var_2183:int;
      
      private var _respectLeft:int;
      
      private var var_760:int;
      
      private var var_2185:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_645 = param1.readString();
         this.var_886 = param1.readString();
         this.var_2181 = param1.readString();
         this.var_1678 = param1.readString();
         this.var_2180 = param1.readInteger();
         this.var_2184 = param1.readString();
         this.var_2182 = param1.readInteger();
         this.var_2179 = param1.readInteger();
         this.var_2183 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_760 = param1.readInteger();
         this.var_2185 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_645;
      }
      
      public function get sex() : String
      {
         return this.var_886;
      }
      
      public function get customData() : String
      {
         return this.var_2181;
      }
      
      public function get realName() : String
      {
         return this.var_1678;
      }
      
      public function get tickets() : int
      {
         return this.var_2180;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2184;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2182;
      }
      
      public function get directMail() : int
      {
         return this.var_2179;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2183;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_760;
      }
      
      public function get identityId() : int
      {
         return this.var_2185;
      }
   }
}
