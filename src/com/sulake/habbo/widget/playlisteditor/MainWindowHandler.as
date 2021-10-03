package com.sulake.habbo.widget.playlisteditor
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IBorderWindow;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.sound.HabboMusicPrioritiesEnum;
   import com.sulake.habbo.sound.IHabboMusicController;
   import com.sulake.habbo.sound.IPlayListController;
   import com.sulake.habbo.sound.ISongInfo;
   import com.sulake.habbo.widget.events.RoomWidgetPlayListEditorNowPlayingEvent;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class MainWindowHandler
   {
      
      private static const const_1428:int = 6;
      
      private static const const_1429:int = 9;
      
      private static const const_1430:int = 5;
       
      
      private var _widget:PlayListEditorWidget;
      
      private var var_223:IHabboMusicController;
      
      private var var_15:IWindowContainer;
      
      private var var_941:IBorderWindow;
      
      private var var_940:IBorderWindow;
      
      private var var_504:MusicInventoryGridView;
      
      private var var_750:PlayListEditorItemListView;
      
      private var var_224:MusicInventoryStatusView;
      
      private var var_299:PlayListStatusView;
      
      private var var_1765:IScrollbarWindow;
      
      private var var_1766:IScrollbarWindow;
      
      public function MainWindowHandler(param1:PlayListEditorWidget, param2:IHabboMusicController)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         super();
         this._widget = param1;
         this.var_223 = param2;
         var _loc3_:Array = [PlayListEditorWidgetAssetsEnum.const_772,PlayListEditorWidgetAssetsEnum.const_803,PlayListEditorWidgetAssetsEnum.const_638,PlayListEditorWidgetAssetsEnum.const_486,PlayListEditorWidgetAssetsEnum.const_832];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = this._widget.getImageGalleryAssetBitmap(_loc4_);
            if(_loc5_ != null)
            {
               _loc5_.dispose();
            }
            else
            {
               this._widget.retrieveWidgetImage(_loc4_);
            }
         }
         this.createWindow();
         this.var_504 = new MusicInventoryGridView(param1,this.getMusicInventoryGrid(),param2);
         this.var_750 = new PlayListEditorItemListView(param1,this.getPlayListEditorItemList());
         this.var_224 = new MusicInventoryStatusView(param1,this.getMusicInventoryStatusContainer());
         this.var_299 = new PlayListStatusView(param1,this.getPlayListStatusContainer());
         this.refreshLoadableAsset();
      }
      
      public function get window() : IWindow
      {
         return this.var_15;
      }
      
      public function get musicInventoryView() : MusicInventoryGridView
      {
         return this.var_504;
      }
      
      public function get playListEditorView() : PlayListEditorItemListView
      {
         return this.var_750;
      }
      
      public function destroy() : void
      {
         if(this.var_223)
         {
            this.var_223.stop(HabboMusicPrioritiesEnum.const_448);
            this.var_223 = null;
         }
         if(this.var_504)
         {
            this.var_504.destroy();
            this.var_504 = null;
         }
         if(this.var_750)
         {
            this.var_750.destroy();
            this.var_750 = null;
         }
         if(this.var_299)
         {
            this.var_299.destroy();
            this.var_299 = null;
         }
         if(this.var_224)
         {
            this.var_224.destroy();
            this.var_224 = null;
         }
         this.var_15.destroy();
         this.var_15 = null;
      }
      
      public function hide() : void
      {
         this.var_15.visible = false;
         if(this._widget != null)
         {
            this._widget.stopUserSong();
         }
      }
      
      public function show() : void
      {
         this.var_223.requestUserSongDisks();
         var _loc1_:IPlayListController = this.var_223.getRoomItemPlaylist();
         if(_loc1_ != null)
         {
            _loc1_.requestPlayList();
            this.selectPlayListStatusViewByFurniPlayListState();
         }
         this.var_15.visible = true;
      }
      
      public function refreshLoadableAsset(param1:String = "") : void
      {
         if(param1 == "" || param1 == PlayListEditorWidgetAssetsEnum.const_772)
         {
            this.assignWindowBitmapByAsset(this.var_941,"music_inventory_splash_image",PlayListEditorWidgetAssetsEnum.const_772);
         }
         if(param1 == "" || param1 == PlayListEditorWidgetAssetsEnum.const_803)
         {
            this.assignWindowBitmapByAsset(this.var_940,"playlist_editor_splash_image",PlayListEditorWidgetAssetsEnum.const_803);
         }
         if(param1 == "" || param1 == PlayListEditorWidgetAssetsEnum.const_638)
         {
            this.var_224.setPreviewPlayingBackgroundImage(this._widget.getImageGalleryAssetBitmap(PlayListEditorWidgetAssetsEnum.const_638));
         }
         if(param1 == "" || param1 == PlayListEditorWidgetAssetsEnum.const_486)
         {
            this.var_224.setGetMoreMusicBackgroundImage(this._widget.getImageGalleryAssetBitmap(PlayListEditorWidgetAssetsEnum.const_486));
         }
         if(param1 == "" || param1 == PlayListEditorWidgetAssetsEnum.const_832)
         {
            this.var_299.addSongsBackgroundImage = this._widget.getImageGalleryAssetBitmap(PlayListEditorWidgetAssetsEnum.const_832);
         }
      }
      
      private function assignWindowBitmapByAsset(param1:IWindowContainer, param2:String, param3:String) : void
      {
         var _loc5_:* = null;
         var _loc4_:IBitmapWrapperWindow = param1.getChildByName(param2) as IBitmapWrapperWindow;
         if(_loc4_ != null)
         {
            _loc5_ = this._widget.getImageGalleryAssetBitmap(param3);
            if(_loc5_ != null)
            {
               _loc4_.bitmap = _loc5_;
               _loc4_.width = _loc5_.width;
               _loc4_.height = _loc5_.height;
            }
         }
      }
      
      private function createWindow() : void
      {
         if(this._widget == null)
         {
            return;
         }
         var _loc1_:XmlAsset = this._widget.assets.getAssetByName("playlisteditor_main_window") as XmlAsset;
         Logger.log("Show window: " + _loc1_);
         this.var_15 = this._widget.windowManager.buildFromXML(_loc1_.content as XML) as IWindowContainer;
         if(this.var_15 == null)
         {
            throw new Error("Failed to construct window from XML!");
         }
         this.var_15.position = new Point(80,0);
         var _loc2_:IWindowContainer = this.var_15.getChildByName("content_area") as IWindowContainer;
         if(_loc2_ == null)
         {
            throw new Error("Window is missing \'content_area\' element");
         }
         this.var_941 = _loc2_.getChildByName("my_music_border") as IBorderWindow;
         this.var_940 = _loc2_.getChildByName("playlist_border") as IBorderWindow;
         if(this.var_941 == null)
         {
            throw new Error("Window content area is missing \'my_music_border\' window element");
         }
         if(this.var_940 == null)
         {
            throw new Error("Window content area is missing \'playlist_border\' window element");
         }
         this.var_1765 = this.var_941.getChildByName("music_inventory_scrollbar") as IScrollbarWindow;
         this.var_1766 = this.var_940.getChildByName("playlist_scrollbar") as IScrollbarWindow;
         if(this.var_1765 == null)
         {
            throw new Error("Window content area is missing \'music_inventory_scrollbar\' window element");
         }
         if(this.var_1766 == null)
         {
            throw new Error("Window content area is missing \'playlist_scrollbar\' window element");
         }
         var _loc3_:IWindow = this.var_15.findChildByTag("close");
         if(_loc3_ != null)
         {
            _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClose);
         }
      }
      
      private function getMusicInventoryGrid() : IItemGridWindow
      {
         return this.var_941.getChildByName("music_inventory_itemgrid") as IItemGridWindow;
      }
      
      private function getPlayListEditorItemList() : IItemListWindow
      {
         return this.var_940.getChildByName("playlist_editor_itemlist") as IItemListWindow;
      }
      
      private function getMusicInventoryStatusContainer() : IWindowContainer
      {
         return this.var_941.getChildByName("preview_play_container") as IWindowContainer;
      }
      
      private function getPlayListStatusContainer() : IWindowContainer
      {
         return this.var_940.getChildByName("now_playing_container") as IWindowContainer;
      }
      
      private function selectPlayListStatusViewByFurniPlayListState() : void
      {
         var _loc1_:IPlayListController = this.var_223.getRoomItemPlaylist();
         if(_loc1_ == null)
         {
            return;
         }
         if(_loc1_.isPlaying)
         {
            this.var_299.selectView(PlayListStatusView.const_551);
         }
         else if(_loc1_.length > 0)
         {
            this.var_299.selectView(PlayListStatusView.const_1317);
         }
         else
         {
            this.var_299.selectView(PlayListStatusView.const_888);
         }
      }
      
      private function selectMusicStatusViewByMusicState() : void
      {
         if(this.isPreviewPlaying())
         {
            this.var_224.show();
            this.var_224.selectView(MusicInventoryStatusView.const_731);
         }
         else if(this.var_223.getSongDiskInventorySize() <= const_1428)
         {
            this.var_224.show();
            this.var_224.selectView(MusicInventoryStatusView.const_811);
         }
         else
         {
            this.var_224.hide();
         }
      }
      
      private function updatePlaylistEditorView() : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc1_:IPlayListController = this.var_223.getRoomItemPlaylist();
         var _loc2_:* = [];
         var _loc3_:int = -1;
         if(_loc1_ != null)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc1_.length)
            {
               _loc5_ = _loc1_.getEntry(_loc4_);
               if(_loc5_ != null)
               {
                  _loc2_.push(_loc5_);
               }
               _loc4_++;
            }
            _loc3_ = _loc1_.playPosition;
         }
         this.var_750.refresh(_loc2_,_loc3_);
      }
      
      public function onPlayListUpdated() : void
      {
         var _loc3_:* = null;
         this.updatePlaylistEditorView();
         this.selectPlayListStatusViewByFurniPlayListState();
         var _loc1_:IPlayListController = this.var_223.getRoomItemPlaylist();
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:int = _loc1_.nowPlayingSongId;
         if(_loc2_ != -1)
         {
            _loc3_ = this.var_223.getSongInfo(_loc2_);
            this.var_299.nowPlayingTrackName = _loc3_.name;
            this.var_299.nowPlayingAuthorName = _loc3_.creator;
         }
         this.var_1766.visible = _loc1_.length > const_1430;
      }
      
      public function onSongDiskInventoryReceived() : void
      {
         this.var_504.refresh();
         this.selectMusicStatusViewByMusicState();
         this.var_1765.visible = this.var_504.itemCount > const_1429;
      }
      
      public function onNowPlayingChanged(param1:RoomWidgetPlayListEditorNowPlayingEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         switch(param1.type)
         {
            case RoomWidgetPlayListEditorNowPlayingEvent.const_103:
               this.selectPlayListStatusViewByFurniPlayListState();
               this.var_750.setItemIndexPlaying(param1.position);
               if(param1.id != -1)
               {
                  _loc3_ = this.var_223.getSongInfo(param1.id);
                  this.var_299.nowPlayingTrackName = _loc3_ != null ? _loc3_.name : "";
                  this.var_299.nowPlayingAuthorName = _loc3_ != null ? _loc3_.creator : "";
               }
               break;
            case RoomWidgetPlayListEditorNowPlayingEvent.const_131:
               this.var_504.setPreviewIconToPause();
               _loc2_ = this.var_223.getSongInfo(param1.id);
               this.var_224.songName = _loc2_ != null ? _loc2_.name : "";
               this.var_224.songName = _loc2_ != null ? _loc2_.name : "";
               this.var_224.authorName = _loc2_ != null ? _loc2_.creator : "";
               this.selectMusicStatusViewByMusicState();
               break;
            case RoomWidgetPlayListEditorNowPlayingEvent.const_123:
               this.var_504.setPreviewIconToPlay();
               this.selectMusicStatusViewByMusicState();
         }
      }
      
      private function onClose(param1:WindowMouseEvent) : void
      {
         this.hide();
      }
      
      private function isPreviewPlaying() : Boolean
      {
         return this.var_223.getSongIdPlayingAtPriority(HabboMusicPrioritiesEnum.const_448) != -1;
      }
   }
}
