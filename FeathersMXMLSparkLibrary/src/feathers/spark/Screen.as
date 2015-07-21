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

        protected function showNextScreen():void
        {
            dispatchEventWith(ScreenEvent.NEXT_SCREEN);
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
