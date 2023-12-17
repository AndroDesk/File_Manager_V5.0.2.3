.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/Preference$e;,
        Landroidx/preference/Preference$BaseSavedState;,
        Landroidx/preference/Preference$f;,
        Landroidx/preference/Preference$b;,
        Landroidx/preference/Preference$d;,
        Landroidx/preference/Preference$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLIPBOARD_ID:Ljava/lang/String; = "Preference"

.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mAllowDividerAbove:Z

.field private mAllowDividerBelow:Z

.field private mBaseMethodCalled:Z

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private mCopyingEnabled:Z

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasId:Z

.field private mHasSingleLineTitleAttr:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconSpaceReserved:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Landroidx/preference/Preference$b;

.field private mOnChangeListener:Landroidx/preference/Preference$c;

.field private mOnClickListener:Landroidx/preference/Preference$d;

.field private mOnCopyListener:Landroidx/preference/Preference$e;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mParentGroup:Landroidx/preference/PreferenceGroup;

.field private mPersistent:Z

.field private mPreferenceDataStore:Landroidx/preference/b;

.field private mPreferenceManager:Landroidx/preference/f;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSingleLineTitle:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryProvider:Landroidx/preference/Preference$f;

.field private mTitle:Ljava/lang/CharSequence;

.field private mViewId:I

.field private mVisible:Z

