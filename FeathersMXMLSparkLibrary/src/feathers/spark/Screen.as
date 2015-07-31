/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.controls.Screen;
    import feathers.layout.AnchorLayout;

    public class Screen extends feathers.controls.Screen
    {
        public function Screen()
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
    }
}
