/**
 * Created by ashovkoplias on 20.07.2015.
 */
package screens.data
{
    import starling.events.EventDispatcher;

    public class NumericStepperSettings extends EventDispatcher
    {
        [Bindable]
        public var step:Number = 1;

        public function NumericStepperSettings()
        {
        }
    }
}
