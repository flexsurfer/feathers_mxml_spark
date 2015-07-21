/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.controls.PanelScreen;
    import feathers.layout.AnchorLayout;

    import mx.core.IFactory;

    import starling.events.Event;

    public class PanelScreen extends feathers.controls.PanelScreen implements IFactory
    {
        private var _customHeader:Header;

        public function PanelScreen()
        {
            super();
            layout = new AnchorLayout();
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

        public function newInstance():*
        {
            return null;
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
