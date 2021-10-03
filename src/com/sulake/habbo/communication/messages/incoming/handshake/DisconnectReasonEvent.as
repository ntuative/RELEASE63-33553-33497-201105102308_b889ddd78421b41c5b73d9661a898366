package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2016:int = 0;
      
      public static const const_1658:int = 1;
      
      public static const const_1727:int = 2;
      
      public static const const_2139:int = 3;
      
      public static const const_2137:int = 4;
      
      public static const const_1998:int = 5;
      
      public static const const_1838:int = 10;
      
      public static const const_2006:int = 11;
      
      public static const const_2162:int = 12;
      
      public static const const_2149:int = 13;
      
      public static const const_2036:int = 16;
      
      public static const const_2141:int = 17;
      
      public static const const_2151:int = 18;
      
      public static const const_1996:int = 19;
      
      public static const const_2052:int = 20;
      
      public static const const_2066:int = 22;
      
      public static const const_2044:int = 23;
      
      public static const const_2029:int = 24;
      
      public static const const_2154:int = 25;
      
      public static const const_2024:int = 26;
      
      public static const const_2030:int = 27;
      
      public static const const_2003:int = 28;
      
      public static const const_2106:int = 29;
      
      public static const const_2058:int = 100;
      
      public static const const_2017:int = 101;
      
      public static const const_2028:int = 102;
      
      public static const const_2005:int = 103;
      
      public static const const_2054:int = 104;
      
      public static const const_2042:int = 105;
      
      public static const const_2093:int = 106;
      
      public static const const_2132:int = 107;
      
      public static const const_2150:int = 108;
      
      public static const const_2157:int = 109;
      
      public static const const_2078:int = 110;
      
      public static const const_2004:int = 111;
      
      public static const const_2153:int = 112;
      
      public static const const_1963:int = 113;
      
      public static const const_2163:int = 114;
      
      public static const const_2060:int = 115;
      
      public static const const_2049:int = 116;
      
      public static const const_1983:int = 117;
      
      public static const const_2087:int = 118;
      
      public static const const_2165:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1658:
            case const_1838:
               return "banned";
            case const_1727:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
