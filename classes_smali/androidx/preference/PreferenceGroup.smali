.class public abstract Landroidx/preference/PreferenceGroup;
.super Landroidx/preference/Preference;
.source "PreferenceGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceGroup$SavedState;,
        Landroidx/preference/PreferenceGroup$b;,
        Landroidx/preference/PreferenceGroup$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceGroup"


# instance fields
.field private mAttachedToHierarchy:Z

.field private final mClearRecycleCacheRunnable:Ljava/lang/Runnable;

.field private mCurrentPreferenceOrder:I

.field private final mHandler:Landroid/os/Handler;

.field public final mIdRecycleCache:Landroidx/collection/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/f<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialExpandedChildrenCount:I

.field private mOnExpandButtonClickListener:Landroidx/preference/PreferenceGroup$b;

.field private mOrderingAsAdded:Z

.field private final mPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v0, Landroidx/collection/f;

    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/f;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Landroidx/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 6
    iput-boolean v1, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    const v1, 0x7fffffff

    .line 7
    iput v1, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Landroidx/preference/PreferenceGroup;->mOnExpandButtonClickListener:Landroidx/preference/PreferenceGroup$b;

    .line 9
    new-instance v2, Landroidx/preference/PreferenceGroup$a;

    invoke-direct {v2, p0}, Landroidx/preference/PreferenceGroup$a;-><init>(Landroidx/preference/PreferenceGroup;)V

    iput-object v2, p0, Landroidx/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    .line 11
    sget-object v2, Landroidx/preference/q;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    sget p2, Landroidx/preference/q;->PreferenceGroup_orderingFromXml:I

    .line 13
    invoke-static {p1, p2, p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 14
    sget p2, Landroidx/preference/q;->PreferenceGroup_initialExpandedChildrenCount:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_50

    .line 15
    invoke-static {p1, p2, p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    .line 16
    :cond_50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private removePreferenceInt(Landroidx/preference/Preference;)Z
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->onPrepareForRemoval()V

    .line 5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 8
    move-result-object v0

    .line 9
    if-ne v0, p0, :cond_e

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->assignParent(Landroidx/preference/PreferenceGroup;)V

    .line 15
    :cond_e
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_3e

    .line 23
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_37

    .line 29
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/f;

    .line 31
    invoke-virtual {p1}, Landroidx/preference/Preference;->getId()J

    .line 34
    move-result-wide v3

    .line 35
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v1, v3}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Landroidx/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    .line 44
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    iget-object v1, p0, Landroidx/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    .line 51
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    .line 53
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    :cond_37
    iget-boolean v1, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 58
    if-eqz v1, :cond_3e

    .line 60
    invoke-virtual {p1}, Landroidx/preference/Preference;->onDetached()V

    .line 63
    :cond_3e
    monitor-exit p0

    .line 64
    return v0

    .line 65
    :catchall_40
    move-exception p1

    .line 66
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_40

    .line 67
    throw p1
.end method


# virtual methods
.method public addItemFromInflater(Landroidx/preference/Preference;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 4
    return-void
.end method

.method public addPreference(Landroidx/preference/Preference;)Z
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_41

    .line 17
    move-object v0, p0

    .line 18
    :goto_11
    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1c

    .line 24
    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_11

    .line 29
    :cond_1c
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_41

    .line 39
    const-string v0, "PreferenceGroup"

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v4, "Found duplicated key: \""

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v2, "\". This can cause unintended behaviour, please use unique keys for every preference."

    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_41
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    .line 69
    move-result v0

    .line 70
    const v2, 0x7fffffff

    .line 73
    if-ne v0, v2, :cond_63

    .line 75
    iget-boolean v0, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 77
    if-eqz v0, :cond_57

    .line 79
    iget v0, p0, Landroidx/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 81
    add-int/lit8 v2, v0, 0x1

    .line 83
    iput v2, p0, Landroidx/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 85
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 88
    :cond_57
    instance-of v0, p1, Landroidx/preference/PreferenceGroup;

    .line 90
    if-eqz v0, :cond_63

    .line 92
    move-object v0, p1

    .line 93
    check-cast v0, Landroidx/preference/PreferenceGroup;

    .line 95
    iget-boolean v2, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 97
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 100
    :cond_63
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    .line 102
    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    .line 105
    move-result v0

    .line 106
    if-gez v0, :cond_6e

    .line 108
    mul-int/lit8 v0, v0, -0x1

    .line 110
    sub-int/2addr v0, v1

    .line 111
    :cond_6e
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->onPrepareAddPreference(Landroidx/preference/Preference;)Z

    .line 114
    move-result v2

    .line 115
    if-nez v2, :cond_76

    .line 117
    const/4 p1, 0x0

    .line 118
    return p1

    .line 119
    :cond_76
    monitor-enter p0

    .line 120
    :try_start_77
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    .line 122
    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 125
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_be

    .line 126
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/f;

    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 133
    move-result-object v2

    .line 134
    if-eqz v2, :cond_a1

    .line 136
    iget-object v3, p0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/f;

    .line 138
    invoke-virtual {v3, v2}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_a1

    .line 144
    iget-object v3, p0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/f;

    .line 146
    invoke-virtual {v3, v2}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Ljava/lang/Long;

    .line 152
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 155
    move-result-wide v3

    .line 156
    iget-object v5, p0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/f;

    .line 158
    invoke-virtual {v5, v2}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    goto :goto_aa

    .line 162
    :cond_a1
    monitor-enter v0

    .line 163
    :try_start_a2
    iget-wide v3, v0, Landroidx/preference/f;->b:J

    .line 165
    const-wide/16 v5, 0x1

    .line 167
    add-long/2addr v5, v3

    .line 168
    iput-wide v5, v0, Landroidx/preference/f;->b:J

    .line 170
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_bb

    .line 171
    :goto_aa
    invoke-virtual {p1, v0, v3, v4}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/f;J)V

    .line 174
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->assignParent(Landroidx/preference/PreferenceGroup;)V

    .line 177
    iget-boolean v0, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 179
    if-eqz v0, :cond_b7

    .line 181
    invoke-virtual {p1}, Landroidx/preference/Preference;->onAttached()V

    .line 184
    :cond_b7
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    .line 187
    return v1

    .line 188
    :catchall_bb
    move-exception p1

    .line 189
    :try_start_bc
    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    .line 190
    throw p1

    .line 191
    :catchall_be
    move-exception p1

    .line 192
    :try_start_bf
    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    .line 193
    throw p1
.end method

.method public dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    if-ge v1, v0, :cond_14

    .line 11
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_8

    .line 21
    :cond_14
    return-void
.end method

.method public dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    if-ge v1, v0, :cond_14

    .line 11
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_8

    .line 21
    :cond_14
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_35

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    return-object p0

    .line 14
    :cond_d
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_12
    if-ge v1, v0, :cond_33

    .line 21
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_23

    .line 35
    return-object v2

    .line 36
    :cond_23
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    .line 38
    if-eqz v3, :cond_30

    .line 40
    check-cast v2, Landroidx/preference/PreferenceGroup;

    .line 42
    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_30

    .line 48
    return-object v2

    .line 49
    :cond_30
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_12

    .line 52
    :cond_33
    const/4 p1, 0x0

    .line 53
    return-object p1

    .line 54
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    const-string v0, "Key cannot be null"

    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1
.end method

.method public getInitialExpandedChildrenCount()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    .line 3
    return v0
.end method

.method public getOnExpandButtonClickListener()Landroidx/preference/PreferenceGroup$b;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mOnExpandButtonClickListener:Landroidx/preference/PreferenceGroup$b;

    .line 3
    return-object v0
.end method

.method public getPreference(I)Landroidx/preference/Preference;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/preference/Preference;

    .line 9
    return-object p1
.end method

.method public getPreferenceCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isAttached()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 3
    return v0
.end method

.method public isOnSameScreenAsChildren()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isOrderingAsAdded()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 3
    return v0
.end method

.method public notifyDependencyChange(Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    if-ge v1, v0, :cond_14

    .line 11
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, p0, p1}, Landroidx/preference/Preference;->onParentChanged(Landroidx/preference/Preference;Z)V

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_8

    .line 21
    :cond_14
    return-void
.end method

.method public onAttached()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 7
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    if-ge v1, v0, :cond_17

    .line 14
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroidx/preference/Preference;->onAttached()V

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_b

    .line 24
    :cond_17
    return-void
.end method

.method public onDetached()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 7
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 10
    move-result v1

    .line 11
    :goto_a
    if-ge v0, v1, :cond_16

    .line 13
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroidx/preference/Preference;->onDetached()V

    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_a

    .line 23
    :cond_16
    return-void
.end method

.method public onPrepareAddPreference(Landroidx/preference/Preference;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->onParentChanged(Landroidx/preference/Preference;Z)V

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_1d

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-class v1, Landroidx/preference/PreferenceGroup$SavedState;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_1d

    .line 16
    :cond_f
    check-cast p1, Landroidx/preference/PreferenceGroup$SavedState;

    .line 18
    iget v0, p1, Landroidx/preference/PreferenceGroup$SavedState;->a:I

    .line 20
    iput v0, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    .line 22
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 25
    move-result-object p1

    .line 26
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 29
    return-void

    .line 30
    :cond_1d
    :goto_1d
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 33
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/preference/PreferenceGroup$SavedState;

    .line 7
    iget v2, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    .line 9
    invoke-direct {v1, v0, v2}, Landroidx/preference/PreferenceGroup$SavedState;-><init>(Landroid/os/Parcelable;I)V

    .line 12
    return-object v1
.end method

.method public removeAll()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 10
    :goto_9
    if-ltz v1, :cond_18

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/preference/Preference;

    .line 19
    invoke-direct {p0, v2}, Landroidx/preference/PreferenceGroup;->removePreferenceInt(Landroidx/preference/Preference;)Z

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 24
    goto :goto_9

    .line 25
    :cond_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1d

    .line 26
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception v0

    .line 31
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    .line 32
    throw v0
.end method

.method public removePreference(Landroidx/preference/Preference;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreferenceInt(Landroidx/preference/Preference;)Z

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    .line 8
    return p1
.end method

.method public removePreferenceRecursively(Ljava/lang/CharSequence;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public setInitialExpandedChildrenCount(I)V
    .registers 4

    .line 1
    const v0, 0x7fffffff

    .line 4
    if-eq p1, v0, :cond_29

    .line 6
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_29

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, " should have a key defined if it contains an expandable preference"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    const-string v1, "PreferenceGroup"

    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_29
    iput p1, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    .line 44
    return-void
.end method

.method public setOnExpandButtonClickListener(Landroidx/preference/PreferenceGroup$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/PreferenceGroup;->mOnExpandButtonClickListener:Landroidx/preference/PreferenceGroup$b;

    .line 3
    return-void
.end method

.method public setOrderingAsAdded(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 3
    return-void
.end method

.method public sortPreferences()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    .line 11
    throw v0
.end method
