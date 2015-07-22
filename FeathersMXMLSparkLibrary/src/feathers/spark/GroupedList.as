/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.controls.GroupedList;
    import feathers.controls.renderers.IGroupedListItemRenderer;

    import mx.core.ClassFactory;

    import mx.core.IFactory;

    public class GroupedList extends feathers.controls.GroupedList
    {
        private var _sparkLayoutData:SparkLayoutData;
        private var _customItemRendererClass:Class;

        public function GroupedList()
        {
            super();

            _sparkLayoutData = new SparkLayoutData(this);
        }

        public function set labelField(value:String):void
        {
            itemRendererProperties.labelField = value;
        }

        [Inspectable(category="Data")]
        
        public function set itemRenderer(factory:IFactory):void
        {
            _customItemRendererClass = ClassFactory(factory).generator as Class;
            itemRendererFactory = customItemRendererFactory;
        }

        private function customItemRendererFactory():IGroupedListItemRenderer
        {
            return new _customItemRendererClass();
        }
        
        [PercentProxy("percentWidth")]
        [Bindable(event="change")]
        override public function set width(value:Number):void
        {
            super.width = value;
        }

        override public function get width():Number
        {
            return super.width;
        }

        [PercentProxy("percentWidth")]
        [Bindable(event="change")]
        override public function get height():Number
        {
            return super.height;
        }

        override public function set height(value:Number):void
        {
            super.height = value;
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