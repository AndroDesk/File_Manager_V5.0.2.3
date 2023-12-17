.class Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;
.super Ljava/lang/Object;
.source "PreferenceDialogFragmentCompatDelegate.java"


# instance fields
.field private mFragmentCompat:Landroidx/preference/PreferenceDialogFragmentCompat;

.field private mInternal:Lmiuix/preference/IPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Lmiuix/preference/IPreferenceDialogFragment;Landroidx/preference/PreferenceDialogFragmentCompat;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mInternal:Lmiuix/preference/IPreferenceDialogFragment;

    .line 6
    iput-object p2, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mFragmentCompat:Landroidx/preference/PreferenceDialogFragmentCompat;

    .line 8
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x5

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 9
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    .line 1
    iget-object p1, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mFragmentCompat:Landroidx/preference/PreferenceDialogFragmentCompat;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mFragmentCompat:Landroidx/preference/PreferenceDialogFragmentCompat;

    .line 9
    invoke-virtual {v0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 15
    invoke-direct {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v2, Lmiuix/preference/BuilderDelegate;

    .line 20
    invoke-direct {v2, p1, v1}, Lmiuix/preference/BuilderDelegate;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/AlertDialog$Builder;)V

    .line 23
    iget-object v3, v0, Landroidx/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    .line 25
    invoke-virtual {v2, v3}, Lmiuix/preference/BuilderDelegate;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/f$a;

    .line 28
    iget-object v3, v0, Landroidx/preference/DialogPreference;->c:Landroid/graphics/drawable/Drawable;

    .line 30
    invoke-virtual {v2, v3}, Lmiuix/preference/BuilderDelegate;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/f$a;

    .line 33
    iget-object v3, v0, Landroidx/preference/DialogPreference;->d:Ljava/lang/String;

    .line 35
    iget-object v4, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mFragmentCompat:Landroidx/preference/PreferenceDialogFragmentCompat;

    .line 37
    invoke-virtual {v2, v3, v4}, Lmiuix/preference/BuilderDelegate;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;

    .line 40
    iget-object v3, v0, Landroidx/preference/DialogPreference;->e:Ljava/lang/String;

    .line 42
    iget-object v4, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mFragmentCompat:Landroidx/preference/PreferenceDialogFragmentCompat;

    .line 44
    invoke-virtual {v2, v3, v4}, Lmiuix/preference/BuilderDelegate;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;

    .line 47
    iget-object v3, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mInternal:Lmiuix/preference/IPreferenceDialogFragment;

    .line 49
    invoke-interface {v3, p1}, Lmiuix/preference/IPreferenceDialogFragment;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_3f

    .line 55
    iget-object v0, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mInternal:Lmiuix/preference/IPreferenceDialogFragment;

    .line 57
    invoke-interface {v0, p1}, Lmiuix/preference/IPreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 60
    invoke-virtual {v2, p1}, Lmiuix/preference/BuilderDelegate;->setView(Landroid/view/View;)Landroidx/appcompat/app/f$a;

    .line 63
    goto :goto_44

    .line 64
    :cond_3f
    iget-object p1, v0, Landroidx/preference/DialogPreference;->b:Ljava/lang/String;

    .line 66
    invoke-virtual {v2, p1}, Lmiuix/preference/BuilderDelegate;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/f$a;

    .line 69
    :goto_44
    iget-object p1, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mInternal:Lmiuix/preference/IPreferenceDialogFragment;

    .line 71
    invoke-interface {p1, v1}, Lmiuix/preference/IPreferenceDialogFragment;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V

    .line 74
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 77
    move-result-object p1

    .line 78
    iget-object v0, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mInternal:Lmiuix/preference/IPreferenceDialogFragment;

    .line 80
    invoke-interface {v0}, Lmiuix/preference/IPreferenceDialogFragment;->needInputMethod()Z

    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_58

    .line 86
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->requestInputMethod(Landroid/app/Dialog;)V

    .line 89
    :cond_58
    return-object p1
.end method