.field private mWasDetached:Z

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 45
    sget v0, Landroidx/preference/i;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Landroidx/preference/Preference;->mOrder:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Landroidx/preference/Preference;->mViewId:I

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 5
    iput-boolean v2, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 6
    iput-boolean v2, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 7
    iput-boolean v2, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 8
    iput-boolean v2, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 9
    iput-boolean v2, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 10
    iput-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 11
    iput-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 12
    iput-boolean v2, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 13
    iput-boolean v2, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 14
    sget v3, Landroidx/preference/n;->preference:I

    iput v3, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 15
    new-instance v4, Landroidx/preference/Preference$a;

    invoke-direct {v4, p0}, Landroidx/preference/Preference$a;-><init>(Landroidx/preference/Preference;)V

    iput-object v4, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 16
    iput-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 17
    sget-object v4, Landroidx/preference/q;->Preference:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 18
    sget p2, Landroidx/preference/q;->Preference_icon:I

    sget p3, Landroidx/preference/q;->Preference_android_icon:I

    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 19
    sget p2, Landroidx/preference/q;->Preference_key:I

    sget p3, Landroidx/preference/q;->Preference_android_key:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 20
    sget p2, Landroidx/preference/q;->Preference_title:I

    sget p3, Landroidx/preference/q;->Preference_android_title:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 21
    sget p2, Landroidx/preference/q;->Preference_summary:I

    sget p3, Landroidx/preference/q;->Preference_android_summary:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 22
    sget p2, Landroidx/preference/q;->Preference_order:I

    sget p3, Landroidx/preference/q;->Preference_android_order:I

    invoke-static {p1, p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mOrder:I

    .line 23
    sget p2, Landroidx/preference/q;->Preference_fragment:I

    sget p3, Landroidx/preference/q;->Preference_android_fragment:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    .line 24
    sget p2, Landroidx/preference/q;->Preference_layout:I

    sget p3, Landroidx/preference/q;->Preference_android_layout:I

    invoke-static {p1, p2, p3, v3}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 25
    sget p2, Landroidx/preference/q;->Preference_widgetLayout:I

    sget p3, Landroidx/preference/q;->Preference_android_widgetLayout:I

    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 26
    sget p2, Landroidx/preference/q;->Preference_enabled:I

    sget p3, Landroidx/preference/q;->Preference_android_enabled:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 27
    sget p2, Landroidx/preference/q;->Preference_selectable:I

    sget p3, Landroidx/preference/q;->Preference_android_selectable:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 28
    sget p2, Landroidx/preference/q;->Preference_persistent:I

    sget p3, Landroidx/preference/q;->Preference_android_persistent:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 29
    sget p2, Landroidx/preference/q;->Preference_dependency:I

    sget p3, Landroidx/preference/q;->Preference_android_dependency:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 30
    sget p2, Landroidx/preference/q;->Preference_allowDividerAbove:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {p1, p2, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 31
    sget p2, Landroidx/preference/q;->Preference_allowDividerBelow:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {p1, p2, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 32
    sget p2, Landroidx/preference/q;->Preference_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_ce

    .line 33
    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_dc

    .line 34
    :cond_ce
    sget p2, Landroidx/preference/q;->Preference_android_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_dc

    .line 35
    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 36
    :cond_dc
    :goto_dc
    sget p2, Landroidx/preference/q;->Preference_shouldDisableView:I

    sget p3, Landroidx/preference/q;->Preference_android_shouldDisableView:I

    .line 37
    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 38
    sget p2, Landroidx/preference/q;->Preference_singleLineTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz p3, :cond_f8

    .line 39
    sget p3, Landroidx/preference/q;->Preference_android_singleLineTitle:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 40
    :cond_f8
    sget p2, Landroidx/preference/q;->Preference_iconSpaceReserved:I

    sget p3, Landroidx/preference/q;->Preference_android_iconSpaceReserved:I

    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 41
    sget p2, Landroidx/preference/q;->Preference_isPreferenceVisible:I

    invoke-static {p1, p2, p2, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 42
    sget p2, Landroidx/preference/q;->Preference_enableCopying:I

    invoke-static {p1, p2, p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private dispatchSetInitialValue()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/b;

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1c

    .line 10
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 16
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_16

    .line 22
    goto :goto_1c

    .line 23
    :cond_16
    const/4 v0, 0x1

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v0, v1}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 28
    goto :goto_24

    .line 29
    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 31
    if-eqz v0, :cond_24

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 37
    :cond_24
    :goto_24
    return-void
.end method

.method private registerDependency()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_15

    .line 18
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->registerDependent(Landroidx/preference/Preference;)V

    .line 21
    return-void

    .line 22
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    const-string v1, "Dependency \""

    .line 26
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "\" not found for preference \""

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, "\" (title: \""

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v2, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    const-string v2, "\""

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    throw v0
.end method

.method private registerDependent(Landroidx/preference/Preference;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    .line 24
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .registers 5

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    check-cast p1, Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    :goto_f
    if-ltz v0, :cond_1b

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    invoke-direct {p0, v1, p2}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 27
    goto :goto_f

    .line 28
    :cond_1b
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 3
    iget-boolean v0, v0, Landroidx/preference/f;->e:Z

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    :cond_b
    return-void
.end method

.method private unregisterDependency()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->unregisterDependent(Landroidx/preference/Preference;)V

    .line 14
    :cond_d
    return-void
.end method

.method private unregisterDependent(Landroidx/preference/Preference;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_7
    return-void
.end method


# virtual methods
.method public assignParent(Landroidx/preference/PreferenceGroup;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_f

    .line 3
    iget-object v0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    .line 5
    if-nez v0, :cond_7

    .line 7
    goto :goto_f

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    const-string v0, "This preference already has a parent. You must remove the existing parent before assigning a new one."

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1

    .line 16
    :cond_f
    :goto_f
    iput-object p1, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    .line 18
    return-void
.end method

.method public callChangeListener(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$c;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$c;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 p1, 0x1

    .line 15
    :goto_e
    return p1
.end method

.method public final clearWasDetached()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    .line 4
    return-void
.end method

.method public compareTo(Landroidx/preference/Preference;)I
    .registers 4

    .line 2
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    iget v1, p1, Landroidx/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_8

    sub-int/2addr v0, v1

    return v0

    .line 3
    :cond_8
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_10

    const/4 p1, 0x0

    return p1

    :cond_10
    if-nez v0, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    if-nez v1, :cond_18

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_18
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_21

    .line 7
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_21

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 18
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 21
    iget-boolean p1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 23
    if-eqz p1, :cond_19

    .line 25
    goto :goto_21

    .line 26
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    const-string v0, "Derived class did not call super.onRestoreInstanceState()"

    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1

    .line 34
    :cond_21
    :goto_21
    return-void
.end method

.method public dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_21

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 10
    invoke-virtual {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 13
    move-result-object v0

    .line 14
    iget-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 16
    if-eqz v1, :cond_19

    .line 18
    if-eqz v0, :cond_21

    .line 20
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 25
    goto :goto_21

    .line 26
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    const-string v0, "Derived class did not call super.onSaveInstanceState()"

    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1

    .line 34
    :cond_21
    :goto_21
    return-void
.end method

.method public findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    iget-object v0, v0, Landroidx/preference/f;->g:Landroidx/preference/PreferenceScreen;

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 15
    move-result-object v1

    .line 16
    :goto_f
    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 14
    return-object v0
.end method

.method public getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v2

    .line 14
    const/16 v3, 0x20

    .line 16
    if-nez v2, :cond_17

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    :cond_17
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_27

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 43
    move-result v1

    .line 44
    if-lez v1, :cond_36

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 49
    move-result v1

    .line 50
    add-int/lit8 v1, v1, -0x1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 55
    :cond_36
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    if-nez v0, :cond_10

    .line 5
    iget v0, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 7
    if-eqz v0, :cond_10

    .line 9
    iget-object v1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {v1, v0}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 19
    return-object v0
.end method

.method getId()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroidx/preference/Preference;->mId:J

    .line 3
    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 3
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final getLayoutResource()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 3
    return v0
.end method

.method public getOnPreferenceChangeListener()Landroidx/preference/Preference$c;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$c;

    .line 3
    return-object v0
.end method

.method public getOnPreferenceClickListener()Landroidx/preference/Preference$d;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$d;

    .line 3
    return-object v0
.end method

.method public getOrder()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    .line 3
    return v0
.end method

.method public getParent()Landroidx/preference/PreferenceGroup;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    .line 3
    return-object v0
.end method

.method public getPersistedBoolean(Z)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/b;

    .line 11
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 13
    invoke-virtual {v0}, Landroidx/preference/f;->b()Landroid/content/SharedPreferences;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 19
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public getPersistedFloat(F)F
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/b;

    .line 11
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 13
    invoke-virtual {v0}, Landroidx/preference/f;->b()Landroid/content/SharedPreferences;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 19
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public getPersistedInt(I)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/b;

    .line 11
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 13
    invoke-virtual {v0}, Landroidx/preference/f;->b()Landroid/content/SharedPreferences;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 19
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public getPersistedLong(J)J
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-wide p1

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/b;

    .line 11
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 13
    invoke-virtual {v0}, Landroidx/preference/f;->b()Landroid/content/SharedPreferences;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 19
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 22
    move-result-wide p1

    .line 23
    return-wide p1
.end method

.method public getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-object p1

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/b;

    .line 11
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 13
    invoke-virtual {v0}, Landroidx/preference/f;->b()Landroid/content/SharedPreferences;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 19
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-object p1

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/b;

    .line 11
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 13
    invoke-virtual {v0}, Landroidx/preference/f;->b()Landroid/content/SharedPreferences;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 19
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public getPreferenceDataStore()Landroidx/preference/b;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    :cond_8
    return-object v1
.end method

.method public getPreferenceManager()Landroidx/preference/f;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 3
    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/b;

    .line 8
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 10
    invoke-virtual {v0}, Landroidx/preference/f;->b()Landroid/content/SharedPreferences;

    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    return-object v0
.end method

.method public getShouldDisableView()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 3
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 2

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
    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 18
    return-object v0
.end method

.method public final getSummaryProvider()Landroidx/preference/Preference$f;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$f;

    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public final getWidgetLayoutResource()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 3
    return v0
.end method

.method public hasKey()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public isCopyingEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    .line 3
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 7
    if-eqz v0, :cond_e

    .line 9
    iget-boolean v0, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public isIconSpaceReserved()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 3
    return v0
.end method

.method public isPersistent()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 3
    return v0
.end method

.method public isSelectable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 3
    return v0
.end method

.method public final isShown()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->isVisible()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/f;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    return v1

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/f;

    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Landroidx/preference/f;->g:Landroidx/preference/PreferenceScreen;

    .line 22
    if-ne p0, v0, :cond_19

    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_19
    invoke-virtual {p0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_20

    .line 32
    return v1

    .line 33
    :cond_20
    invoke-virtual {v0}, Landroidx/preference/Preference;->isShown()Z

    .line 36
    move-result v0

    .line 37
    return v0
.end method

.method public isSingleLineTitle()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 3
    return v0
.end method

.method public final isVisible()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 3
    return v0
.end method

.method public notifyChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$b;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p0}, Landroidx/preference/Preference$b;->onPreferenceChange(Landroidx/preference/Preference;)V

    .line 8
    :cond_7
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    if-ge v2, v1, :cond_18

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/preference/Preference;

    .line 19
    invoke-virtual {v3, p0, p1}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_a

    .line 25
    :cond_18
    return-void
.end method

.method public notifyHierarchyChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$b;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p0}, Landroidx/preference/Preference$b;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    .line 8
    :cond_7
    return-void
.end method

.method public onAttached()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/preference/Preference;->registerDependency()V

    .line 4
    return-void
.end method

.method public onAttachedToHierarchy(Landroidx/preference/f;)V
    .registers 6

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 2
    iget-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    if-nez v0, :cond_15

    .line 3
    monitor-enter p1

    .line 4
    :try_start_7
    iget-wide v0, p1, Landroidx/preference/f;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p1, Landroidx/preference/f;->b:J

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_12

    .line 5
    iput-wide v0, p0, Landroidx/preference/Preference;->mId:J

    goto :goto_15

    :catchall_12
    move-exception v0

    .line 6
    :try_start_13
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0

    .line 7
    :cond_15
    :goto_15
    invoke-direct {p0}, Landroidx/preference/Preference;->dispatchSetInitialValue()V

    return-void
.end method

.method public onAttachedToHierarchy(Landroidx/preference/f;J)V
    .registers 4

    .line 8
    iput-wide p2, p0, Landroidx/preference/Preference;->mId:J

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasId:Z

    const/4 p2, 0x0

    .line 10
    :try_start_6
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/f;)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_c

    .line 11
    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasId:Z

    return-void

    :catchall_c
    move-exception p1

    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasId:Z

    .line 12
    throw p1
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .registers 10

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    iget-object v1, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget v1, p0, Landroidx/preference/Preference;->mViewId:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 13
    const v1, 0x1020010

    .line 16
    invoke-virtual {p1, v1}, Landroidx/preference/h;->a(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/widget/TextView;

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/16 v4, 0x8

    .line 26
    if-eqz v1, :cond_37

    .line 28
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    .line 31
    move-result-object v5

    .line 32
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v6

    .line 36
    if-nez v6, :cond_34

    .line 38
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 47
    move-result v1

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v1

    .line 52
    goto :goto_38

    .line 53
    :cond_34
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_37
    move-object v1, v2

    .line 57
    :goto_38
    const v5, 0x1020016

    .line 60
    invoke-virtual {p1, v5}, Landroidx/preference/h;->a(I)Landroid/view/View;

    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Landroid/widget/TextView;

    .line 66
    if-eqz v5, :cond_75

    .line 68
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    .line 71
    move-result-object v6

    .line 72
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    move-result v7

    .line 76
    if-nez v7, :cond_72

    .line 78
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-boolean v6, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 86
    if-eqz v6, :cond_5c

    .line 88
    iget-boolean v6, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 90
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 93
    :cond_5c
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    .line 96
    move-result v6

    .line 97
    if-nez v6, :cond_75

    .line 99
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_75

    .line 105
    if-eqz v1, :cond_75

    .line 107
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 110
    move-result v1

    .line 111
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    goto :goto_75

    .line 115
    :cond_72
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :cond_75
    :goto_75
    const v1, 0x1020006

    .line 121
    invoke-virtual {p1, v1}, Landroidx/preference/h;->a(I)Landroid/view/View;

    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Landroid/widget/ImageView;

    .line 127
    const/4 v5, 0x4

    .line 128
    if-eqz v1, :cond_ae

    .line 130
    iget v6, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 132
    if-nez v6, :cond_89

    .line 134
    iget-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 136
    if-eqz v7, :cond_9c

    .line 138
    :cond_89
    iget-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 140
    if-nez v7, :cond_95

    .line 142
    iget-object v7, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 144
    invoke-static {v7, v6}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 147
    move-result-object v6

    .line 148
    iput-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 150
    :cond_95
    iget-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 152
    if-eqz v6, :cond_9c

    .line 154
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    :cond_9c
    iget-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 159
    if-eqz v6, :cond_a4

    .line 161
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    goto :goto_ae

    .line 165
    :cond_a4
    iget-boolean v6, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 167
    if-eqz v6, :cond_aa

    .line 169
    move v6, v5

    .line 170
    goto :goto_ab

    .line 171
    :cond_aa
    move v6, v4

    .line 172
    :goto_ab
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    :cond_ae
    :goto_ae
    sget v1, Landroidx/preference/l;->icon_frame:I

    .line 177
    invoke-virtual {p1, v1}, Landroidx/preference/h;->a(I)Landroid/view/View;

    .line 180
    move-result-object v1

    .line 181
    if-nez v1, :cond_bd

    .line 183
    const v1, 0x102003e

    .line 186
    invoke-virtual {p1, v1}, Landroidx/preference/h;->a(I)Landroid/view/View;

    .line 189
    move-result-object v1

    .line 190
    :cond_bd
    if-eqz v1, :cond_cf

    .line 192
    iget-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 194
    if-eqz v6, :cond_c7

    .line 196
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    goto :goto_cf

    .line 200
    :cond_c7
    iget-boolean v3, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 202
    if-eqz v3, :cond_cc

    .line 204
    move v4, v5

    .line 205
    :cond_cc
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 208
    :cond_cf
    :goto_cf
    iget-boolean v1, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 210
    if-eqz v1, :cond_db

    .line 212
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    .line 215
    move-result v1

    .line 216
    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 219
    goto :goto_df

    .line 220
    :cond_db
    const/4 v1, 0x1

    .line 221
    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 224
    :goto_df
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    .line 227
    move-result v1

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 231
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 234
    iget-boolean v3, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 236
    iput-boolean v3, p1, Landroidx/preference/h;->d:Z

    .line 238
    iget-boolean v3, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 240
    iput-boolean v3, p1, Landroidx/preference/h;->e:Z

    .line 242
    invoke-virtual {p0}, Landroidx/preference/Preference;->isCopyingEnabled()Z

    .line 245
    move-result p1

    .line 246
    if-eqz p1, :cond_102

    .line 248
    iget-object v3, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$e;

    .line 250
    if-nez v3, :cond_102

    .line 252
    new-instance v3, Landroidx/preference/Preference$e;

    .line 254
    invoke-direct {v3, p0}, Landroidx/preference/Preference$e;-><init>(Landroidx/preference/Preference;)V

    .line 257
    iput-object v3, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$e;

    .line 259
    :cond_102
    if-eqz p1, :cond_107

    .line 261
    iget-object v3, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$e;

    .line 263
    goto :goto_108

    .line 264
    :cond_107
    move-object v3, v2

    .line 265
    :goto_108
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 268
    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 271
    if-eqz p1, :cond_117

    .line 273
    if-nez v1, :cond_117

    .line 275
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 277
    invoke-static {v0, v2}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 280
    :cond_117
    return-void
.end method

.method public onClick()V
    .registers 1

    return-void
.end method

.method public onDependencyChanged(Landroidx/preference/Preference;Z)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 3
    if-ne p1, p2, :cond_12

    .line 5
    xor-int/lit8 p1, p2, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 9
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 16
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 19
    :cond_12
    return-void
.end method

.method public onDetached()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    .line 7
    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Ln0/c;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onParentChanged(Landroidx/preference/Preference;Z)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 3
    if-ne p1, p2, :cond_12

    .line 5
    xor-int/lit8 p1, p2, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 9
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 16
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 19
    :cond_12
    return-void
.end method

.method public onPrepareForRemoval()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 4
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 4
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 6
    if-eq p1, v0, :cond_12

    .line 8
    if-nez p1, :cond_a

    .line 10
    goto :goto_12

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string v0, "Wrong state class -- expecting Preference State"

    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1

    .line 19
    :cond_12
    :goto_12
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 4
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 6
    return-object v0
.end method

.method public onSetInitialValue(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->onSetInitialValue(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 3
    return-object v0
.end method

.method public performClick()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_39

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroidx/preference/Preference;->onClick()V

    .line 4
    iget-object v0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$d;

    if-eqz v0, :cond_1b

    invoke-interface {v0, p0}, Landroidx/preference/Preference$d;->onPreferenceClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 5
    :cond_1b
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 6
    iget-object v0, v0, Landroidx/preference/f;->h:Landroidx/preference/f$c;

    if-eqz v0, :cond_2c

    .line 7
    invoke-interface {v0, p0}, Landroidx/preference/f$c;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_2c

    return-void

    .line 8
    :cond_2c
    iget-object v0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_39

    .line 9
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 10
    iget-object v1, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public performClick(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    return-void
.end method

.method public persistBoolean(Z)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    xor-int/lit8 v0, p1, 0x1

    .line 11
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedBoolean(Z)Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne p1, v0, :cond_12

    .line 18
    return v1

    .line 19
    :cond_12
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/b;

    .line 22
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 24
    invoke-virtual {v0}, Landroidx/preference/f;->a()Landroid/content/SharedPreferences$Editor;

    .line 27
    move-result-object v0

    .line 28
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 30
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 36
    return v1
.end method

.method public persistFloat(F)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 11
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedFloat(F)F

    .line 14
    move-result v0

    .line 15
    cmpl-float v0, p1, v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-nez v0, :cond_14

    .line 20
    return v1

    .line 21
    :cond_14
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/b;

    .line 24
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 26
    invoke-virtual {v0}, Landroidx/preference/f;->a()Landroid/content/SharedPreferences$Editor;

    .line 29
    move-result-object v0

    .line 30
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 32
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 38
    return v1
.end method

.method public persistInt(I)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    not-int v0, p1

    .line 10
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedInt(I)I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne p1, v0, :cond_11

    .line 17
    return v1

    .line 18
    :cond_11
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/b;

    .line 21
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 23
    invoke-virtual {v0}, Landroidx/preference/f;->a()Landroid/content/SharedPreferences$Editor;

    .line 26
    move-result-object v0

    .line 27
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 29
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 35
    return v1
.end method

.method public persistLong(J)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    not-long v0, p1

    .line 10
    invoke-virtual {p0, v0, v1}, Landroidx/preference/Preference;->getPersistedLong(J)J

    .line 13
    move-result-wide v0

    .line 14
    cmp-long v0, p1, v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-nez v0, :cond_13

    .line 19
    return v1

    .line 20
    :cond_13
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/b;

    .line 23
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 25
    invoke-virtual {v0}, Landroidx/preference/f;->a()Landroid/content/SharedPreferences$Editor;

    .line 28
    move-result-object v0

    .line 29
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 31
    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 37
    return v1
.end method

.method public persistString(Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_15

    .line 21
    return v1

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/b;

    .line 25
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 27
    invoke-virtual {v0}, Landroidx/preference/f;->a()Landroid/content/SharedPreferences$Editor;

    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 33
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 39
    return v1
.end method

.method public persistStringSet(Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_15

    .line 21
    return v1

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/b;

    .line 25
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 27
    invoke-virtual {v0}, Landroidx/preference/f;->a()Landroid/content/SharedPreferences$Editor;

    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 33
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 39
    return v1
.end method

.method public requireKey()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_c

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/preference/Preference;->mRequiresKey:Z

    .line 12
    return-void

    .line 13
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    const-string v1, "Preference does not have a key assigned."

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public setCopyingEnabled(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput-boolean p1, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 10
    :cond_9
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 3
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 4
    iput-object p1, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Landroidx/preference/Preference;->registerDependency()V

    .line 9
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 3
    if-eq v0, p1, :cond_10

    .line 5
    iput-boolean p1, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 14
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 17
    :cond_10
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setIcon(I)V
    .registers 3

    .line 5
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iput p1, p0, Landroidx/preference/Preference;->mIconResId:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_c

    .line 2
    iput-object p1, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_c
    return-void
.end method

.method public setIconSpaceReserved(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput-boolean p1, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 10
    :cond_9
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 3
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 3
    iget-boolean p1, p0, Landroidx/preference/Preference;->mRequiresKey:Z

    .line 5
    if-eqz p1, :cond_f

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_f

    .line 13
    invoke-virtual {p0}, Landroidx/preference/Preference;->requireKey()V

    .line 16
    :cond_f
    return-void
.end method

.method public setLayoutResource(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 3
    return-void
.end method

.method public final setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$b;

    .line 3
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$c;

    .line 3
    return-void
.end method

.method public setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$d;

    .line 3
    return-void
.end method

.method public setOrder(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    .line 3
    if-eq p1, v0, :cond_9

    .line 5
    iput p1, p0, Landroidx/preference/Preference;->mOrder:I

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    .line 10
    :cond_9
    return-void
.end method

.method public setPersistent(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 3
    return-void
.end method

.method public setPreferenceDataStore(Landroidx/preference/b;)V
    .registers 2

    return-void
.end method

.method public setSelectable(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput-boolean p1, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 10
    :cond_9
    return-void
.end method

.method public setShouldDisableView(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput-boolean p1, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 10
    :cond_9
    return-void
.end method

.method public setSingleLineTitle(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 4
    iput-boolean p1, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 6
    return-void
.end method

.method public setSummary(I)V
    .registers 3

    .line 6
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$f;

    move-result-object v0

    if-nez v0, :cond_14

    .line 2
    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3
    iput-object p1, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_13
    return-void

    .line 5
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Preference already has a SummaryProvider set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSummaryProvider(Landroidx/preference/Preference$f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$f;

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 6
    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .line 4
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iput-object p1, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_d
    return-void
.end method

.method public setViewId(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/preference/Preference;->mViewId:I

    .line 3
    return-void
.end method

.method public final setVisible(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 3
    if-eq v0, p1, :cond_d

    .line 5
    iput-boolean p1, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 7
    iget-object p1, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$b;

    .line 9
    if-eqz p1, :cond_d

    .line 11
    invoke-interface {p1, p0}, Landroidx/preference/Preference$b;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)V

    .line 14
    :cond_d
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 3
    return-void
.end method

.method public shouldDisableDependents()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method public shouldPersist()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/f;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 11
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final wasDetached()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    .line 3
    return v0
.end method
