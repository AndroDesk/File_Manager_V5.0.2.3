.class public Landroidx/preference/ListPreferenceDialogFragmentCompat;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "ListPreferenceDialogFragmentCompat.java"


# static fields
.field private static final SAVE_STATE_ENTRIES:Ljava/lang/String; = "ListPreferenceDialogFragment.entries"

.field private static final SAVE_STATE_ENTRY_VALUES:Ljava/lang/String; = "ListPreferenceDialogFragment.entryValues"

.field private static final SAVE_STATE_INDEX:Ljava/lang/String; = "ListPreferenceDialogFragment.index"


# instance fields
.field public mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    .line 4
    return-void
.end method

.method private getListPreference()Landroidx/preference/ListPreference;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/preference/ListPreference;

    .line 7
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragmentCompat;
    .registers 4

    .line 1
    new-instance v0, Landroidx/preference/ListPreferenceDialogFragmentCompat;

    .line 3
    invoke-direct {v0}, Landroidx/preference/ListPreferenceDialogFragmentCompat;-><init>()V

    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 12
    const-string v2, "key"

    .line 14
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 20
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 4
    if-nez p1, :cond_2a

    .line 6
    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->getListPreference()Landroidx/preference/ListPreference;

    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p1, Landroidx/preference/ListPreference;->g:[Ljava/lang/CharSequence;

    .line 12
    if-eqz v0, :cond_22

    .line 14
    iget-object v0, p1, Landroidx/preference/ListPreference;->h:[Ljava/lang/CharSequence;

    .line 16
    if-eqz v0, :cond_22

    .line 18
    iget-object v0, p1, Landroidx/preference/ListPreference;->i:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    .line 23
    move-result v0

    .line 24
    iput v0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    .line 26
    iget-object v0, p1, Landroidx/preference/ListPreference;->g:[Ljava/lang/CharSequence;

    .line 28
    iput-object v0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 30
    iget-object p1, p1, Landroidx/preference/ListPreference;->h:[Ljava/lang/CharSequence;

    .line 32
    iput-object p1, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 34
    goto :goto_43

    .line 35
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    const-string v0, "ListPreference requires an entries array and an entryValues array."

    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1

    .line 43
    :cond_2a
    const/4 v0, 0x0

    .line 44
    const-string v1, "ListPreferenceDialogFragment.index"

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 49
    move-result v0

    .line 50
    iput v0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    .line 52
    const-string v0, "ListPreferenceDialogFragment.entries"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 60
    const-string v0, "ListPreferenceDialogFragment.entryValues"

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 68
    :goto_43
    return-void
.end method

.method public onDialogClosed(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_1b

    .line 3
    iget p1, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    .line 5
    if-ltz p1, :cond_1b

    .line 7
    iget-object v0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 9
    aget-object p1, v0, p1

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->getListPreference()Landroidx/preference/ListPreference;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1b

    .line 25
    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 28
    :cond_1b
    return-void
.end method

.method public onPrepareDialogBuilder(Landroidx/appcompat/app/f$a;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/f$a;)V

    .line 4
    iget-object v0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 6
    iget v1, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    .line 8
    new-instance v2, Landroidx/preference/ListPreferenceDialogFragmentCompat$a;

    .line 10
    invoke-direct {v2, p0}, Landroidx/preference/ListPreferenceDialogFragmentCompat$a;-><init>(Landroidx/preference/ListPreferenceDialogFragmentCompat;)V

    .line 13
    invoke-virtual {p1, v0, v1, v2}, Landroidx/appcompat/app/f$a;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/f$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;

    .line 20
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget v0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    .line 6
    const-string v1, "ListPreferenceDialogFragment.index"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    iget-object v0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 13
    const-string v1, "ListPreferenceDialogFragment.entries"

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 20
    const-string v1, "ListPreferenceDialogFragment.entryValues"

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method
