#include "nwnx_object"

// Array. To permonently save data use item as obj.
// Array uses string values for SetLocal* <tag>_N and <tag>_size to store values.

string sl_array_AtStr(string tag, int index, object obj = OBJECT_INVALID);
void sl_array_PushbackStr(string tag, string element, object obj = OBJECT_INVALID);
int sl_array_FindStr(string tag, string element, object obj = OBJECT_INVALID);
void sl_array_SetStr(string tag, int index, string element, object obj = OBJECT_INVALID);

int sl_array_AtInt(string tag, int index, object obj = OBJECT_INVALID);
void sl_array_PushbackInt(string tag, int element, object obj = OBJECT_INVALID);
int sl_array_FindInt(string tag, int element, object obj = OBJECT_INVALID);
void sl_array_SetInt(string tag, int index, int element, object obj = OBJECT_INVALID);

float sl_array_AtFlt(string tag, int index, object obj = OBJECT_INVALID);
void sl_array_PushbackFlt(string tag, float element, object obj = OBJECT_INVALID);
int sl_array_FindFlt(string tag, float element, object obj = OBJECT_INVALID);

// Create copy of object to inventary and destroy it.
object sl_array_AtObj(string tag, int index, object obj = OBJECT_INVALID);
void sl_array_PushbackObj(string tag, object element, object obj = OBJECT_INVALID);
int sl_array_FindObj(string tag, object element, object obj = OBJECT_INVALID);

// Create pointer to object
object sl_array_AtObjRef(string tag, int index, object obj = OBJECT_INVALID);
void sl_array_PushbackObjRef(string tag, object element, object obj = OBJECT_INVALID);
int sl_array_FindObjRef(string tag, object element, object obj = OBJECT_INVALID);

int sl_array_Size(string tag, object obj = OBJECT_INVALID);
void sl_array_Erase(string tag, int index, object obj = OBJECT_INVALID);
void sl_array_Clear(string tag, object obj = OBJECT_INVALID);

/// Implementation

// Private
const int sl_array_log_enabled = TRUE;

string sl_array_GetLocalNameSize(string tag)
{
    return tag + "_size";
}

string sl_array_GetLocalName(string tag, int index)
{
    return tag + "_" + IntToString(index);
}

object sl_array_GetDefaultObj(object obj = OBJECT_INVALID)
{
    if (obj == OBJECT_INVALID)
    {
        obj = GetModule();
    }
    return obj;
}

void sl_array_Log(string tag, object obj, string msg)
{
    if (!sl_array_log_enabled)
    {
        return;
    }

    string obj_name = GetTag(obj);
    PrintString("[sl_array] [" + obj_name + "] [" + tag + "] " + msg);
}

string sl_array_GetStrHash(string element)
{
    int len = GetStringLength(element);
    if (len > 32)
    {
        return IntToHexString(HashString(element)) + "-" + IntToString(len);
    }
    return element;
}

void sl_array_SetSize(string tag, object obj, int size)
{
    string size_name = sl_array_GetLocalNameSize(tag);
    SetLocalInt(obj, size_name, size);
    sl_array_Log(tag, obj, "Set " + size_name + ": " + IntToString(size));
}

void sl_array_SetElement(string tag, int index, string element, object obj)
{
    string element_name = sl_array_GetLocalName(tag, index);
    SetLocalString(obj, element_name, element);
    sl_array_Log(tag, obj, "Set " + element_name + ": " + sl_array_GetStrHash(element));
}

void sl_array_DeleteElement(string tag, int index, object obj)
{
    string element_name = sl_array_GetLocalName(tag, index);
    DeleteLocalString(obj, element_name);
    sl_array_Log(tag, obj, "Del " + element_name);
}

// Public
int sl_array_Size(string tag, object obj = OBJECT_INVALID)
{
    obj = sl_array_GetDefaultObj(obj);

    string size_name = sl_array_GetLocalNameSize(tag);
    return GetLocalInt(obj, size_name);
}

void sl_array_SetStr(string tag, int index, string element, object obj = OBJECT_INVALID)
{
    obj = sl_array_GetDefaultObj(obj);

    int size = sl_array_Size(tag, obj);
    if (index >= size || index < 0)
    {
        return;
    }

    sl_array_SetElement(tag, index, element, obj);
}

void sl_array_SetInt(string tag, int index, int element, object obj = OBJECT_INVALID)
{
    sl_array_SetStr(tag, index, IntToString(element), obj);
}


void sl_array_PushbackStr(string tag, string element, object obj = OBJECT_INVALID)
{
    obj = sl_array_GetDefaultObj(obj);

    int size = sl_array_Size(tag, obj);
    sl_array_SetElement(tag, size, element, obj);
    size += 1;
    sl_array_SetSize(tag, obj, size);
}

