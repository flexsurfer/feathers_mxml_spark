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
            addPopEvent(ScreenEvent.CANCEL);
        }

        public function set screenRenderer(factory:IFactory):void
        {
            this.screen = ClassFactory(factory).generator as Class;
        }

        public function set nextScreen(screenId:String):void
        {
            setScreenIDForPushEvent(ScreenEvent.NEXT_SCREEN, screenId);
        }
    }
}
