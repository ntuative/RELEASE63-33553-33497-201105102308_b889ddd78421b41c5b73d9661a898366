package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_165:String = "hex";
      
      public static const const_38:String = "int";
      
      public static const const_240:String = "uint";
      
      public static const const_138:String = "Number";
      
      public static const const_39:String = "Boolean";
      
      public static const const_52:String = "String";
      
      public static const const_277:String = "Point";
      
      public static const const_285:String = "Rectangle";
      
      public static const const_151:String = "Array";
      
      public static const const_255:String = "Map";
       
      
      private var var_685:String;
      
      private var var_191:Object;
      
      private var _type:String;
      
      private var var_2878:Boolean;
      
      private var var_2960:Boolean;
      
      private var var_2879:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_685 = param1;
         this.var_191 = param2;
         this._type = param3;
         this.var_2878 = param4;
         this.var_2960 = param3 == const_255 || param3 == const_151 || param3 == const_277 || param3 == const_285;
         this.var_2879 = param5;
      }
      
      public function get key() : String
      {
         return this.var_685;
      }
      
      public function get value() : Object
      {
         return this.var_191;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2878;
      }
      
      public function get range() : Array
      {
         return this.var_2879;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_165:
               return "0x" + uint(this.var_191).toString(16);
            case const_39:
               return Boolean(this.var_191) == true ? "true" : "false";
            case const_277:
               return "Point(" + Point(this.var_191).x + ", " + Point(this.var_191).y + ")";
            case const_285:
               return "Rectangle(" + Rectangle(this.var_191).x + ", " + Rectangle(this.var_191).y + ", " + Rectangle(this.var_191).width + ", " + Rectangle(this.var_191).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_255:
               _loc3_ = this.var_191 as Map;
               _loc1_ = "<var key=\"" + this.var_685 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_151:
               _loc4_ = this.var_191 as Array;
               _loc1_ = "<var key=\"" + this.var_685 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_277:
               _loc5_ = this.var_191 as Point;
               _loc1_ = "<var key=\"" + this.var_685 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_285:
               _loc6_ = this.var_191 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_685 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_165:
               _loc1_ = "<var key=\"" + this.var_685 + "\" value=\"" + "0x" + uint(this.var_191).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_685 + "\" value=\"" + this.var_191 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