void sl_array_PushbackInt(string tag, int element, object obj = OBJECT_INVALID)
{
    sl_array_PushbackStr(tag, IntToString(element), obj);
}

void sl_array_PushbackFlt(string tag, float element, object obj = OBJECT_INVALID)
{
    sl_array_PushbackStr(tag, FloatToString(element), obj);
}

void sl_array_PushbackObj(string tag, object element, object obj = OBJECT_INVALID)
{
    sl_array_PushbackStr(tag, NWNX_Object_Serialize(element), obj);
}

void sl_array_PushbackObjRef(string tag, object element, object obj = OBJECT_INVALID)
{
    sl_array_PushbackStr(tag, ObjectToString(element), obj);
}


string sl_array_AtStr(string tag, int index, object obj = OBJECT_INVALID)
{
    obj = sl_array_GetDefaultObj(obj);

    string element_name = sl_array_GetLocalName(tag, index);
    string element = GetLocalString(obj, element_name);
    //sl_array_Log(tag, obj, "At  " + element_name + ": " + sl_array_GetStrHash(element));
    return element;
}

int sl_array_AtInt(string tag, int index, object obj = OBJECT_INVALID)
{
    string st = sl_array_AtStr(tag, index, obj);
    if (st == "")
    {
        return 0;
    }
    return StringToInt(st);
}

float sl_array_AtFlt(string tag, int index, object obj = OBJECT_INVALID)
{
    string st = sl_array_AtStr(tag, index, obj);
    if (st == "")
    {
        return 0.0;
    }
    return StringToFloat(st);
}

object sl_array_AtObj(string tag, int index, object obj = OBJECT_INVALID)
{
    string st = sl_array_AtStr(tag, index, obj);
    if (st == "")
    {
        return OBJECT_INVALID;
    }
    return NWNX_Object_Deserialize(st);
}

object sl_array_AtObjRef(string tag, int index, object obj = OBJECT_INVALID)
{
    string st = sl_array_AtStr(tag, index, obj);
    if (st == "")
    {
        return OBJECT_INVALID;
    }
    return StringToObject(st);
}


int sl_array_FindStr(string tag, string element, object obj = OBJECT_INVALID)
{
    obj = sl_array_GetDefaultObj(obj);

    int size = sl_array_Size(tag, obj);
    int index;
    for (index = 0; index < size; index++)
    {
        string it = sl_array_AtStr(tag, index, obj);
        if (element == it)
        {
            sl_array_Log(tag, obj, "Fnd " + IntToString(index) + ": " + sl_array_GetStrHash(element));
            return index;
        }
    }
    sl_array_Log(tag, obj, "Not " + IntToString(index) + ": " + sl_array_GetStrHash(element));
    return -1;
}

int sl_array_FindInt(string tag, int element, object obj = OBJECT_INVALID)
{
    return sl_array_FindStr(tag, IntToString(element), obj);
}

int sl_array_FindFlt(string tag, float element, object obj = OBJECT_INVALID)
{
    return sl_array_FindStr(tag, FloatToString(element), obj);
}

int sl_array_FindObj(string tag, object element, object obj = OBJECT_INVALID)
{
    return sl_array_FindStr(tag, NWNX_Object_Serialize(element), obj);
}

int sl_array_FindObjRef(string tag, object element, object obj = OBJECT_INVALID)
{
    return sl_array_FindStr(tag, ObjectToString(element), obj);
}


void sl_array_Erase(string tag, int index, object obj = OBJECT_INVALID)
{
    obj = sl_array_GetDefaultObj(obj);

    int size = sl_array_Size(tag, obj);
    if (index >= size || index < 0)
    {
        return;
    }

    for (index; index < size - 1; index++)
    {
        int old_index = index + 1;
        string it = sl_array_AtStr(tag, old_index, obj);
        sl_array_SetElement(tag, index, it, obj);
    }
    sl_array_DeleteElement(tag, index, obj);

    size -= 1;
    sl_array_SetSize(tag, obj, size);
    if (!size)
    {
        DeleteLocalInt(obj, sl_array_GetLocalNameSize(tag));
    }
}

void sl_array_Clear(string tag, object obj = OBJECT_INVALID)
{
    obj = sl_array_GetDefaultObj(obj);

    int size = sl_array_Size(tag, obj);
    int index;
    for (index = 0; index < size; index++)
    {
        sl_array_DeleteElement(tag, index, obj);
    }
    DeleteLocalInt(obj, sl_array_GetLocalNameSize(tag));
}
