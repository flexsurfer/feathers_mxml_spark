package screens.renderers
{
    import feathers.controls.renderers.DefaultGroupedListItemRenderer;

    public class GroupedListItemRenderer extends DefaultGroupedListItemRenderer
    {
        public function GroupedListItemRenderer()
        {
            super();

            isQuickHitAreaEnabled = true;
            labelField = "text";
        }
    }
}
