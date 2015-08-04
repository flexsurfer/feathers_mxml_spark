/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.core.FeathersControl;
    import feathers.utils.geom.matrixToScaleX;
    import feathers.utils.geom.matrixToScaleY;

    import flash.display.DisplayObject;
    import flash.display.MovieClip;

    import flash.display.Sprite;

    import flash.geom.Matrix;
    import flash.geom.Point;
    import flash.geom.Rectangle;

    import starling.core.RenderSupport;

    import starling.core.Starling;
    import starling.events.Event;
    import starling.utils.MatrixUtil;

    public class VectorClip extends FeathersControl
    {
        public static var container:Sprite;

        private static const HELPER_MATRIX:Matrix = new Matrix();

        private static const HELPER_POINT:Point = new Point();

        private var _source:DisplayObject;

        private var _sparkLayoutData:SparkLayoutData;
        private var _rendered:Boolean;

        public function VectorClip()
        {
            super();
        }

        public function play():void
        {
            if (_source && _source is MovieClip)
            {
                MovieClip(_source).play();
            }
        }

        public function stop():void
        {
            if (_source && _source is MovieClip)
            {
                MovieClip(_source).stop();
            }
        }

        public function gotoAndPlay(frame:Object, scene:String = null):void
        {
            if (_source && _source is MovieClip)
            {
                MovieClip(_source).gotoAndPlay(frame, scene);
            }
        }

        public function gotoAndStop(frame:Object, scene:String = null):void
        {
            if (_source && _source is MovieClip)
            {
                MovieClip(_source).gotoAndStop(frame, scene);
            }
        }

        public function set source(value:Object):void
        {
            clear();

            if (!value)
            {
                return;
            }

            if (value is Class)
            {
                _source = new value() as DisplayObject;
            }
            else
            {
                _source = value as DisplayObject;
            }

            if (_source)
            {
                if (!height || !width)
                {
                    _source.scaleX = SparkGlobal.scale;
                    _source.scaleY = SparkGlobal.scale;

                    super.height = _source.height;
                    super.width = _source.width;
                }
            }
        }

        override public function set visible(value:Boolean):void
        {
            super.visible = value;
            if (_source)
            {
                _source.visible = value;
            }
        }

        override public function render(support:RenderSupport, parentAlpha:Number):void
        {
            this.calculatePosition();
            super.render(support, parentAlpha);
        }

        override public function dispose():void
        {
            clear();
            super.dispose();
        }

        override protected function feathersControl_addedToStageHandler(event:Event):void
        {
            super.feathersControl_addedToStageHandler(event);

            if (container && _source)
            {
                _rendered = false;
                container.addChild(_source);
            }
        }

        override protected function feathersControl_removedFromStageHandler(event:Event):void
        {
            clear();
            super.feathersControl_removedFromStageHandler(event);
        }

        private function clear():void
        {
            if (container && _source && container.contains(_source))
            {
                container.removeChild(_source);
            }
        }

        protected function calculatePosition():void
        {
            if (_source && !_rendered)
            {
                var starlingViewPort:Rectangle = Starling.current.viewPort;

                HELPER_POINT.x = HELPER_POINT.y = 0;
                this.getTransformationMatrix(this.stage, HELPER_MATRIX);
                var globalScaleX:Number = matrixToScaleX(HELPER_MATRIX);
                var globalScaleY:Number = matrixToScaleY(HELPER_MATRIX);
                MatrixUtil.transformCoords(HELPER_MATRIX, 0, 0, HELPER_POINT);
                var nativeScaleFactor:Number = 1;
                if(Starling.current.supportHighResolutions)
                {
                    nativeScaleFactor = Starling.current.nativeStage.contentsScaleFactor;
                }
                var scaleFactor:Number = Starling.contentScaleFactor / nativeScaleFactor;

                _source.x = Math.round(starlingViewPort.x + HELPER_POINT.x * scaleFactor);
                _source.y = Math.round(starlingViewPort.y + HELPER_POINT.y * scaleFactor);

                var viewPortWidth:Number = Math.round(this.actualWidth * scaleFactor * globalScaleX);
                if(viewPortWidth < 1 ||
                        viewPortWidth !== viewPortWidth) //isNaN
                {
                    viewPortWidth = 1;
                }

                var viewPortHeight:Number = Math.round(this.actualHeight * scaleFactor * globalScaleY);
                if(viewPortHeight < 1 ||
                        viewPortHeight !== viewPortHeight) //isNaN
                {
                    viewPortHeight = 1;
                }

                _source.width = viewPortWidth;
                _source.height = viewPortHeight;

                _rendered = true;
            }
        }

        [PercentProxy("percentWidth")]
        override public function set width(value:Number):void
        {
            value = SparkGlobal.scaleValue(value);
            super.width = value;
        }

        [PercentProxy("percentHeight")]
        override public function set height(value:Number):void
        {
            value = SparkGlobal.scaleValue(value);
            super.height = value;
        }

        override public function set x(value:Number):void
        {
            value = SparkGlobal.scaleValue(value);
            super.x = value;
        }

        override public function set y(value:Number):void
        {
            value = SparkGlobal.scaleValue(value);
            super.y = value;
        }

        public function get percentWidth():Number
        {
            return sparkLayoutData.percentWidth;
        }

        public function set percentWidth(value:Number):void
        {
            sparkLayoutData.percentWidth = value;
        }

        public function get percentHeight():Number
        {
            return sparkLayoutData.percentHeight;
        }

        public function set percentHeight(value:Number):void
        {
            sparkLayoutData.percentHeight = value;
        }

        public function get top():Number
        {
            return sparkLayoutData.top;
        }

        public function set top(value:Number):void
        {
            sparkLayoutData.top = value;
        }

        public function get right():Number
        {
            return sparkLayoutData.right;
        }

        public function set right(value:Number):void
        {
            sparkLayoutData.right = value;
        }

        public function get bottom():Number
        {
            return sparkLayoutData.bottom;
        }

        public function set bottom(value:Number):void
        {
            sparkLayoutData.bottom = value;
        }

        public function get left():Number
        {
            return sparkLayoutData.left;
        }

        public function set left(value:Number):void
        {
            sparkLayoutData.left = value;
        }

        public function get horizontalCenter():Number
        {
            return sparkLayoutData.horizontalCenter;
        }

        public function set horizontalCenter(value:Number):void
        {
            sparkLayoutData.horizontalCenter = value;
        }

        public function get verticalCenter():Number
        {
            return sparkLayoutData.verticalCenter;
        }

        public function set verticalCenter(value:Number):void
        {
            sparkLayoutData.verticalCenter = value;
        }

        private function get sparkLayoutData():SparkLayoutData
        {
            if (_sparkLayoutData == null)
            {
                _sparkLayoutData = new SparkLayoutData(this);
            }
            return _sparkLayoutData;
        }

        public function get content():DisplayObject
        {
            return _source;
        }
    }
}
