package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_861;
         param1["bitmap"] = const_960;
         param1["border"] = const_778;
         param1["border_notify"] = const_1656;
         param1["bubble"] = const_812;
         param1["bubble_pointer_up"] = const_1145;
         param1["bubble_pointer_right"] = const_1283;
         param1["bubble_pointer_down"] = const_1286;
         param1["bubble_pointer_left"] = const_1333;
         param1["button"] = const_594;
         param1["button_thick"] = const_956;
         param1["button_icon"] = const_1587;
         param1["button_group_left"] = const_919;
         param1["button_group_center"] = const_981;
         param1["button_group_right"] = const_899;
         param1["canvas"] = const_913;
         param1["checkbox"] = const_738;
         param1["closebutton"] = const_1225;
         param1["container"] = const_392;
         param1["container_button"] = const_756;
         param1["display_object_wrapper"] = const_726;
         param1["dropmenu"] = const_494;
         param1["dropmenu_item"] = const_629;
         param1["frame"] = const_409;
         param1["frame_notify"] = const_1619;
         param1["header"] = const_889;
         param1["html"] = const_1183;
         param1["icon"] = const_1168;
         param1["itemgrid"] = const_1099;
         param1["itemgrid_horizontal"] = const_469;
         param1["itemgrid_vertical"] = const_701;
         param1["itemlist"] = const_1331;
         param1["itemlist_horizontal"] = const_395;
         param1["itemlist_vertical"] = const_389;
         param1["label"] = const_618;
         param1["maximizebox"] = const_1792;
         param1["menu"] = const_1771;
         param1["menu_item"] = const_1640;
         param1["submenu"] = const_1200;
         param1["minimizebox"] = const_1744;
         param1["notify"] = const_1612;
         param1["null"] = const_909;
         param1["password"] = const_925;
         param1["radiobutton"] = const_733;
         param1["region"] = const_526;
         param1["restorebox"] = const_1860;
         param1["scaler"] = const_543;
         param1["scaler_horizontal"] = const_1654;
         param1["scaler_vertical"] = const_1837;
         param1["scrollbar_horizontal"] = const_539;
         param1["scrollbar_vertical"] = const_935;
         param1["scrollbar_slider_button_up"] = const_1291;
         param1["scrollbar_slider_button_down"] = const_1111;
         param1["scrollbar_slider_button_left"] = const_1119;
         param1["scrollbar_slider_button_right"] = const_1140;
         param1["scrollbar_slider_bar_horizontal"] = const_1186;
         param1["scrollbar_slider_bar_vertical"] = const_1162;
         param1["scrollbar_slider_track_horizontal"] = const_1305;
         param1["scrollbar_slider_track_vertical"] = const_1125;
         param1["scrollable_itemlist"] = const_1846;
         param1["scrollable_itemlist_vertical"] = const_527;
         param1["scrollable_itemlist_horizontal"] = const_1231;
         param1["selector"] = const_847;
         param1["selector_list"] = const_809;
         param1["submenu"] = const_1200;
         param1["tab_button"] = const_830;
         param1["tab_container_button"] = const_1248;
         param1["tab_context"] = const_444;
         param1["tab_content"] = const_1208;
         param1["tab_selector"] = const_783;
         param1["text"] = const_538;
         param1["input"] = const_870;
         param1["toolbar"] = const_1621;
         param1["tooltip"] = const_438;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
