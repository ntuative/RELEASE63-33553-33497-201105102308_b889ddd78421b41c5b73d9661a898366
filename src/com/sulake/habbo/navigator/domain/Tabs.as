package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_400:int = 1;
      
      public static const const_248:int = 2;
      
      public static const const_315:int = 3;
      
      public static const const_378:int = 4;
      
      public static const const_275:int = 5;
      
      public static const const_408:int = 1;
      
      public static const const_798:int = 2;
      
      public static const const_743:int = 3;
      
      public static const const_988:int = 4;
      
      public static const const_293:int = 5;
      
      public static const const_779:int = 6;
      
      public static const const_896:int = 7;
      
      public static const const_289:int = 8;
      
      public static const const_407:int = 9;
      
      public static const const_1980:int = 10;
      
      public static const const_791:int = 11;
      
      public static const const_608:int = 12;
       
      
      private var var_410:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_410 = new Array();
         this.var_410.push(new Tab(this._navigator,const_400,const_608,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_624));
         this.var_410.push(new Tab(this._navigator,const_248,const_408,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_624));
         this.var_410.push(new Tab(this._navigator,const_378,const_791,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1139));
         this.var_410.push(new Tab(this._navigator,const_315,const_293,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_624));
         this.var_410.push(new Tab(this._navigator,const_275,const_289,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_875));
         this.setSelectedTab(const_400);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_378;
      }
      
      public function get tabs() : Array
      {
         return this.var_410;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_410)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_410)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_410)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
