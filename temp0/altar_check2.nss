int StartingConditional()
{
if ((GetTag(OBJECT_SELF) == "altar_fradoc") && (GetDeity(GetPCSpeaker()) == "Fradoc"))
        return FALSE;
if ((GetTag(OBJECT_SELF) == "altar_calyril") && (GetDeity(GetPCSpeaker()) == "Calyril"))
        return FALSE;
if ((GetTag(OBJECT_SELF) == "altar_somry") && (GetDeity(GetPCSpeaker()) == "Somry"))
        return FALSE;
if ((GetTag(OBJECT_SELF) == "altar_oweodd") && (GetDeity(GetPCSpeaker()) == "Oweodd"))
        return FALSE;
if ((GetTag(OBJECT_SELF) == "altar_shyvaa") && (GetDeity(GetPCSpeaker()) == "Shyvaa"))
        return FALSE;
if ((GetTag(OBJECT_SELF) == "altar_rimyr") && (GetDeity(GetPCSpeaker()) == "Rimyr"))
        return FALSE;
if ((GetTag(OBJECT_SELF) == "altar_unur") && (GetDeity(GetPCSpeaker()) == "Unur"))
        return FALSE;
if ((GetTag(OBJECT_SELF) == "altar_malad") && (GetDeity(GetPCSpeaker()) == "Malad"))
        return FALSE;
if ((GetTag(OBJECT_SELF) == "altar_uronia") && (GetDeity(GetPCSpeaker()) == "Uronia"))
        return FALSE;
if ((GetTag(OBJECT_SELF) == "altar_belulas") && (GetDeity(GetPCSpeaker()) == "Belulas"))
        return FALSE;
if ((GetTag(OBJECT_SELF) == "altar_puril") && (GetDeity(GetPCSpeaker()) == "Puril"))
        return FALSE;
if ((GetTag(OBJECT_SELF) == "altar_torm") && (GetDeity(GetPCSpeaker()) == "Torm"))
        return FALSE;
    return TRUE;
}
