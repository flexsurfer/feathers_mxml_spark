/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.controls.Label;

    import flash.text.engine.ElementFormat;
    import flash.text.engine.FontDescription;

    public class Label extends feathers.controls.Label
    {
        private var _sparkLayoutData:SparkLayoutData;

        private var _styleObject:Object = {};

        private var _isStylesInvalid:Boolean;

        public function Label()
        {
            super();
        }

        override public function set styleName(value:String):void
        {
            var ssObj:Object = SparkGlobal.getStyle("." + value);
            if (ssObj)
            {
                if (ssObj.color != null && _styleObject.color == null)
                    _styleObject.color = parseInt(ssObj.color.split("#").join("0x"), 16);
                if (ssObj.fontSize && !_styleObject.fontSize)
                    _styleObject.fontSize = SparkGlobal.scaleValue(ssObj.fontSize);
                if (ssObj.fontName && !_styleObject.fontName)
                    _styleObject.fontName = ssObj.fontName;
                if (ssObj.fontWeight && !_styleObject.fontWeight)
                    _styleObject.fontWeight = ssObj.fontWeight;

                _isStylesInvalid = true;
                invalidate(INVALIDATION_FLAG_STYLES);
            }
            else
            {
                super.styleName = value;
            }
        }

        public function set fontSize(value:Number):void
        {
            value = SparkGlobal.scaleValue(value);
            _styleObject.fontSize = value;
            _isStylesInvalid = true;
            invalidate(INVALIDATION_FLAG_STYLES);
        }

        public function set color(value:*):void
        {
            _styleObject.color = value;
            _isStylesInvalid = true;
            invalidate(INVALIDATION_FLAG_STYLES);
        }

        public function set fontName(value:String):void
        {
            _styleObject.fontName = value;
            _isStylesInvalid = true;
            invalidate(INVALIDATION_FLAG_STYLES);
        }

        [Inspectable(type="String", enumeration="normal,bold")]
        public function set fontWeight(value:String):void
        {
            _styleObject.fontWeight = value;
            _isStylesInvalid = true;
            invalidate(INVALIDATION_FLAG_STYLES);
        }

        override protected function refreshTextRendererStyles():void
        {
            if (_isStylesInvalid)
            {
                var ef:ElementFormat = textRendererProperties.elementFormat;

                if (ef)
                {
                    ef = ef.clone();

                    if (_styleObject.color != null)
                        ef.color = _styleObject.color;
                    if (_styleObject.fontSize)
                        ef.fontSize = _styleObject.fontSize;

                    var fd:FontDescription = ef.fontDescription;

                    if (fd)
                    {
                        fd = fd.clone();

                        if (_styleObject.fontName)
                            fd.fontName = _styleObject.fontName;
                        if (_styleObject.fontWeight)
                            fd.fontWeight = _styleObject.fontWeight;

                        ef.fontDescription = fd;
                    }

                    textRendererProperties.elementFormat = ef;
                }

                _isStylesInvalid = false;
            }

            super.refreshTextRendererStyles();
        }

        public function set style(value:String):void
        {
            styleNameList.add(value);
        }

        public function set enabled(value:Boolean):void
        {
            super.isEnabled = value;
        }

        public function get enabled():Boolean
        {
            return super.isEnabled;
        }

        [PercentProxy("percentWidth")]
        override public function set width(value:Number):void
        {
            value = SparkGlobal.scaleValue(value);
            super.width = value;
        }

        [PercentProxy("percentWidth")]
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
    }
}
