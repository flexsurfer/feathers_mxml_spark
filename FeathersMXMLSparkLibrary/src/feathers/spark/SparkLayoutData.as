/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.controls.LayoutGroup;
    import feathers.layout.AnchorLayout;
    import feathers.layout.AnchorLayoutData;
    import feathers.layout.HorizontalLayout;
    import feathers.layout.HorizontalLayoutData;
    import feathers.layout.ILayoutData;
    import feathers.layout.ILayoutDisplayObject;
    import feathers.layout.VerticalLayout;
    import feathers.layout.VerticalLayoutData;

    import starling.events.Event;

    public class SparkLayoutData
    {
        private var _control:ILayoutDisplayObject;

        public function SparkLayoutData(control:ILayoutDisplayObject)
        {
            _control = control;
            _control.addEventListener(Event.ADDED_TO_STAGE, onAddedToStageHandler);
        }

        private function onAddedToStageHandler(event:Event):void
        {
            initLayoutData();
        }

        private function initLayoutData():void
        {
            if (_control.parent && _control.parent is LayoutGroup && LayoutGroup(_control.parent).layout)
            {
                if (LayoutGroup(_control.parent).layout is AnchorLayout)
                {
                    _control.layoutData = new AnchorLayoutData(_top, _right, _bottom, _left, _horizontalCenter, _verticalCenter);
                }
                else if (LayoutGroup(_control.parent).layout is VerticalLayout || LayoutGroup(_control.parent).layout is HorizontalLayout)
                {
                    _control.layoutData = LayoutGroup(_control.parent).layout is VerticalLayout ? new VerticalLayoutData() : new HorizontalLayoutData();
                }
            }
            else
            {
                _control.layoutData = new AnchorLayoutData(_top, _right, _bottom, _left, _horizontalCenter, _verticalCenter);
            }

            setLayoutDataProp("percentWidth", _percentWidth);
            setLayoutDataProp("percentHeight", _percentHeight);
        }

        protected var _top:Number = NaN;

        public function get top():Number
        {
            return this._top;
        }

        public function set top(value:Number):void
        {
            this._top = value;
            setLayoutDataProp('top', value);
        }

        protected var _right:Number = NaN;

        public function get right():Number
        {
            return this._right;
        }

        public function set right(value:Number):void
        {
            if(this._right == value)
            {
                return;
            }
            this._right = value;
            setLayoutDataProp('right', value);
        }

        protected var _bottom:Number = NaN;

        public function get bottom():Number
        {
            return this._bottom;
        }

        public function set bottom(value:Number):void
        {
            if(this._bottom == value)
            {
                return;
            }
            this._bottom = value;
            setLayoutDataProp('bottom', value);
        }

        protected var _left:Number = NaN;

        public function get left():Number
        {
            return this._left;
        }

        public function set left(value:Number):void
        {
            if (this._left == value)
            {
                return;
            }
            this._left = value;
            setLayoutDataProp('left', value);
        }

        protected var _horizontalCenter:Number = NaN;

        public function get horizontalCenter():Number
        {
            return this._horizontalCenter;
        }

        public function set horizontalCenter(value:Number):void
        {
            if(this._horizontalCenter == value)
            {
                return;
            }
            this._horizontalCenter = value;
            setLayoutDataProp('horizontalCenter', value);
        }

        protected var _verticalCenter:Number = NaN;

        public function get verticalCenter():Number
        {
            return this._verticalCenter;
        }

        public function set verticalCenter(value:Number):void
        {
            if(this._verticalCenter == value)
            {
                return;
            }
            this._verticalCenter = value;
            setLayoutDataProp('verticalCenter', value);
        }

        private var _percentWidth:Number = NaN;

        public function get percentWidth():Number
        {
            return this._percentWidth;
        }

        public function set percentWidth(value:Number):void
        {
            this._percentWidth = value;
            setLayoutDataProp('percentWidth', value);
        }

        private var _percentHeight:Number = NaN;

        public function get percentHeight():Number
        {
            return this._percentHeight;
        }

        public function set percentHeight(value:Number):void
        {
            this._percentHeight = value;
            setLayoutDataProp('percentHeight', value);
        }

        private function setLayoutDataProp(prop:String, value:*):void
        {
            if (layoutData && Object(layoutData).hasOwnProperty(prop) && value)
            {
                layoutData[prop] = value;
            }
        }

        private function get layoutData():ILayoutData
        {
            return _control.layoutData;
        }
    }
}
