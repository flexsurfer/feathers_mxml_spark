/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.controls.PanelScreen;
    import feathers.layout.AnchorLayout;
    import starling.events.Event;

    public class PanelScreen extends feathers.controls.PanelScreen
    {
        private var _customHeader:Header;

        public function PanelScreen()
        {
            super();
            layout = new AnchorLayout();
        }

        override protected function draw():void
        {
            var scale:Number = SparkGlobal.scale;
            SparkGlobal.scale = NaN;
            super.draw();
            SparkGlobal.scale = scale;
        }

        public function set customHeader(value:Header):void
        {
            _customHeader = value;
            headerFactory = customHeaderFactory;
        }

        public function customHeaderFactory():Header
        {
            return _customHeader;
        }

        protected function showNextScreen(event:String = "", data:Object = null):void
        {
            if (event != "")
            {
                dispatchEventWith(event, false, data);
            }
            else
            {
                dispatchEventWith(ScreenEvent.NEXT_SCREEN, false, data);
            }
        }

        protected function close():void
        {
            dispatchEventWith(ScreenEvent.CLOSE);
        }

        private var _data:Object;

        [Bindable(event="change")]
        public function get data():Object
        {
            return _data;
        }

        public function set data(value:Object):void
        {
            _data = value;
            this.dispatchEventWith(Event.CHANGE);
        }
    }
}
