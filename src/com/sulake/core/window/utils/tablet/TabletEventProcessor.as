package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2981:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_81 = param1.desktop;
         var_60 = param1.var_1321 as WindowController;
         var_173 = param1.var_1319 as WindowController;
         var_171 = param1.renderer;
         var_868 = param1.var_1320;
         param2.begin();
         param2.end();
         param1.desktop = var_81;
         param1.var_1321 = var_60;
         param1.var_1319 = var_173;
         param1.renderer = var_171;
         param1.var_1320 = var_868;
      }
   }
}
