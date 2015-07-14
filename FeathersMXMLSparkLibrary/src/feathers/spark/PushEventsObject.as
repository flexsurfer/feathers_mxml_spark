/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    [DefaultProperty("mxmlContent")]

    dynamic public class PushEventsObject
    {
        public function PushEventsObject()
        {
        }

        [ArrayElementType(elementType="feathers.spark.PushEventObject")]

        public function set mxmlContent(value:Array):void
        {
            var screenCount:int = value.length;
            for(var i:int = 0; i < screenCount; i++)
            {
                setEventScreen(value[i]);
            }
        }

        private function setEventScreen(eventObject:PushEventObject):void
        {
            if (eventObject.event && eventObject.screenID)
            {
                this[eventObject.event] = eventObject.screenID;
            }
        }
    }
}
