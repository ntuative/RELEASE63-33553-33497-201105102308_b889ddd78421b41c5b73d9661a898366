package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1314:String;
      
      private var var_1368:Array;
      
      private var var_1182:Array;
      
      private var var_1654:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1314;
      }
      
      public function get choices() : Array
      {
         return this.var_1368.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1182.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1654;
      }
      
      public function flush() : Boolean
      {
         this.var_1314 = "";
         this.var_1368 = [];
         this.var_1182 = [];
         this.var_1654 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1314 = param1.readString();
         this.var_1368 = [];
         this.var_1182 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1368.push(param1.readString());
            this.var_1182.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1654 = param1.readInteger();
         return true;
      }
   }
}
