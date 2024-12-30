#include "sl_storage_lib"

void main()
{
    object pc = GetPCSpeaker();
    object storage = sl_storage_create(pc, "sl_storage");
    OpenStore(storage, pc);
}
