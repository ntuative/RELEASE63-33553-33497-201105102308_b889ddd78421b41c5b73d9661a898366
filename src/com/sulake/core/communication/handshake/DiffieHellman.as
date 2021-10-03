package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_927:BigInteger;
      
      private var var_2299:BigInteger;
      
      private var var_1683:BigInteger;
      
      private var var_2298:BigInteger;
      
      private var var_1383:BigInteger;
      
      private var var_1684:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1383 = param1;
         this.var_1684 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1383.toString() + ",generator: " + this.var_1684.toString() + ",secret: " + param1);
         this.var_927 = new BigInteger();
         this.var_927.fromRadix(param1,param2);
         this.var_2299 = this.var_1684.modPow(this.var_927,this.var_1383);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1683 = new BigInteger();
         this.var_1683.fromRadix(param1,param2);
         this.var_2298 = this.var_1683.modPow(this.var_927,this.var_1383);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2299.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2298.toRadix(param1);
      }
   }
}
