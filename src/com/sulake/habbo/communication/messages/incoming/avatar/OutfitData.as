package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1927:int;
      
      private var var_2754:String;
      
      private var var_998:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1927 = param1.readInteger();
         this.var_2754 = param1.readString();
         this.var_998 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1927;
      }
      
      public function get figureString() : String
      {
         return this.var_2754;
      }
      
      public function get gender() : String
      {
         return this.var_998;
      }
   }
}
