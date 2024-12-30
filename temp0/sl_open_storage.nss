#include "sl_storage_lib"

void main()
{
    object storage = OBJECT_SELF;
    object pc = GetLastOpenedBy();

    sl_storage_restore(storage, pc);
}
