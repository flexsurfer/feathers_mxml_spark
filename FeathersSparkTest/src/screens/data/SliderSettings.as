package screens.data
{
    import starling.events.EventDispatcher;

    public class SliderSettings extends EventDispatcher
    {
        [Bindable]
        public var step:Number = 1;
        [Bindable]
        public var page:Number = 10;
        [Bindable]
        public var liveDragging:Boolean = true;

        public function SliderSettings()
        {
        }
    }
}
