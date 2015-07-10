/**
 * Created by Andrey Shovkoplyas on 09.07.2015.
 * motor4ik@gmail.com
 */
package feathers.spark
{
    import feathers.controls.LayoutGroup;
    import feathers.layout.AnchorLayout;

    public class Group extends LayoutGroup
    {
        private var _sparkLayoutData:SparkLayoutData;
        protected var _sparkLayout:SparkLayout;

        public function Group()
        {
            super();
            _sparkLayout = new SparkLayout(this);
            _sparkLayoutData = new SparkLayoutData(this);
            initLayout();
        }

        protected function initLayout():void
        {
            layout = new AnchorLayout();
        }

        [Bindable(event="change")]

        [PercentProxy("percentWidth")]

        override public function set width(value:Number):void
        {
            super.width = value;
        }

        override public function get width():Number
        {
            return super.width;
        }

        [Bindable(event="change")]

        [PercentProxy("percentWidth")]

        override public function set height(value:Number):void
        {
            super.height = value;
        }

        override public function get height():Number
        {
            return super.height;
        }

        public function get percentWidth():Number
        {
            return _sparkLayoutData.percentWidth;
        }

        public function set percentWidth(value:Number):void
        {
            _sparkLayoutData.percentWidth = value;
        }

        public function get percentHeight():Number
        {
            return _sparkLayoutData.percentHeight;
        }

        public function set percentHeight(value:Number):void
        {
            _sparkLayoutData.percentHeight = value;
        }

        public function get top():Number
        {
            return _sparkLayoutData.top;
        }

        public function set top(value:Number):void
        {
            _sparkLayoutData.top = value;
        }

        public function get right():Number
        {
            return _sparkLayoutData.right;
        }

        public function set right(value:Number):void
        {
            _sparkLayoutData.right = value;
        }

        public function get bottom():Number
        {
            return _sparkLayoutData.bottom;
        }

        public function set bottom(value:Number):void
        {
            _sparkLayoutData.bottom = value;
        }

        public function get left():Number
        {
            return _sparkLayoutData.left;
        }

        public function set left(value:Number):void
        {
            _sparkLayoutData.left = value;
        }

        public function get horizontalCenter():Number
        {
            return _sparkLayoutData.horizontalCenter;
        }

        public function set horizontalCenter(value:Number):void
        {
            _sparkLayoutData.horizontalCenter = value;
        }

        public function get verticalCenter():Number
        {
            return _sparkLayoutData.verticalCenter;
        }

        public function set verticalCenter(value:Number):void
        {
            _sparkLayoutData.verticalCenter = value;
        }
    }
}
