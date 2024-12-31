void sl_assert(int condition, string error_msg)
{
    if (!condition)
    {
        PrintString(error_msg);
    }
}

// Array. To permonently save data use item as obj.
const string sl_array_prefix = "sl_array_";

string _sl_array_get_local_name_size(string tag)
{
    return sl_array_prefix + tag + "_size";
}

string _sl_array_get_local_name(string tag, int index)
{
    return sl_array_prefix + tag + IntToString(index);
}

void sl_array_pushback_str(string tag, string element, object obj = OBJECT_INVALID)
{
    if (obj == OBJECT_INVALID)
    {
        obj = GetModule();
    }

    string size_name = _sl_array_get_local_name_size(tag);
    int size = GetLocalInt(obj, size_name);
    SetLocalString(obj, _sl_array_get_local_name(tag, size), element);
    PrintString(GetName(obj) + " push " + _sl_array_get_local_name(tag, size) + " " + IntToString(size));
    size += 1;
    SetLocalInt(obj, size_name, size);
}

string sl_array_at_str(string tag, int index, object obj = OBJECT_INVALID)
{
    if (obj == OBJECT_INVALID)
    {
        obj = GetModule();
    }

    PrintString(GetName(obj) + " at " + _sl_array_get_local_name(tag, index));
    return GetLocalString(obj, _sl_array_get_local_name(tag, index));
}

int sl_array_size(string tag, object obj = OBJECT_INVALID)
{
    if (obj == OBJECT_INVALID)
    {
        obj = GetModule();
    }

    string size_name = _sl_array_get_local_name_size(tag);
    PrintString(GetName(obj) + " size " + size_name + " " + IntToString(GetLocalInt(obj, size_name)));
    return GetLocalInt(obj, size_name);
}

int sl_array_find_str(string tag, string element, object obj = OBJECT_INVALID)
{
    if (obj == OBJECT_INVALID)
    {
        obj = GetModule();
    }

    int size = sl_array_size(tag, obj);
    int index;
    for (index = 0; index < size; index++)
    {
        string it = sl_array_at_str(tag, index, obj);
        if (element == it)
        {
            PrintString(GetName(obj) + " found " + IntToString(index));
            return index;
        }
    }
    PrintString(GetName(obj) + " not found.");
    return -1;
}

void sl_array_erase_str(string tag, int index, object obj = OBJECT_INVALID)
{
    if (obj == OBJECT_INVALID)
    {
        obj = GetModule();
    }

    string size_name = _sl_array_get_local_name_size(tag);
    int size = GetLocalInt(obj, size_name);
    if (index >= size)
    {
        return;
    }

    DeleteLocalString(obj, _sl_array_get_local_name(tag, index));
    for (index; index < size - 1; index++)
    {
        int old_index = index + 1;
        string it = sl_array_at_str(tag, old_index, obj);
        SetLocalString(obj, _sl_array_get_local_name(tag, index), it);
        PrintString(GetName(obj) + " move " + _sl_array_get_local_name(tag, old_index) + " to " + IntToString(index));
    }
    size -= 1;
    SetLocalInt(obj, size_name, size);
}

void sl_array_clear(string tag, object obj = OBJECT_INVALID)
{
    if (obj == OBJECT_INVALID)
    {
        obj = GetModule();
    }

    int size = sl_array_size(tag, obj);
    int index;
    for (index = 0; index < size; index++)
    {
        PrintString(GetName(obj) + " clear " + _sl_array_get_local_name(tag, index) + " " + IntToString(size));
        DeleteLocalString(obj, _sl_array_get_local_name(tag, index));
    }
    DeleteLocalInt(obj, _sl_array_get_local_name_size(tag));
}
