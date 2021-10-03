package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1909:IID;
      
      private var var_1079:Boolean;
      
      private var var_1239:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1909 = param1;
         this.var_1239 = new Array();
         this.var_1079 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1909;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1079;
      }
      
      public function get receivers() : Array
      {
         return this.var_1239;
      }
      
      public function dispose() : void
      {
         if(!this.var_1079)
         {
            this.var_1079 = true;
            this.var_1909 = null;
            while(this.var_1239.length > 0)
            {
               this.var_1239.pop();
            }
            this.var_1239 = null;
         }
      }
   }
}
