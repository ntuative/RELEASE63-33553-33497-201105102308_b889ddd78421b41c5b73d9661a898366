package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_598:uint = 0;
      
      public static const const_1794:uint = 1;
      
      public static const const_2120:int = 0;
      
      public static const const_1966:int = 1;
      
      public static const const_1988:int = 2;
      
      public static const const_2011:int = 3;
      
      public static const const_1647:int = 4;
      
      public static const const_380:int = 5;
      
      public static var var_402:IEventQueue;
      
      private static var var_631:IEventProcessor;
      
      private static var var_1841:uint = const_598;
      
      private static var stage:Stage;
      
      private static var var_171:IWindowRenderer;
       
      
      private var var_2583:EventProcessorState;
      
      private var var_2584:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_130:DisplayObjectContainer;
      
      protected var var_2964:Boolean = true;
      
      protected var var_1325:Error;
      
      protected var var_2125:int = -1;
      
      protected var var_1330:IInternalWindowServices;
      
      protected var var_1607:IWindowParser;
      
      protected var var_2912:IWindowFactory;
      
      protected var var_81:IDesktopWindow;
      
      protected var var_1608:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_571:Boolean = false;
      
      private var var_2582:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_171 = param2;
         this._localization = param4;
         this.var_130 = param5;
         this.var_1330 = new ServiceManager(this,param5);
         this.var_2912 = param3;
         this.var_1607 = new WindowParser(this);
         this.var_2584 = param7;
         if(!stage)
         {
            if(this.var_130 is Stage)
            {
               stage = this.var_130 as Stage;
            }
            else if(this.var_130.stage)
            {
               stage = this.var_130.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_81 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_81.limits.maxWidth = param6.width;
         this.var_81.limits.maxHeight = param6.height;
         this.var_130.addChild(this.var_81.getDisplayObject());
         this.var_130.doubleClickEnabled = true;
         this.var_130.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2583 = new EventProcessorState(var_171,this.var_81,this.var_81,null,this.var_2584);
         inputMode = const_598;
         this.var_1608 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1841;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_402)
         {
            if(var_402 is IDisposable)
            {
               IDisposable(var_402).dispose();
            }
         }
         if(var_631)
         {
            if(var_631 is IDisposable)
            {
               IDisposable(var_631).dispose();
            }
         }
         switch(value)
         {
            case const_598:
               var_402 = new MouseEventQueue(stage);
               var_631 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1794:
               var_402 = new TabletEventQueue(stage);
               var_631 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_598;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_130.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_130.removeChild(IGraphicContextHost(this.var_81).getGraphicContext(true) as DisplayObject);
            this.var_81.destroy();
            this.var_81 = null;
            this.var_1608.destroy();
            this.var_1608 = null;
            if(this.var_1330 is IDisposable)
            {
               IDisposable(this.var_1330).dispose();
            }
            this.var_1330 = null;
            this.var_1607.dispose();
            this.var_1607 = null;
            var_171 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1325;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2125;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1325 = param2;
         this.var_2125 = param1;
         if(this.var_2964)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1325 = null;
         this.var_2125 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1330;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1607;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2912;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_81;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_81.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1647,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1608;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_81,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_81)
         {
            this.var_81 = null;
         }
         if(param1.state != WindowState.const_584)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_171.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_571 = true;
         if(this.var_1325)
         {
            throw this.var_1325;
         }
         var_631.process(this.var_2583,var_402);
         this.var_571 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2582 = true;
         var_171.update(param1);
         this.var_2582 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_81 != null && !this.var_81.disposed)
         {
            if(this.var_130 is Stage)
            {
               this.var_81.limits.maxWidth = Stage(this.var_130).stageWidth;
               this.var_81.limits.maxHeight = Stage(this.var_130).stageHeight;
               this.var_81.width = Stage(this.var_130).stageWidth;
               this.var_81.height = Stage(this.var_130).stageHeight;
            }
            else
            {
               this.var_81.limits.maxWidth = this.var_130.width;
               this.var_81.limits.maxHeight = this.var_130.height;
               this.var_81.width = this.var_130.width;
               this.var_81.height = this.var_130.height;
            }
         }
      }
   }
}
