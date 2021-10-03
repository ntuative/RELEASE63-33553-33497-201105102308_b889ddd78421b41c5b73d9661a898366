package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindowContainer;
   
   public interface IBubbleWindow extends IWindowContainer
   {
       
      
      function get direction() : String;
      
      function set direction(param1:String) : void;
      
      function get content() : IWindowContainer;
   }
}
