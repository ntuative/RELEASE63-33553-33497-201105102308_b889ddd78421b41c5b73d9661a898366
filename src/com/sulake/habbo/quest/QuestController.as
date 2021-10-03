package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_584:QuestsList;
      
      private var var_491:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_352:QuestTracker;
      
      private var var_893:CampaignCompleted;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_352 = new QuestTracker(this._questEngine);
         this.var_584 = new QuestsList(this._questEngine);
         this.var_491 = new QuestDetails(this._questEngine);
         this._questCompleted = new QuestCompleted(this._questEngine);
         this.var_893 = new CampaignCompleted(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_584.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_584.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_352.onQuest(param1);
         this.var_491.onQuest(param1);
         this._questCompleted.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_352.onQuestCompleted(param1);
         this.var_491.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_352.onQuestCancelled();
         this.var_491.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_352.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_584.onRoomExit();
         this.var_352.onRoomExit();
         this.var_491.onRoomExit();
         this.var_893.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_352.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_584)
         {
            this.var_584.dispose();
            this.var_584 = null;
         }
         if(this.var_352)
         {
            this.var_352.dispose();
            this.var_352 = null;
         }
         if(this.var_491)
         {
            this.var_491.dispose();
            this.var_491 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_893)
         {
            this.var_893.dispose();
            this.var_893 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_584;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_491;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_352;
      }
      
      public function get campaignCompleted() : CampaignCompleted
      {
         return this.var_893;
      }
   }
}
