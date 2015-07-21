/**
 * Created by ashovkoplias on 17.07.2015.
 */
package feathers.spark
{
    [DefaultProperty("mxmlContent")]

    dynamic public class ScreenDataProperty
    {
        public function ScreenDataProperty(data:Object = null)
        {
            if (data)
            {
                this['data'] = data;
            }
        }

        public function set mxmlContent(value:Object):void
        {
            this['data'] = value;
        }
    }
}
