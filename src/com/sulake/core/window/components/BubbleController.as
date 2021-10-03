package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.enum.Direction;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.utils.IIterator;
   import com.sulake.core.window.utils.IMargins;
   import com.sulake.core.window.utils.Iterator;
   import com.sulake.core.window.utils.PropertyDefaults;
   import com.sulake.core.window.utils.PropertyStruct;
   import com.sulake.core.window.utils.TextMargins;
   import flash.geom.Rectangle;
   
   public class BubbleController extends ContainerController implements IBubbleWindow
   {
      
      private static const const_1368:String = "_CONTENT";
      
      private static const const_1950:String = "_POINTER_UP";
      
      private static const const_1952:String = "_POINTER_DOWN";
      
      private static const const_1951:String = "_POINTER_LEFT";
      
      private static const const_1949:String = "_POINTER_RIGHT";
       
      
      private var var_1071:Boolean = false;
      
      private var var_39:IMargins;
      
      private var var_175:IWindowContainer;
      
      private var _direction:String = "down";
      
      public function BubbleController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function = null, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.var_1071 = true;
      }
      
      public function get content() : IWindowContainer
      {
         if(this.var_175 == null)
         {
            this.var_175 = findChildByTag(const_1368) as IWindowContainer;
            if(!this.var_175)
            {
               throw new Error("Bubble window\'s content element not available!");
            }
         }
         return this.var_175;
      }
      
      public function get margins() : IMargins
      {
         var _loc1_:* = null;
         if(!this.var_39)
         {
            _loc1_ = this.content.rectangle;
            this.var_39 = new TextMargins(_loc1_.left,_loc1_.top,_loc1_.right,_loc1_.bottom,this.marginsCallback);
         }
         return this.var_39;
      }
      
      public function get direction() : String
      {
         return this._direction;
      }
      
      public function set direction(param1:String) : void
      {
         var _loc2_:* = null;
         if(this.var_1071 && param1 != this._direction)
         {
            _loc2_ = getChildByName(param1);
            if(!_loc2_)
            {
               throw new Error("Invalid bubble pointer direction: \"" + param1 + "\"!");
            }
            getChildByName(this._direction).visible = false;
            _loc2_.visible = true;
            this._direction = param1;
         }
      }
      
      override public function get iterator() : IIterator
      {
         return this.content != null && this.var_1071 ? this.content.iterator : new Iterator(this);
      }
      
      private function marginsCallback(param1:IMargins) : void
      {
         var _loc2_:IWindow = this.content;
         var _loc3_:uint = _loc2_.param;
         var _loc4_:uint = _loc2_.param & (0 | 0);
         if(_loc4_)
         {
            _loc2_.setParamFlag(0 | 0,false);
         }
         var _loc5_:uint = _loc2_.param & 0;
         if(_loc5_)
         {
            _loc2_.setParamFlag(WindowParam.const_218,false);
         }
         _loc2_.rectangle = new Rectangle(param1.left,param1.top,param1.right - param1.left,param1.bottom - param1.top);
         if(_loc4_ || _loc5_)
         {
            _loc2_.setParamFlag(4294967295,false);
            _loc2_.setParamFlag(_loc3_,true);
         }
      }
      
      override public function get properties() : Array
      {
         var _loc1_:Array = super.properties;
         if(this._direction != Direction.DOWN)
         {
            _loc1_.push(new PropertyStruct(PropertyDefaults.const_954,this._direction,PropertyStruct.const_52,true));
         }
         else
         {
            _loc1_.push(PropertyDefaults.const_1617);
         }
         var _loc2_:* = this.var_39 != null;
         var _loc3_:Rectangle = this.content.rectangle;
         _loc1_.push(new PropertyStruct(PropertyDefaults.const_192,_loc3_.left,PropertyStruct.const_38,_loc2_));
         _loc1_.push(new PropertyStruct(PropertyDefaults.const_187,_loc3_.top,PropertyStruct.const_38,_loc2_));
         _loc1_.push(new PropertyStruct(PropertyDefaults.const_177,0 - _loc3_.right,PropertyStruct.const_38,_loc2_));
         _loc1_.push(new PropertyStruct(PropertyDefaults.const_190,0 - _loc3_.bottom,PropertyStruct.const_38,_loc2_));
         return _loc1_;
      }
      
      override public function set properties(param1:Array) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1)
         {
            switch(_loc2_.key)
            {
               case PropertyDefaults.const_954:
                  this.direction = _loc2_.value as String;
                  break;
               case PropertyDefaults.const_192:
                  this.margins.left = _loc2_.value as int;
                  break;
               case PropertyDefaults.const_187:
                  this.margins.top = _loc2_.value as int;
                  break;
               case PropertyDefaults.const_177:
                  this.margins.right = 0 - (_loc2_.value as int);
                  break;
               case PropertyDefaults.const_190:
                  this.margins.bottom = 0 - (_loc2_.value as int);
                  break;
            }
         }
         super.properties = param1;
      }
   }
}
