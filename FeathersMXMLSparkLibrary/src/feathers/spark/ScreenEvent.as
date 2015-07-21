/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import starling.events.Event;

    public class ScreenEvent extends Event
    {
        public static const NEXT_SCREEN:String = "sparkScreenNextScreenEvent";
        public static const CLOSE:String = "sparkScreenCloseEvent";

        public function ScreenEvent(type:String, bubbles:Boolean = false, data:Object = null)
        {
            super(type, bubbles, data);
        }
    }
}
