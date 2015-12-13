/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.controls.Screen;
    import feathers.layout.AnchorLayout;

    import starling.events.Event;

    public class Screen extends feathers.controls.Screen
    {
        public function Screen()
        {
            super();
            layout = new AnchorLayout();
        }

        public function set enabled(value:Boolean):void
        {
            super.isEnabled = value;
        }

        public function get enabled():Boolean
        {
            return super.isEnabled;
        }

        override protected function draw():void
        {
            var scale:Number = SparkGlobal.scale;
            SparkGlobal.scale = NaN;
            super.draw();
            SparkGlobal.scale = scale;
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
