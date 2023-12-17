.class public Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "MultiSelectListPreferenceDialogFragmentCompat.java"


# static fields
.field private static final SAVE_STATE_CHANGED:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragmentCompat.changed"

.field private static final SAVE_STATE_ENTRIES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragmentCompat.entries"

.field private static final SAVE_STATE_ENTRY_VALUES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

.field private static final SAVE_STATE_VALUES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragmentCompat.values"


# instance fields
.field public mEntries:[Ljava/lang/CharSequence;

.field public mEntryValues:[Ljava/lang/CharSequence;

.field public mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPreferenceChanged:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    .line 11
    return-void
.end method

.method private getListPreference()Landroidx/preference/MultiSelectListPreference;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/preference/MultiSelectListPreference;

    .line 7
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;
    .registers 4

    .line 1
    new-instance v0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;

    .line 3
    invoke-direct {v0}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;-><init>()V

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
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_31

    .line 7
    invoke-direct {p0}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->getListPreference()Landroidx/preference/MultiSelectListPreference;

    .line 10
    move-result-object p1

    .line 11
    iget-object v1, p1, Landroidx/preference/MultiSelectListPreference;->g:[Ljava/lang/CharSequence;

    .line 13
    if-eqz v1, :cond_29

    .line 15
    iget-object v1, p1, Landroidx/preference/MultiSelectListPreference;->h:[Ljava/lang/CharSequence;

    .line 17
    if-eqz v1, :cond_29

    .line 19
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    .line 21
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 24
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    .line 26
    iget-object v2, p1, Landroidx/preference/MultiSelectListPreference;->i:Ljava/util/HashSet;

    .line 28
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 31
    iput-boolean v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    .line 33
    iget-object v0, p1, Landroidx/preference/MultiSelectListPreference;->g:[Ljava/lang/CharSequence;

    .line 35
    iput-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 37
    iget-object p1, p1, Landroidx/preference/MultiSelectListPreference;->h:[Ljava/lang/CharSequence;

    .line 39
    iput-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 41
    goto :goto_59

    .line 42
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    const-string v0, "MultiSelectListPreference requires an entries array and an entryValues array."

    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    :cond_31
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    .line 52
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 55
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    .line 57
    const-string v2, "MultiSelectListPreferenceDialogFragmentCompat.values"

    .line 59
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 66
    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 71
    move-result v0

    .line 72
    iput-boolean v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    .line 74
    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 82
    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 90
    :goto_59
    return-void
.end method

.method public onDialogClosed(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_17

    .line 3
    iget-boolean p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    .line 5
    if-eqz p1, :cond_17

    .line 7
    invoke-direct {p0}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->getListPreference()Landroidx/preference/MultiSelectListPreference;

    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    .line 13
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_17

    .line 19
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    .line 21
    invoke-virtual {p1, v0}, Landroidx/preference/MultiSelectListPreference;->a(Ljava/util/Set;)V

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    .line 27
    return-void
.end method

.method public onPrepareDialogBuilder(Landroidx/appcompat/app/f$a;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/f$a;)V

    .line 4
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 6
    array-length v0, v0

    .line 7
    new-array v1, v0, [Z

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    if-ge v2, v0, :cond_1e

    .line 12
    iget-object v3, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    .line 14
    iget-object v4, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 16
    aget-object v4, v4, v2

    .line 18
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result v3

    .line 26
    aput-boolean v3, v1, v2

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_9

    .line 31
    :cond_1e
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 33
    new-instance v2, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat$a;

    .line 35
    invoke-direct {v2, p0}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat$a;-><init>(Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;)V

    .line 38
    invoke-virtual {p1, v0, v1, v2}, Landroidx/appcompat/app/f$a;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/f$a;

    .line 41
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.values"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 16
    iget-boolean v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    .line 18
    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 25
    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 32
    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method
