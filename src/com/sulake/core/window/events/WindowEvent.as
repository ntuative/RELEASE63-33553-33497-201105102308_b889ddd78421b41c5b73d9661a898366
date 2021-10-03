package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1723:String = "WE_DESTROY";
      
      public static const const_309:String = "WE_DESTROYED";
      
      public static const const_1773:String = "WE_OPEN";
      
      public static const const_1721:String = "WE_OPENED";
      
      public static const const_1799:String = "WE_CLOSE";
      
      public static const const_1730:String = "WE_CLOSED";
      
      public static const const_1643:String = "WE_FOCUS";
      
      public static const const_307:String = "WE_FOCUSED";
      
      public static const const_1868:String = "WE_UNFOCUS";
      
      public static const const_1768:String = "WE_UNFOCUSED";
      
      public static const const_1784:String = "WE_ACTIVATE";
      
      public static const const_487:String = "WE_ACTIVATED";
      
      public static const const_1691:String = "WE_DEACTIVATE";
      
      public static const const_547:String = "WE_DEACTIVATED";
      
      public static const const_332:String = "WE_SELECT";
      
      public static const const_59:String = "WE_SELECTED";
      
      public static const const_609:String = "WE_UNSELECT";
      
      public static const const_636:String = "WE_UNSELECTED";
      
      public static const const_1755:String = "WE_LOCK";
      
      public static const const_1688:String = "WE_LOCKED";
      
      public static const const_1651:String = "WE_UNLOCK";
      
      public static const const_1835:String = "WE_UNLOCKED";
      
      public static const const_961:String = "WE_ENABLE";
      
      public static const const_254:String = "WE_ENABLED";
      
      public static const const_741:String = "WE_DISABLE";
      
      public static const const_251:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_362:String = "WE_RELOCATED";
      
      public static const const_1188:String = "WE_RESIZE";
      
      public static const const_43:String = "WE_RESIZED";
      
      public static const const_1686:String = "WE_MINIMIZE";
      
      public static const const_1836:String = "WE_MINIMIZED";
      
      public static const const_1676:String = "WE_MAXIMIZE";
      
      public static const const_1584:String = "WE_MAXIMIZED";
      
      public static const const_1739:String = "WE_RESTORE";
      
      public static const const_1671:String = "WE_RESTORED";
      
      public static const const_518:String = "WE_CHILD_ADDED";
      
      public static const const_427:String = "WE_CHILD_REMOVED";
      
      public static const const_216:String = "WE_CHILD_RELOCATED";
      
      public static const const_162:String = "WE_CHILD_RESIZED";
      
      public static const const_354:String = "WE_CHILD_ACTIVATED";
      
      public static const const_559:String = "WE_PARENT_ADDED";
      
      public static const const_1813:String = "WE_PARENT_REMOVED";
      
      public static const const_1833:String = "WE_PARENT_RELOCATED";
      
      public static const const_842:String = "WE_PARENT_RESIZED";
      
      public static const const_1137:String = "WE_PARENT_ACTIVATED";
      
      public static const const_182:String = "WE_OK";
      
      public static const const_578:String = "WE_CANCEL";
      
      public static const const_107:String = "WE_CHANGE";
      
      public static const const_596:String = "WE_SCROLL";
      
      public static const const_176:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_696:IWindow;
      
      protected var var_1070:Boolean;
      
      protected var var_473:Boolean;
      
      protected var var_482:Boolean;
      
      protected var var_695:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_696 = param3;
         _loc5_.var_473 = param4;
         _loc5_.var_482 = false;
         _loc5_.var_695 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_696;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_473;
      }
      
      public function recycle() : void
      {
         if(this.var_482)
         {
            throw new Error("Event already recycled!");
         }
         this.var_696 = null;
         this._window = null;
         this.var_482 = true;
         this.var_1070 = false;
         this.var_695.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1070;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1070 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1070;
      }
      
      public function stopPropagation() : void
      {
         this.var_1070 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1070 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_473 + " window: " + this._window + " }";
      }
   }
}
