#include "sl_storage_lib"

void main()
{
    object pc = GetPCSpeaker();
    object store = sl_storage_create_store(pc, "sl_storage");
    OpenStore(store, pc);
}