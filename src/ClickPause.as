﻿package {    import com.brightcove.api.APIModules;    import com.brightcove.api.CustomModule;    import com.brightcove.api.events.MediaEvent;    import com.brightcove.api.modules.ExperienceModule;    import com.brightcove.api.modules.VideoPlayerModule;    import flash.display.Stage;    import flash.events.*;    public class ClickPause extends CustomModule {			// reference to modules    	public var _videoPlayerModule: VideoPlayerModule;    	public function ClickPause()		{			trace("@project ClickPause");			trace("@author Si Levitas si@silevitas.com");			trace("@lastModified 2014.06.20");			trace("@version 1.0");		}        public function init(e:Event):void {            stage.addEventListener(MouseEvent.CLICK, pausePlayer);        }        public function pausePlayer(e:Event):void {            if (_videoPlayerModule.isPlaying == true) {            	_videoPlayerModule.pause();                trace("Video Player Paused.");            } else {                _videoPlayerModule.play();                trace("Video Player Beginning Playback.");            }        }    }}