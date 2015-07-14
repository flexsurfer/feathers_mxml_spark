/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.controls.PanelScreen;
    import feathers.layout.AnchorLayout;

    import mx.core.IFactory;

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

        protected function showNextScreen(event:String = ""):void
        {
            if (event != "")
            {
                dispatchEventWith(event);
            }
            else
            {
                dispatchEventWith(ScreenEvent.NEXT_SCREEN);
            }
        }

        protected function cancel():void
        {
            dispatchEventWith(ScreenEvent.CANCEL);
        }

        public function newInstance():*
        {
            return null;
        }
    }
}
