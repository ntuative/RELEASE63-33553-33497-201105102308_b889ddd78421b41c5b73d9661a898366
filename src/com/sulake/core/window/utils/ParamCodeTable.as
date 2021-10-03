package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_206;
         param1["bound_to_parent_rect"] = const_104;
         param1["child_window"] = const_1157;
         param1["embedded_controller"] = const_1292;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_939;
         param1["mouse_dragging_target"] = const_260;
         param1["mouse_dragging_trigger"] = const_377;
         param1["mouse_scaling_target"] = const_356;
         param1["mouse_scaling_trigger"] = const_616;
         param1["horizontal_mouse_scaling_trigger"] = const_282;
         param1["vertical_mouse_scaling_trigger"] = const_243;
         param1["observe_parent_input_events"] = const_1189;
         param1["optimize_region_to_layout_size"] = const_601;
         param1["parent_window"] = const_1159;
         param1["relative_horizontal_scale_center"] = const_213;
         param1["relative_horizontal_scale_fixed"] = const_155;
         param1["relative_horizontal_scale_move"] = const_385;
         param1["relative_horizontal_scale_strech"] = const_394;
         param1["relative_scale_center"] = const_1107;
         param1["relative_scale_fixed"] = const_922;
         param1["relative_scale_move"] = const_1166;
         param1["relative_scale_strech"] = const_1287;
         param1["relative_vertical_scale_center"] = const_217;
         param1["relative_vertical_scale_fixed"] = const_153;
         param1["relative_vertical_scale_move"] = const_264;
         param1["relative_vertical_scale_strech"] = const_314;
         param1["on_resize_align_left"] = const_869;
         param1["on_resize_align_right"] = const_519;
         param1["on_resize_align_center"] = const_546;
         param1["on_resize_align_top"] = const_931;
         param1["on_resize_align_bottom"] = const_622;
         param1["on_resize_align_middle"] = const_573;
         param1["on_accommodate_align_left"] = const_1288;
         param1["on_accommodate_align_right"] = const_590;
         param1["on_accommodate_align_center"] = const_911;
         param1["on_accommodate_align_top"] = const_1185;
         param1["on_accommodate_align_bottom"] = const_604;
         param1["on_accommodate_align_middle"] = const_805;
         param1["route_input_events_to_parent"] = const_556;
         param1["use_parent_graphic_context"] = const_34;
         param1["draggable_with_mouse"] = const_1281;
         param1["scalable_with_mouse"] = const_1257;
         param1["reflect_horizontal_resize_to_parent"] = const_474;
         param1["reflect_vertical_resize_to_parent"] = const_535;
         param1["reflect_resize_to_parent"] = const_218;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1250;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
