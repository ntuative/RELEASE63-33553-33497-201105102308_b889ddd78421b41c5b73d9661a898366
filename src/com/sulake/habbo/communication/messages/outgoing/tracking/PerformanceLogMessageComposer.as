package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2538:int = 0;
      
      private var var_1574:String = "";
      
      private var var_2011:String = "";
      
      private var var_2769:String = "";
      
      private var var_2766:String = "";
      
      private var var_1994:int = 0;
      
      private var var_2765:int = 0;
      
      private var var_2767:int = 0;
      
      private var var_1573:int = 0;
      
      private var var_2768:int = 0;
      
      private var var_1571:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2538 = param1;
         this.var_1574 = param2;
         this.var_2011 = param3;
         this.var_2769 = param4;
         this.var_2766 = param5;
         if(param6)
         {
            this.var_1994 = 1;
         }
         else
         {
            this.var_1994 = 0;
         }
         this.var_2765 = param7;
         this.var_2767 = param8;
         this.var_1573 = param9;
         this.var_2768 = param10;
         this.var_1571 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2538,this.var_1574,this.var_2011,this.var_2769,this.var_2766,this.var_1994,this.var_2765,this.var_2767,this.var_1573,this.var_2768,this.var_1571];
      }
   }
}
