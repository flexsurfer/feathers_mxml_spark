/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.controls.StackScreenNavigatorItem;

    import mx.core.ClassFactory;

    import mx.core.IFactory;

    import starling.display.DisplayObject;

    import starling.events.Event;

    public class StackScreenNavigatorItem extends feathers.controls.StackScreenNavigatorItem
    {
        private var _instanceOnce:Boolean = false;

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

        public function get instanceOnce():Boolean
        {
            return _instanceOnce;
        }

        public function set instanceOnce(value:Boolean):void
        {
            _instanceOnce = value;
        }

        override public function getScreen():DisplayObject
        {
            if (_instanceOnce && screen is Class)
            {
                var ScreenType:Class = Class(screen);
                screen = new ScreenType();
            }

            return super.getScreen();
        }
    }
}
