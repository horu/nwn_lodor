#include "sl_array_lib"


struct sl_json_Array
{
    json jImpl;
};

struct sl_json_Array sl_json_CreateArray();

string sl_json_AtStr(struct sl_json_Array array, int index);
void sl_json_InsertStr(struct sl_json_Array array, int index, string element);
void sl_json_PushbackStr(struct sl_json_Array array, string element);
void sl_json_SetStr(struct sl_json_Array array, int index, string element);

int sl_json_AtInt(struct sl_json_Array array, int index);
void sl_json_InsertInt(struct sl_json_Array array, int index, int element);
void sl_json_PushbackInt(struct sl_json_Array array, int element);
void sl_json_SetInt(struct sl_json_Array array, int index, int element);

int sl_json_Size(struct sl_json_Array array);
void sl_json_Erase(struct sl_json_Array array, int index);
void sl_json_Clear(struct sl_json_Array array);



/// Implementation

// Private
const int sl_json_bLogEnabled = TRUE;

struct sl_json_Array sl_json_CreateArray()
{
    struct sl_json_Array array;
    array.jImpl = JsonArray();
    return array;
}


string sl_json_AtStr(struct sl_json_Array array, int index)
{
    return JsonGetString(JsonArrayGet(array.jImpl, index));
}

void sl_json_InsertStr(struct sl_json_Array array, int index, string element)
{
    JsonArrayInsertInplace(array.jImpl, JsonString(element), index);
}

void sl_json_PushbackStr(struct sl_json_Array array, string element)
{
    sl_json_InsertStr(array, -1, element);
}

void sl_json_SetStr(struct sl_json_Array array, int index, string element)
{
    JsonArraySetInplace(array.jImpl, index, JsonString(element));
}


int sl_json_AtInt(struct sl_json_Array array, int index)
{
    return JsonGetInt(JsonArrayGet(array.jImpl, index));
}

void sl_json_InsertInt(struct sl_json_Array array, int index, int element)
{
    JsonArrayInsertInplace(array.jImpl, JsonInt(element), index);
}

void sl_json_PushbackInt(struct sl_json_Array array, int element)
{
    sl_json_InsertInt(array, -1, element);
}

void sl_json_SetInt(struct sl_json_Array array, int index, int element)
{
    JsonArraySetInplace(array.jImpl, index, JsonInt(element));
}


int sl_json_Size(struct sl_json_Array array)
{
    return JsonGetLength(array.jImpl);
}

void sl_json_Erase(struct sl_json_Array array, int index)
{
    JsonArrayDelInplace(array.jImpl, index);
}

void sl_json_Clear(struct sl_json_Array array)
{
    int i;
    for (i = 0; i < sl_json_Size(array); i++)
    {
        sl_json_Erase(array, i);
    }
}
