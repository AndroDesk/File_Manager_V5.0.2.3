.class public Landroidx/preference/ListPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragment;
.source "ListPreferenceDialogFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public i:I

.field public j:[Ljava/lang/CharSequence;

.field public k:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragment;-><init>()V

    .line 4
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
    check-cast v0, Landroidx/preference/ListPreference;

    .line 7
    if-eqz p1, :cond_1d

    .line 9
    iget p1, p0, Landroidx/preference/ListPreferenceDialogFragment;->i:I

    .line 11
    if-ltz p1, :cond_1d

    .line 13
    iget-object v1, p0, Landroidx/preference/ListPreferenceDialogFragment;->k:[Ljava/lang/CharSequence;

    .line 15
    aget-object p1, v1, p1

    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1d

    .line 27
    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 30
    :cond_1d
    return-void
.end method

.method public final d(Landroid/app/AlertDialog$Builder;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->j:[Ljava/lang/CharSequence;

    .line 3
    iget v1, p0, Landroidx/preference/ListPreferenceDialogFragment;->i:I

    .line 5
    new-instance v2, Landroidx/preference/ListPreferenceDialogFragment$a;

    .line 7
    invoke-direct {v2, p0}, Landroidx/preference/ListPreferenceDialogFragment$a;-><init>(Landroidx/preference/ListPreferenceDialogFragment;)V

    .line 10
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 17
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    if-nez p1, :cond_2c

    .line 6
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->a()Landroidx/preference/DialogPreference;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroidx/preference/ListPreference;

    .line 12
    iget-object v0, p1, Landroidx/preference/ListPreference;->g:[Ljava/lang/CharSequence;

    .line 14
    if-eqz v0, :cond_24

    .line 16
    iget-object v0, p1, Landroidx/preference/ListPreference;->h:[Ljava/lang/CharSequence;

    .line 18
    if-eqz v0, :cond_24

    .line 20
    iget-object v0, p1, Landroidx/preference/ListPreference;->i:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    .line 25
    move-result v0

    .line 26
    iput v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->i:I

    .line 28
    iget-object v0, p1, Landroidx/preference/ListPreference;->g:[Ljava/lang/CharSequence;

    .line 30
    iput-object v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->j:[Ljava/lang/CharSequence;

    .line 32
    iget-object p1, p1, Landroidx/preference/ListPreference;->h:[Ljava/lang/CharSequence;

    .line 34
    iput-object p1, p0, Landroidx/preference/ListPreferenceDialogFragment;->k:[Ljava/lang/CharSequence;

    .line 36
    goto :goto_45

    .line 37
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    const-string v0, "ListPreference requires an entries array and an entryValues array."

    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1

    .line 45
    :cond_2c
    const/4 v0, 0x0

    .line 46
    const-string v1, "ListPreferenceDialogFragment.index"

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 51
    move-result v0

    .line 52
    iput v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->i:I

    .line 54
    const-string v0, "ListPreferenceDialogFragment.entries"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->j:[Ljava/lang/CharSequence;

    .line 62
    const-string v0, "ListPreferenceDialogFragment.entryValues"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Landroidx/preference/ListPreferenceDialogFragment;->k:[Ljava/lang/CharSequence;

    .line 70
    :goto_45
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->i:I

    .line 6
    const-string v1, "ListPreferenceDialogFragment.index"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    iget-object v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->j:[Ljava/lang/CharSequence;

    .line 13
    const-string v1, "ListPreferenceDialogFragment.entries"

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->k:[Ljava/lang/CharSequence;

    .line 20
    const-string v1, "ListPreferenceDialogFragment.entryValues"

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method
