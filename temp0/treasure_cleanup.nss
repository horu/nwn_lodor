void main()
{
    object oItem = OBJECT_INVALID;
    oItem = GetFirstItemInInventory();
    while ( oItem != OBJECT_INVALID )
        {
        SetPlotFlag(oItem, FALSE);
        DestroyObject( oItem, 0.0 );
        oItem = GetNextItemInInventory();
        }
}
