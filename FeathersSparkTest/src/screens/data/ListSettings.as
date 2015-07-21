package screens.data
{
    import starling.events.EventDispatcher;

    public class ListSettings extends EventDispatcher
    {
        [Bindable]
        public var isSelectable:Boolean = true;
        [Bindable]
        public var hasElasticEdges:Boolean = true;
        [Bindable]
        public var allowMultipleSelection:Boolean = false;

        public function ListSettings()
        {
        }
    }
}
