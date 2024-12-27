int StartingConditional()
{
    if ((GetTag(OBJECT_SELF) == "altar_fradoc") && (GetDeity(GetPCSpeaker()) == "Fradoc"))
        return TRUE;
    if ((GetTag(OBJECT_SELF) == "altar_calyril") && (GetDeity(GetPCSpeaker()) == "Calyril"))
        return TRUE;
    if ((GetTag(OBJECT_SELF) == "altar_somry") && (GetDeity(GetPCSpeaker()) == "Somry"))
        return TRUE;
    if ((GetTag(OBJECT_SELF) == "altar_oweodd") && (GetDeity(GetPCSpeaker()) == "Oweodd"))
        return TRUE;
    if ((GetTag(OBJECT_SELF) == "altar_shyvaa") && (GetDeity(GetPCSpeaker()) == "Shyvaa"))
        return TRUE;
    if ((GetTag(OBJECT_SELF) == "altar_rimyr") && (GetDeity(GetPCSpeaker()) == "Rimyr"))
        return TRUE;
    if ((GetTag(OBJECT_SELF) == "altar_unur") && (GetDeity(GetPCSpeaker()) == "Unur"))
        return TRUE;
    if ((GetTag(OBJECT_SELF) == "altar_malad") && (GetDeity(GetPCSpeaker()) == "Malad"))
        return TRUE;
    if ((GetTag(OBJECT_SELF) == "altar_uronia") && (GetDeity(GetPCSpeaker()) == "Uronia"))
        return TRUE;
    if ((GetTag(OBJECT_SELF) == "altar_belulas") && (GetDeity(GetPCSpeaker()) == "Belulas"))
        return TRUE;
    if ((GetTag(OBJECT_SELF) == "altar_puril") && (GetDeity(GetPCSpeaker()) == "Puril"))
        return TRUE;
    if ((GetTag(OBJECT_SELF) == "altar_torm") && (GetDeity(GetPCSpeaker()) == "Torm"))
        return TRUE;
    return FALSE;
}
