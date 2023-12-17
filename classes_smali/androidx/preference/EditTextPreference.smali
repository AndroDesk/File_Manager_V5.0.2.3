.class public Landroidx/preference/EditTextPreference;
.super Landroidx/preference/DialogPreference;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/EditTextPreference$b;,
        Landroidx/preference/EditTextPreference$SavedState;,
        Landroidx/preference/EditTextPreference$a;
    }
.end annotation


# instance fields
.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 10
    sget v0, Landroidx/preference/i;->editTextPreferenceStyle:I

    const v1, 0x1010092

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    sget-object v0, Landroidx/preference/q;->EditTextPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Landroidx/preference/q;->EditTextPreference_useSimpleSummaryProvider:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 4
    sget-object p2, Landroidx/preference/EditTextPreference$b;->a:Landroidx/preference/EditTextPreference$b;

    if-nez p2, :cond_1d

    .line 5
    new-instance p2, Landroidx/preference/EditTextPreference$b;

    invoke-direct {p2}, Landroidx/preference/EditTextPreference$b;-><init>()V

    sput-object p2, Landroidx/preference/EditTextPreference$b;->a:Landroidx/preference/EditTextPreference$b;

    .line 6
    :cond_1d
    sget-object p2, Landroidx/preference/EditTextPreference$b;->a:Landroidx/preference/EditTextPreference$b;

    .line 7
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSummaryProvider(Landroidx/preference/Preference$f;)V

    .line 8
    :cond_22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_1e

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-class v1, Landroidx/preference/EditTextPreference$SavedState;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_1e

    .line 16
    :cond_f
    check-cast p1, Landroidx/preference/EditTextPreference$SavedState;

    .line 18
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 21
    move-result-object v0

    .line 22
    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 25
    iget-object p1, p1, Landroidx/preference/EditTextPreference$SavedState;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 30
    return-void

    .line 31
    :cond_1e
    :goto_1e
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 34
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_b

    .line 11
    return-object v0

    .line 12
    :cond_b
    new-instance v1, Landroidx/preference/EditTextPreference$SavedState;

    .line 14
    invoke-direct {v1, v0}, Landroidx/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 17
    iget-object v0, p0, Landroidx/preference/EditTextPreference;->g:Ljava/lang/String;

    .line 19
    iput-object v0, v1, Landroidx/preference/EditTextPreference$SavedState;->a:Ljava/lang/String;

    .line 21
    return-object v1
.end method

.method public final onSetInitialValue(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public setOnBindEditTextListener(Landroidx/preference/EditTextPreference$a;)V
    .registers 2

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->shouldDisableDependents()Z

    .line 4
    move-result v0

    .line 5
    iput-object p1, p0, Landroidx/preference/EditTextPreference;->g:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    .line 10
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->shouldDisableDependents()Z

    .line 13
    move-result p1

    .line 14
    if-eq p1, v0, :cond_12

    .line 16
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 19
    :cond_12
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 22
    return-void
.end method

.method public final shouldDisableDependents()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/EditTextPreference;->g:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_11

    .line 9
    invoke-super {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 19
    :goto_12
    return v0
.end method
