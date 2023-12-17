.class public abstract Landroidx/preference/PreferenceDialogFragmentCompat;
.super Landroidx/fragment/app/DialogFragment;
.source "PreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceDialogFragmentCompat$a;
    }
.end annotation


# static fields
.field public static final ARG_KEY:Ljava/lang/String; = "key"

.field private static final SAVE_STATE_ICON:Ljava/lang/String; = "PreferenceDialogFragment.icon"

.field private static final SAVE_STATE_LAYOUT:Ljava/lang/String; = "PreferenceDialogFragment.layout"

.field private static final SAVE_STATE_MESSAGE:Ljava/lang/String; = "PreferenceDialogFragment.message"

.field private static final SAVE_STATE_NEGATIVE_TEXT:Ljava/lang/String; = "PreferenceDialogFragment.negativeText"

.field private static final SAVE_STATE_POSITIVE_TEXT:Ljava/lang/String; = "PreferenceDialogFragment.positiveText"

.field private static final SAVE_STATE_TITLE:Ljava/lang/String; = "PreferenceDialogFragment.title"


# instance fields
.field private mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDialogLayoutRes:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mPreference:Landroidx/preference/DialogPreference;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 4
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object p1

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v1, 0x1e

    .line 9
    if-lt v0, v1, :cond_e

    .line 11
    invoke-static {p1}, Landroidx/preference/PreferenceDialogFragmentCompat$a;->a(Landroid/view/Window;)V

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->scheduleShowSoftInput()V

    .line 18
    :goto_11
    return-void
.end method


# virtual methods
.method public getPreference()Landroidx/preference/DialogPreference;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    .line 3
    if-nez v0, :cond_1c

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "key"

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/preference/DialogPreference$a;

    .line 21
    invoke-interface {v1, v0}, Landroidx/preference/DialogPreference$a;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/preference/DialogPreference;

    .line 27
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    .line 29
    :cond_1c
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    .line 31
    return-object v0
.end method

.method public needInputMethod()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onBindDialogView(Landroid/view/View;)V
    .registers 5

    .line 1
    const v0, 0x102000b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_27

    .line 10
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    .line 12
    const/16 v1, 0x8

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1e

    .line 20
    instance-of v1, p1, Landroid/widget/TextView;

    .line 22
    if-eqz v1, :cond_1d

    .line 24
    move-object v1, p1

    .line 25
    check-cast v1, Landroid/widget/TextView;

    .line 27
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_1d
    const/4 v1, 0x0

    .line 31
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 34
    move-result v0

    .line 35
    if-eq v0, v1, :cond_27

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_27
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iput p2, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Landroidx/preference/DialogPreference$a;

    .line 10
    if-eqz v1, :cond_af

    .line 12
    check-cast v0, Landroidx/preference/DialogPreference$a;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 17
    move-result-object v1

    .line 18
    const-string v2, "key"

    .line 20
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez p1, :cond_71

    .line 27
    invoke-interface {v0, v1}, Landroidx/preference/DialogPreference$a;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroidx/preference/DialogPreference;

    .line 33
    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    .line 35
    iget-object v0, p1, Landroidx/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    .line 37
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    .line 39
    iget-object v0, p1, Landroidx/preference/DialogPreference;->d:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 43
    iget-object v0, p1, Landroidx/preference/DialogPreference;->e:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 47
    iget-object v0, p1, Landroidx/preference/DialogPreference;->b:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    .line 51
    iget v0, p1, Landroidx/preference/DialogPreference;->f:I

    .line 53
    iput v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    .line 55
    iget-object p1, p1, Landroidx/preference/DialogPreference;->c:Landroid/graphics/drawable/Drawable;

    .line 57
    if-eqz p1, :cond_6c

    .line 59
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 61
    if-eqz v0, :cond_3f

    .line 63
    goto :goto_6c

    .line 64
    :cond_3f
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 67
    move-result v0

    .line 68
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 71
    move-result v1

    .line 72
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 74
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Landroid/graphics/Canvas;

    .line 80
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 86
    move-result v3

    .line 87
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 90
    move-result v4

    .line 91
    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 102
    move-result-object v1

    .line 103
    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 106
    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 108
    goto :goto_ae

    .line 109
    :cond_6c
    :goto_6c
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 111
    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 113
    goto :goto_ae

    .line 114
    :cond_71
    const-string v0, "PreferenceDialogFragment.title"

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    .line 122
    const-string v0, "PreferenceDialogFragment.positiveText"

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 130
    const-string v0, "PreferenceDialogFragment.negativeText"

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 135
    move-result-object v0

    .line 136
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 138
    const-string v0, "PreferenceDialogFragment.message"

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 143
    move-result-object v0

    .line 144
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    .line 146
    const-string v0, "PreferenceDialogFragment.layout"

    .line 148
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 151
    move-result v0

    .line 152
    iput v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    .line 154
    const-string v0, "PreferenceDialogFragment.icon"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Landroid/graphics/Bitmap;

    .line 162
    if-eqz p1, :cond_ae

    .line 164
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 169
    move-result-object v1

    .line 170
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 173
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 175
    :cond_ae
    :goto_ae
    return-void

    .line 176
    :cond_af
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 178
    const-string v0, "Target fragment must implement TargetFragment interface"

    .line 180
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    throw p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3

    .line 1
    const/4 p1, -0x2

    .line 2
    iput p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 4
    new-instance p1, Landroidx/appcompat/app/f$a;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroidx/appcompat/app/f$a;-><init>(Landroid/content/Context;)V

    .line 13
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/f$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/f$a;

    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 21
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/f$a;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/f$a;

    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/f$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;

    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/f$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_35

    .line 47
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    .line 50
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/f$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/f$a;

    .line 53
    goto :goto_3a

    .line 54
    :cond_35
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    .line 56
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/f$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/f$a;

    .line 59
    :goto_3a
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/f$a;)V

    .line 62
    invoke-virtual {p1}, Landroidx/appcompat/app/f$a;->create()Landroidx/appcompat/app/f;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->needInputMethod()Z

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4a

    .line 72
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->requestInputMethod(Landroid/app/Dialog;)V

    .line 75
    :cond_4a
    return-object p1
.end method

.method public onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .registers 4

    .line 1
    iget p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_6

    .line 6
    return-object v0

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public abstract onDialogClosed(Z)V
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 4
    iget p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 6
    const/4 v0, -0x1

    .line 7
    if-ne p1, v0, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_b
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onDialogClosed(Z)V

    .line 15
    return-void
.end method

.method public onPrepareDialogBuilder(Landroidx/appcompat/app/f$a;)V
    .registers 2

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    .line 6
    const-string v1, "PreferenceDialogFragment.title"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 13
    const-string v1, "PreferenceDialogFragment.positiveText"

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 20
    const-string v1, "PreferenceDialogFragment.negativeText"

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    .line 27
    const-string v1, "PreferenceDialogFragment.message"

    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 32
    iget v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    .line 34
    const-string v1, "PreferenceDialogFragment.layout"

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 39
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 41
    if-eqz v0, :cond_33

    .line 43
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 46
    move-result-object v0

    .line 47
    const-string v1, "PreferenceDialogFragment.icon"

    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    :cond_33
    return-void
.end method

.method public scheduleShowSoftInput()V
    .registers 1

    return-void
.end method
