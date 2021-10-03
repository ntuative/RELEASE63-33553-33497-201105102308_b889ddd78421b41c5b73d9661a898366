package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class Icon implements IDisposable
   {
      
      protected static const const_2171:int = 0;
      
      protected static const const_644:int = 1;
      
      protected static const const_1891:int = 2;
      
      protected static const const_1892:int = 3;
      
      protected static const const_129:int = 4;
      
      protected static const const_643:int = 8;
      
      protected static const const_267:int = 18;
      
      protected static const const_1890:int = 18;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1616:Boolean = false;
      
      protected var var_46:BitmapDataAsset;
      
      protected var var_83:IBitmapWrapperWindow;
      
      private var var_1087:uint;
      
      protected var var_213:Timer;
      
      protected var _frame:int = 0;
      
      private var var_576:Point;
      
      protected var var_861:Boolean = false;
      
      protected var _hover:Boolean = false;
      
      public function Icon()
      {
         this.var_1087 = const_644 | const_643;
         this.var_576 = new Point();
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get disabled() : Boolean
      {
         return this.var_1616;
      }
      
      protected function set image(param1:BitmapDataAsset) : void
      {
         this.var_46 = param1;
         this.redraw();
      }
      
      protected function get image() : BitmapDataAsset
      {
         return this.var_46;
      }
      
      protected function set canvas(param1:IBitmapWrapperWindow) : void
      {
         this.var_83 = param1;
         this.redraw();
      }
      
      protected function get canvas() : IBitmapWrapperWindow
      {
         return this.var_83;
      }
      
      protected function set alignment(param1:uint) : void
      {
         this.var_1087 = param1;
         this.redraw();
      }
      
      protected function get alignment() : uint
      {
         return this.var_1087;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.toggleTimer(false,0);
            this.image = null;
            this.canvas = null;
            this._disposed = true;
         }
      }
      
      public function notify(param1:Boolean) : void
      {
         this.var_861 = param1;
         if(this.var_861 && this.var_1616)
         {
            this.enable(true);
         }
      }
      
      public function hover(param1:Boolean) : void
      {
         this._hover = param1;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.var_1616 = !param1;
      }
      
      protected function redraw() : void
      {
         var _loc1_:* = null;
         if(this.var_83 && !this.var_83.disposed)
         {
            if(!this.var_83.bitmap)
            {
               this.var_83.bitmap = new BitmapData(this.var_83.width,this.var_83.height,true,0);
            }
            else
            {
               this.var_83.bitmap.fillRect(this.var_83.bitmap.rect,0);
            }
            if(this.var_46 && !this.var_46.disposed)
            {
               this.var_576.x = this.var_576.y = 0;
               _loc1_ = this.var_46.content as BitmapData;
               switch(this.var_1087 & const_1892)
               {
                  case const_644:
                     this.var_576.x = this.var_83.bitmap.width / 2 - _loc1_.width / 2;
                     break;
                  case const_1891:
                     this.var_576.x = this.var_83.bitmap.width - _loc1_.width;
               }
               switch(this.var_1087 & const_1890)
               {
                  case const_643:
                     this.var_576.y = this.var_83.bitmap.height / 2 - _loc1_.height / 2;
                     break;
                  case const_267:
                     this.var_576.y = this.var_83.bitmap.height - _loc1_.height;
               }
               this.var_83.bitmap.copyPixels(_loc1_,_loc1_.rect,this.var_576);
               this.var_83.invalidate();
            }
         }
      }
      
      protected function toggleTimer(param1:Boolean, param2:int) : void
      {
         if(param1)
         {
            if(!this.var_213)
            {
               this.var_213 = new Timer(param2,0);
               this.var_213.addEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_213.start();
               this.onTimerEvent(null);
            }
            this.var_213.delay = param2;
         }
         else
         {
            this._frame = 0;
            if(this.var_213)
            {
               this.var_213.reset();
               this.var_213.removeEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_213 = null;
            }
         }
      }
      
      protected function onTimerEvent(param1:TimerEvent) : void
      {
      }
   }
}
