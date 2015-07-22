/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.controls.Screen;
    import feathers.layout.AnchorLayout;

    import mx.core.IFactory;

    public class Screen extends feathers.controls.Screen implements IFactory
    {
        public function Screen()
        {
            super();
            layout = new AnchorLayout();
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

        protected function cancel():void
        {
            dispatchEventWith(ScreenEvent.CLOSE);
        }

        public function newInstance():*
        {
            return null;
        }
    }
}
