.class public Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;
.super Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
.source "EditTextPreferenceDialogFragmentCompat.java"


# instance fields
.field private mDelegate:Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;

.field private mImpl:Lmiuix/preference/IPreferenceDialogFragment;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    .line 4
    new-instance v0, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat$1;

    .line 6
    invoke-direct {v0, p0}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat$1;-><init>(Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;)V

    .line 9
    iput-object v0, p0, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->mImpl:Lmiuix/preference/IPreferenceDialogFragment;

    .line 11
    new-instance v1, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;

    .line 13
    invoke-direct {v1, v0, p0}, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;-><init>(Lmiuix/preference/IPreferenceDialogFragment;Landroidx/preference/PreferenceDialogFragmentCompat;)V

    .line 16
    iput-object v1, p0, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->mDelegate:Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;

    .line 18
    return-void
.end method

.method public static synthetic access$000(Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;

    .line 3
    invoke-direct {v0}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

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
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->mDelegate:Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final onPrepareDialogBuilder(Landroidx/appcompat/app/f$a;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "using miuix builder instead"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .registers 4

    .line 2
    new-instance v0, Lmiuix/preference/BuilderDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiuix/preference/BuilderDelegate;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/AlertDialog$Builder;)V

    invoke-super {p0, v0}, Landroidx/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/f$a;)V

    return-void
.end method
