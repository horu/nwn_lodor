#include "sl_storage_lib"

void main()
{
    object store = OBJECT_SELF;
    object pc = GetLastOpenedBy();

    sl_storage_restore_store(store, pc);
}
