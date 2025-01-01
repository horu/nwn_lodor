
// Array. To permonently save data use item as obj.

string sl_array_at_str(string tag, int index, object obj = OBJECT_INVALID);
void sl_array_pushback_str(string tag, string element, object obj = OBJECT_INVALID);
int sl_array_find_str(string tag, string element, object obj = OBJECT_INVALID);
void sl_array_set_str(string tag, int index, string element, object obj = OBJECT_INVALID);

int sl_array_at_int(string tag, int index, object obj = OBJECT_INVALID);
void sl_array_pushback_int(string tag, int element, object obj = OBJECT_INVALID);

int sl_array_size(string tag, object obj = OBJECT_INVALID);
void sl_array_erase(string tag, int index, object obj = OBJECT_INVALID);
void sl_array_clear(string tag, object obj = OBJECT_INVALID);

/// Implementation

// Private
const string _sl_array_prefix = "sl_array_";
const int _sl_array_log_enabled = TRUE;

string _sl_array_get_local_name_base(string tag)
{
    return _sl_array_prefix + tag;
}

string _sl_array_get_local_name_size(string tag)
{
    return _sl_array_get_local_name_base(tag) + "_size";
}

string _sl_array_get_local_name(string tag, int index)
{
    return _sl_array_get_local_name_base(tag) + "_" + IntToString(index);
}

object _sl_array_get_default_obj(object obj = OBJECT_INVALID)
{
    if (obj == OBJECT_INVALID)
    {
        obj = GetModule();
    }
    return obj;
}

void _sl_array_log(string tag, object obj, string msg)
{
    if (!_sl_array_log_enabled)
    {
        return;
    }

    string obj_name = GetTag(obj);
    string base = _sl_array_get_local_name_base(tag);
    PrintString("[sl_array] [" + obj_name + "] [" + base + "] " + msg);
}

string _sl_array_get_str_hash(string element)
{
    if (GetStringLength(element) > 32)
    {
        return IntToString(HashString(element));
    }
    return element;
}

void _sl_array_set_size(string tag, object obj, int size)
{
    string size_name = _sl_array_get_local_name_size(tag);
    SetLocalInt(obj, size_name, size);
    _sl_array_log(tag, obj, "Set " + size_name + ": " + IntToString(size));
}

void _sl_array_set_str(string tag, int index, string element, object obj)
{
    string element_name = _sl_array_get_local_name(tag, index);
    SetLocalString(obj, element_name, element);
    _sl_array_log(tag, obj, "Set " + element_name + ": " + _sl_array_get_str_hash(element));
}

void _sl_array_delete_str(string tag, int index, object obj)
{
    string element_name = _sl_array_get_local_name(tag, index);
    DeleteLocalString(obj, element_name);
    _sl_array_log(tag, obj, "Del " + element_name);
}

// Public
int sl_array_size(string tag, object obj = OBJECT_INVALID)
{
    obj = _sl_array_get_default_obj(obj);

    string size_name = _sl_array_get_local_name_size(tag);
    return GetLocalInt(obj, size_name);
}

void sl_array_set_str(string tag, int index, string element, object obj = OBJECT_INVALID)
{
    obj = _sl_array_get_default_obj(obj);

    int size = sl_array_size(tag, obj);
    if (index >= size)
    {
        return;
    }

    _sl_array_set_str(tag, index, element, obj);
}


void sl_array_pushback_str(string tag, string element, object obj = OBJECT_INVALID)
{
    obj = _sl_array_get_default_obj(obj);

    int size = sl_array_size(tag, obj);
    _sl_array_set_str(tag, size, element, obj);
    size += 1;
    _sl_array_set_size(tag, obj, size);
}

void sl_array_pushback_int(string tag, int element, object obj = OBJECT_INVALID)
{
    sl_array_pushback_str(tag, IntToString(element), obj);
}


string sl_array_at_str(string tag, int index, object obj = OBJECT_INVALID)
{
    obj = _sl_array_get_default_obj(obj);

    string element_name = _sl_array_get_local_name(tag, index);
    string element = GetLocalString(obj, element_name);
    _sl_array_log(tag, obj, "At  " + element_name + ": " + _sl_array_get_str_hash(element));
    return element;
}

int sl_array_at_int(string tag, int index, object obj = OBJECT_INVALID)
{
    string st = sl_array_at_str(tag, index, obj);
    if (st == "")
    {
        return 0;
    }
    return StringToInt(st);
}

int sl_array_find_str(string tag, string element, object obj = OBJECT_INVALID)
{
    obj = _sl_array_get_default_obj(obj);

    int size = sl_array_size(tag, obj);
    int index;
    for (index = 0; index < size; index++)
    {
        string it = sl_array_at_str(tag, index, obj);
        if (element == it)
        {
            _sl_array_log(tag, obj, "Fnd " + IntToString(index) + ": " + _sl_array_get_str_hash(element));
            return index;
        }
    }
    _sl_array_log(tag, obj, "Not " + IntToString(index) + ": " + _sl_array_get_str_hash(element));
    return -1;
}

void sl_array_erase(string tag, int index, object obj = OBJECT_INVALID)
{
    obj = _sl_array_get_default_obj(obj);

    int size = sl_array_size(tag, obj);
    if (index >= size)
    {
        return;
    }

    for (index; index < size - 1; index++)
    {
        int old_index = index + 1;
        string it = sl_array_at_str(tag, old_index, obj);
        _sl_array_set_str(tag, index, it, obj);
    }
    _sl_array_delete_str(tag, index, obj);

    size -= 1;
    _sl_array_set_size(tag, obj, size);
    if (!size)
    {
        DeleteLocalInt(obj, _sl_array_get_local_name_size(tag));
    }
}

void sl_array_clear(string tag, object obj = OBJECT_INVALID)
{
    obj = _sl_array_get_default_obj(obj);

    int size = sl_array_size(tag, obj);
    int index;
    for (index = 0; index < size; index++)
    {
        _sl_array_delete_str(tag, index, obj);
    }
    DeleteLocalInt(obj, _sl_array_get_local_name_size(tag));
}
