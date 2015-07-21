/**
 * Created by ashovkoplias on 16.07.2015.
 */
package screens.data
{
    import starling.events.EventDispatcher;

    public class GroupedListSettings extends EventDispatcher
    {
        public static const STYLE_NORMAL:String = "normal";
        public static const STYLE_INSET:String = "inset";

        [Bindable]
        public var isSelectable:Boolean = true;
        [Bindable]
        public var hasElasticEdges:Boolean = true;

        public var style:String = STYLE_NORMAL;

        public function GroupedListSettings()
        {
        }
    }
}
