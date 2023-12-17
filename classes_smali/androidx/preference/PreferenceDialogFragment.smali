.class public abstract Landroidx/preference/PreferenceDialogFragment;
.super Landroid/app/DialogFragment;
.source "PreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceDialogFragment$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Landroidx/preference/DialogPreference;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:I

.field public g:Landroid/graphics/drawable/BitmapDrawable;

.field public h:I


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Landroidx/preference/DialogPreference;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->a:Landroidx/preference/DialogPreference;

    .line 3
    if-nez v0, :cond_1c

    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "key"

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

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
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->a:Landroidx/preference/DialogPreference;

    .line 29
    :cond_1c
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->a:Landroidx/preference/DialogPreference;

    .line 31
    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const v0, 0x102000b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_27

    .line 10
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->e:Ljava/lang/CharSequence;

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

.method public abstract c(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public d(Landroid/app/AlertDialog$Builder;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p2, p0, Landroidx/preference/PreferenceDialogFragment;->h:I

    .line 3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Landroidx/preference/DialogPreference$a;

    .line 10
    if-eqz v1, :cond_af

    .line 12
    check-cast v0, Landroidx/preference/DialogPreference$a;

    .line 14
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

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
    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragment;->a:Landroidx/preference/DialogPreference;

    .line 35
    iget-object v0, p1, Landroidx/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    .line 37
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->b:Ljava/lang/CharSequence;

    .line 39
    iget-object v0, p1, Landroidx/preference/DialogPreference;->d:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->c:Ljava/lang/CharSequence;

    .line 43
    iget-object v0, p1, Landroidx/preference/DialogPreference;->e:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->d:Ljava/lang/CharSequence;

    .line 47
    iget-object v0, p1, Landroidx/preference/DialogPreference;->b:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->e:Ljava/lang/CharSequence;

    .line 51
    iget v0, p1, Landroidx/preference/DialogPreference;->f:I

    .line 53
    iput v0, p0, Landroidx/preference/PreferenceDialogFragment;->f:I

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
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 102
    move-result-object v1

    .line 103
    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 106
    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragment;->g:Landroid/graphics/drawable/BitmapDrawable;

    .line 108
    goto :goto_ae

    .line 109
    :cond_6c
    :goto_6c
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 111
    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragment;->g:Landroid/graphics/drawable/BitmapDrawable;

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
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->b:Ljava/lang/CharSequence;

    .line 122
    const-string v0, "PreferenceDialogFragment.positiveText"

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->c:Ljava/lang/CharSequence;

    .line 130
    const-string v0, "PreferenceDialogFragment.negativeText"

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 135
    move-result-object v0

    .line 136
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->d:Ljava/lang/CharSequence;

    .line 138
    const-string v0, "PreferenceDialogFragment.message"

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 143
    move-result-object v0

    .line 144
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->e:Ljava/lang/CharSequence;

    .line 146
    const-string v0, "PreferenceDialogFragment.layout"

    .line 148
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 151
    move-result v0

    .line 152
    iput v0, p0, Landroidx/preference/PreferenceDialogFragment;->f:I

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
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 169
    move-result-object v1

    .line 170
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 173
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->g:Landroid/graphics/drawable/BitmapDrawable;

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

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, -0x2

    .line 6
    iput v0, p0, Landroidx/preference/PreferenceDialogFragment;->h:I

    .line 8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 10
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 13
    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragment;->b:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragment;->g:Landroid/graphics/drawable/BitmapDrawable;

    .line 21
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragment;->c:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragment;->d:Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    move-result-object v0

    .line 37
    iget v1, p0, Landroidx/preference/PreferenceDialogFragment;->f:I

    .line 39
    const/4 v2, 0x0

    .line 40
    if-nez v1, :cond_2a

    .line 42
    goto :goto_32

    .line 43
    :cond_2a
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    move-result-object v2

    .line 51
    :goto_32
    if-eqz v2, :cond_3b

    .line 53
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceDialogFragment;->b(Landroid/view/View;)V

    .line 56
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 59
    goto :goto_40

    .line 60
    :cond_3b
    iget-object p1, p0, Landroidx/preference/PreferenceDialogFragment;->e:Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 65
    :goto_40
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceDialogFragment;->d(Landroid/app/AlertDialog$Builder;)V

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 71
    move-result-object p1

    .line 72
    instance-of v0, p0, Landroidx/preference/EditTextPreferenceDialogFragment;

    .line 74
    if-eqz v0, :cond_5d

    .line 76
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 79
    move-result-object v0

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    const/16 v2, 0x1e

    .line 84
    if-lt v1, v2, :cond_59

    .line 86
    invoke-static {v0}, Landroidx/preference/PreferenceDialogFragment$a;->a(Landroid/view/Window;)V

    .line 89
    goto :goto_5d

    .line 90
    :cond_59
    const/4 v1, 0x5

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 94
    :cond_5d
    :goto_5d
    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 4
    iget p1, p0, Landroidx/preference/PreferenceDialogFragment;->h:I

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
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->c(Z)V

    .line 15
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->b:Ljava/lang/CharSequence;

    .line 6
    const-string v1, "PreferenceDialogFragment.title"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->c:Ljava/lang/CharSequence;

    .line 13
    const-string v1, "PreferenceDialogFragment.positiveText"

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->d:Ljava/lang/CharSequence;

    .line 20
    const-string v1, "PreferenceDialogFragment.negativeText"

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->e:Ljava/lang/CharSequence;

    .line 27
    const-string v1, "PreferenceDialogFragment.message"

    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 32
    iget v0, p0, Landroidx/preference/PreferenceDialogFragment;->f:I

    .line 34
    const-string v1, "PreferenceDialogFragment.layout"

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 39
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragment;->g:Landroid/graphics/drawable/BitmapDrawable;

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
