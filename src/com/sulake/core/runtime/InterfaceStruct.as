package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1517:IID;
      
      private var var_1917:String;
      
      private var var_104:IUnknown;
      
      private var var_798:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1517 = param1;
         this.var_1917 = getQualifiedClassName(this.var_1517);
         this.var_104 = param2;
         this.var_798 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1517;
      }
      
      public function get iis() : String
      {
         return this.var_1917;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_104;
      }
      
      public function get references() : uint
      {
         return this.var_798;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_104 == null;
      }
      
      public function dispose() : void
      {
         this.var_1517 = null;
         this.var_1917 = null;
         this.var_104 = null;
         this.var_798 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_798;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_798) : uint(0);
      }
   }
}
