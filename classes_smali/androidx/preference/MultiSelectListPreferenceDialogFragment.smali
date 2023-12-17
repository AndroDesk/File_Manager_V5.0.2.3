.class public Landroidx/preference/MultiSelectListPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragment;
.source "MultiSelectListPreferenceDialogFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public i:Ljava/util/HashSet;

.field public j:Z

.field public k:[Ljava/lang/CharSequence;

.field public l:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->i:Ljava/util/HashSet;

    .line 11
    return-void
.end method


# virtual methods
.method public final c(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->a()Landroidx/preference/DialogPreference;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/preference/MultiSelectListPreference;

    .line 7
    if-eqz p1, :cond_17

    .line 9
    iget-boolean p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->j:Z

    .line 11
    if-eqz p1, :cond_17

    .line 13
    iget-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->i:Ljava/util/HashSet;

    .line 15
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_17

    .line 21
    invoke-virtual {v0, p1}, Landroidx/preference/MultiSelectListPreference;->a(Ljava/util/Set;)V

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->j:Z

    .line 27
    return-void
.end method

.method public final d(Landroid/app/AlertDialog$Builder;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    .line 3
    array-length v0, v0

    .line 4
    new-array v1, v0, [Z

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v0, :cond_1b

    .line 9
    iget-object v3, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->i:Ljava/util/HashSet;

    .line 11
    iget-object v4, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    .line 13
    aget-object v4, v4, v2

    .line 15
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result v3

    .line 23
    aput-boolean v3, v1, v2

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_6

    .line 28
    :cond_1b
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->k:[Ljava/lang/CharSequence;

    .line 30
    new-instance v2, Landroidx/preference/MultiSelectListPreferenceDialogFragment$a;

    .line 32
    invoke-direct {v2, p0}, Landroidx/preference/MultiSelectListPreferenceDialogFragment$a;-><init>(Landroidx/preference/MultiSelectListPreferenceDialogFragment;)V

    .line 35
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 38
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_33

    .line 7
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->a()Landroidx/preference/DialogPreference;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/preference/MultiSelectListPreference;

    .line 13
    iget-object v1, p1, Landroidx/preference/MultiSelectListPreference;->g:[Ljava/lang/CharSequence;

    .line 15
    if-eqz v1, :cond_2b

    .line 17
    iget-object v1, p1, Landroidx/preference/MultiSelectListPreference;->h:[Ljava/lang/CharSequence;

    .line 19
    if-eqz v1, :cond_2b

    .line 21
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->i:Ljava/util/HashSet;

    .line 23
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 26
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->i:Ljava/util/HashSet;

    .line 28
    iget-object v2, p1, Landroidx/preference/MultiSelectListPreference;->i:Ljava/util/HashSet;

    .line 30
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 33
    iput-boolean v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->j:Z

    .line 35
    iget-object v0, p1, Landroidx/preference/MultiSelectListPreference;->g:[Ljava/lang/CharSequence;

    .line 37
    iput-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->k:[Ljava/lang/CharSequence;

    .line 39
    iget-object p1, p1, Landroidx/preference/MultiSelectListPreference;->h:[Ljava/lang/CharSequence;

    .line 41
    iput-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    .line 43
    goto :goto_5b

    .line 44
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    const-string v0, "MultiSelectListPreference requires an entries array and an entryValues array."

    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1

    .line 52
    :cond_33
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->i:Ljava/util/HashSet;

    .line 54
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 57
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->i:Ljava/util/HashSet;

    .line 59
    const-string v2, "MultiSelectListPreferenceDialogFragment.values"

    .line 61
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 68
    const-string v1, "MultiSelectListPreferenceDialogFragment.changed"

    .line 70
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 73
    move-result v0

    .line 74
    iput-boolean v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->j:Z

    .line 76
    const-string v0, "MultiSelectListPreferenceDialogFragment.entries"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->k:[Ljava/lang/CharSequence;

    .line 84
    const-string v0, "MultiSelectListPreferenceDialogFragment.entryValues"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    .line 92
    :goto_5b
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->i:Ljava/util/HashSet;

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    const-string v1, "MultiSelectListPreferenceDialogFragment.values"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 16
    iget-boolean v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->j:Z

    .line 18
    const-string v1, "MultiSelectListPreferenceDialogFragment.changed"

    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->k:[Ljava/lang/CharSequence;

    .line 25
    const-string v1, "MultiSelectListPreferenceDialogFragment.entries"

    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    .line 32
    const-string v1, "MultiSelectListPreferenceDialogFragment.entryValues"

    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method
