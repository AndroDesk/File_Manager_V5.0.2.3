.class public Landroidx/preference/ListPreference;
.super Landroidx/preference/DialogPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/ListPreference$a;,
        Landroidx/preference/ListPreference$SavedState;
    }
.end annotation


# instance fields
.field public g:[Ljava/lang/CharSequence;

.field public h:[Ljava/lang/CharSequence;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 14
    sget v0, Landroidx/preference/i;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    sget-object v1, Landroidx/preference/q;->ListPreference:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3
    sget v2, Landroidx/preference/q;->ListPreference_entries:I

    sget v3, Landroidx/preference/q;->ListPreference_android_entries:I

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/preference/ListPreference;->g:[Ljava/lang/CharSequence;

    .line 4
    sget v2, Landroidx/preference/q;->ListPreference_entryValues:I

    sget v3, Landroidx/preference/q;->ListPreference_android_entryValues:I

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/preference/ListPreference;->h:[Ljava/lang/CharSequence;

    .line 5
    sget v2, Landroidx/preference/q;->ListPreference_useSimpleSummaryProvider:I

    invoke-static {v1, v2, v2, v0}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 6
    sget-object v2, Landroidx/preference/ListPreference$a;->a:Landroidx/preference/ListPreference$a;

    if-nez v2, :cond_31

    .line 7
    new-instance v2, Landroidx/preference/ListPreference$a;

    invoke-direct {v2}, Landroidx/preference/ListPreference$a;-><init>()V

    sput-object v2, Landroidx/preference/ListPreference$a;->a:Landroidx/preference/ListPreference$a;

    .line 8
    :cond_31
    sget-object v2, Landroidx/preference/ListPreference$a;->a:Landroidx/preference/ListPreference$a;

    .line 9
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setSummaryProvider(Landroidx/preference/Preference$f;)V

    .line 10
    :cond_36
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    sget-object v1, Landroidx/preference/q;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    sget p2, Landroidx/preference/q;->Preference_summary:I

    sget p3, Landroidx/preference/q;->Preference_android_summary:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/ListPreference;->j:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/ListPreference;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_f

    .line 9
    iget-object v1, p0, Landroidx/preference/ListPreference;->g:[Ljava/lang/CharSequence;

    .line 11
    if-eqz v1, :cond_f

    .line 13
    aget-object v0, v1, v0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    return-object v0
.end method

.method public final findIndexOfValue(Ljava/lang/String;)I
    .registers 4

    .line 1
    if-eqz p1, :cond_1d

    .line 3
    iget-object v0, p0, Landroidx/preference/ListPreference;->h:[Ljava/lang/CharSequence;

    .line 5
    if-eqz v0, :cond_1d

    .line 7
    array-length v0, v0

    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 10
    :goto_9
    if-ltz v0, :cond_1d

    .line 12
    iget-object v1, p0, Landroidx/preference/ListPreference;->h:[Ljava/lang/CharSequence;

    .line 14
    aget-object v1, v1, v0

    .line 16
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1a

    .line 26
    return v0

    .line 27
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    .line 29
    goto :goto_9

    .line 30
    :cond_1d
    const/4 p1, -0x1

    .line 31
    return p1
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$f;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$f;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p0}, Landroidx/preference/Preference$f;->a(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->a()Ljava/lang/CharSequence;

    .line 19
    move-result-object v0

    .line 20
    invoke-super {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Landroidx/preference/ListPreference;->j:Ljava/lang/String;

    .line 26
    if-nez v2, :cond_1c

    .line 28
    return-object v1

    .line 29
    :cond_1c
    const/4 v3, 0x1

    .line 30
    new-array v3, v3, [Ljava/lang/Object;

    .line 32
    const/4 v4, 0x0

    .line 33
    if-nez v0, :cond_24

    .line 35
    const-string v0, ""

    .line 37
    :cond_24
    aput-object v0, v3, v4

    .line 39
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_31

    .line 49
    return-object v1

    .line 50
    :cond_31
    const-string v1, "ListPreference"

    .line 52
    const-string v2, "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead."

    .line 54
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-object v0
.end method

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
    const-class v1, Landroidx/preference/ListPreference$SavedState;

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
    check-cast p1, Landroidx/preference/ListPreference$SavedState;

    .line 18
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 21
    move-result-object v0

    .line 22
    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 25
    iget-object p1, p1, Landroidx/preference/ListPreference$SavedState;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

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
    new-instance v1, Landroidx/preference/ListPreference$SavedState;

    .line 14
    invoke-direct {v1, v0}, Landroidx/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 17
    iget-object v0, p0, Landroidx/preference/ListPreference;->i:Ljava/lang/String;

    .line 19
    iput-object v0, v1, Landroidx/preference/ListPreference$SavedState;->a:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public final setSummary(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 4
    if-nez p1, :cond_9

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/preference/ListPreference;->j:Ljava/lang/String;

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroidx/preference/ListPreference;->j:Ljava/lang/String;

    .line 16
    :goto_f
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/preference/ListPreference;->i:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    if-nez v0, :cond_e

    .line 11
    iget-boolean v2, p0, Landroidx/preference/ListPreference;->k:Z

    .line 13
    if-nez v2, :cond_1a

    .line 15
    :cond_e
    iput-object p1, p0, Landroidx/preference/ListPreference;->i:Ljava/lang/String;

    .line 17
    iput-boolean v1, p0, Landroidx/preference/ListPreference;->k:Z

    .line 19
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 27
    :cond_1a
    return-void
.end method
