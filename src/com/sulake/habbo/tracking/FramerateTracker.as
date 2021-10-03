package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1623:int;
      
      private var var_2172:int;
      
      private var var_847:int;
      
      private var var_544:Number;
      
      private var var_2173:Boolean;
      
      private var var_2174:int;
      
      private var var_1622:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_544);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2172 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2174 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2173 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_847;
         if(this.var_847 == 1)
         {
            this.var_544 = param1;
            this.var_1623 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_847);
            this.var_544 = this.var_544 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2173 && param3 - this.var_1623 >= this.var_2172)
         {
            this.var_847 = 0;
            if(this.var_1622 < this.var_2174)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_1622;
               this.var_1623 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
