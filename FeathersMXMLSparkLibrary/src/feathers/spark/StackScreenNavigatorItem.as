/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.controls.StackScreenNavigatorItem;

    import mx.core.ClassFactory;

    import mx.core.IFactory;

    import starling.events.Event;

    public class StackScreenNavigatorItem extends feathers.controls.StackScreenNavigatorItem
    {
        public function StackScreenNavigatorItem(screen:Object = null, pushEvents:Object = null,
                                                 popEvent:String = null, properties:Object = null)
        {
            super(screen, pushEvents, popEvent, properties);
            addPopEvent(ScreenEvent.CLOSE);
        }

        public function set itemRenderer(screen:Class):void
        {
            this.screen = screen;
        }

        public function set nextScreen(screenId:String):void
        {
            setScreenIDForPushEvent(ScreenEvent.NEXT_SCREEN, screenId);
        }

        public function set complete(handler:Function):void
        {
            setFunctionForPushEvent(Event.COMPLETE, handler);
        }

        public function set data(data:Object):void
        {
            properties = {"data" : data};
        }

        public function get data():Object
        {
            return properties["data"];
        }
    }
}
