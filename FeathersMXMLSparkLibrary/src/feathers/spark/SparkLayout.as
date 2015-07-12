/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.controls.LayoutGroup;

    public class SparkLayout
    {
        private var _control:LayoutGroup;

        public function SparkLayout(control:LayoutGroup)
        {
            _control = control;
        }

        private var _horizontalAlign:String;

        [Inspectable(type="String", enumeration="left,center,right,justify")]

        public function get horizontalAlign():String
        {
            return this._horizontalAlign;
        }

        public function set horizontalAlign(value:String):void
        {
            this._horizontalAlign = value;
            setLayoutProp('horizontalAlign', value);
        }

        private var _verticalAlign:String;

        [Inspectable(type="String", enumeration="top,middle,bottom")]

        public function get verticalAlign():String
        {
            return this._verticalAlign;
        }

        public function set verticalAlign(value:String):void
        {
            this._verticalAlign = value;
            setLayoutProp('verticalAlign', value);
        }

        private var _gap:Number;

        public function set gap(value:Number):void
        {
            this._gap = value;
            setLayoutProp('gap', value);
        }

        public function get gap():Number
        {
            return this._gap;
        }

        public function get padding():Number
        {
            return this._paddingTop;
        }

        public function set padding(value:Number):void
        {
            this.paddingTop = value;
            this.paddingRight = value;
            this.paddingBottom = value;
            this.paddingLeft = value;
        }

        private var _paddingTop:Number;

        public function get paddingTop():Number
        {
            return this._paddingTop;
        }

        public function set paddingTop(value:Number):void
        {
            this._paddingTop = value;
            setLayoutProp('paddingTop', value);
        }

        private var _paddingRight:Number;

        public function get paddingRight():Number
        {
            return this._paddingRight;
        }

        public function set paddingRight(value:Number):void
        {
            this._paddingRight = value;
            setLayoutProp('paddingRight', value);
        }

        private var _paddingBottom:Number;

        public function get paddingBottom():Number
        {
            return this._paddingBottom;
        }

        public function set paddingBottom(value:Number):void
        {
            this._paddingBottom = value;
            setLayoutProp('paddingBottom', value);
        }

        private var _paddingLeft:Number;

        public function get paddingLeft():Number
        {
            return this._paddingLeft;
        }

        public function set paddingLeft(value:Number):void
        {
            this._paddingLeft = value;
            setLayoutProp('paddingLeft', value);
        }

        protected function setLayoutProp(prop:String, value:*):void
        {
            if (_control.layout && Object(_control.layout).hasOwnProperty(prop) && value)
            {
                _control.layout[prop] = value;
            }
        }
    }
}
