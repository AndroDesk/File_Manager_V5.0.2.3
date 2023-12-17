.class public Landroidx/preference/c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroidx/preference/Preference$b;
.implements Landroidx/preference/PreferenceGroup$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/preference/h;",
        ">;",
        "Landroidx/preference/Preference$b;",
        "Landroidx/preference/PreferenceGroup$c;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private final mPreferenceResourceDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/c$c;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncRunnable:Ljava/lang/Runnable;

.field private mVisiblePreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    new-instance v0, Landroidx/preference/c$a;

    .line 6
    invoke-direct {v0, p0}, Landroidx/preference/c$a;-><init>(Landroidx/preference/c;)V

    .line 9
    iput-object v0, p0, Landroidx/preference/c;->mSyncRunnable:Ljava/lang/Runnable;

    .line 11
    iput-object p1, p0, Landroidx/preference/c;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 13
    new-instance v0, Landroid/os/Handler;

    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    iput-object v0, p0, Landroidx/preference/c;->mHandler:Landroid/os/Handler;

    .line 24
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$b;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iput-object v0, p0, Landroidx/preference/c;->mPreferences:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iput-object v0, p0, Landroidx/preference/c;->mVisiblePreferences:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iput-object v0, p0, Landroidx/preference/c;->mPreferenceResourceDescriptors:Ljava/util/List;

    .line 48
    instance-of v0, p1, Landroidx/preference/PreferenceScreen;

    .line 50
    if-eqz v0, :cond_3b

    .line 52
    check-cast p1, Landroidx/preference/PreferenceScreen;

    .line 54
    iget-boolean p1, p1, Landroidx/preference/PreferenceScreen;->a:Z

    .line 56
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 59
    goto :goto_3f

    .line 60
    :cond_3b
    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 64
    :goto_3f
    invoke-virtual {p0}, Landroidx/preference/c;->updatePreferences()V

    .line 67
    return-void
.end method

.method private createExpandButton(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;)",
            "Landroidx/preference/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/preference/a;

    .line 3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroidx/preference/Preference;->getId()J

    .line 10
    move-result-wide v2

    .line 11
    invoke-direct {v0, v1, p2, v2, v3}, Landroidx/preference/a;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 14
    new-instance p2, Landroidx/preference/c$b;

    .line 16
    invoke-direct {p2, p0, p1}, Landroidx/preference/c$b;-><init>(Landroidx/preference/c;Landroidx/preference/PreferenceGroup;)V

    .line 19
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 22
    return-object v0
.end method

.method private createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_10
    if-ge v3, v2, :cond_85

    .line 19
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v5}, Landroidx/preference/Preference;->isVisible()Z

    .line 26
    move-result v6

    .line 27
    if-nez v6, :cond_1e

    .line 29
    goto/16 :goto_82

    .line 31
    :cond_1e
    invoke-direct {p0, p1}, Landroidx/preference/c;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_2f

    .line 37
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    .line 40
    move-result v6

    .line 41
    if-ge v4, v6, :cond_2b

    .line 43
    goto :goto_2f

    .line 44
    :cond_2b
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    :goto_2f
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :goto_32
    instance-of v6, v5, Landroidx/preference/PreferenceGroup;

    .line 53
    if-nez v6, :cond_39

    .line 55
    add-int/lit8 v4, v4, 0x1

    .line 57
    goto :goto_82

    .line 58
    :cond_39
    check-cast v5, Landroidx/preference/PreferenceGroup;

    .line 60
    invoke-virtual {v5}, Landroidx/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    .line 63
    move-result v6

    .line 64
    if-nez v6, :cond_42

    .line 66
    goto :goto_82

    .line 67
    :cond_42
    invoke-direct {p0, p1}, Landroidx/preference/c;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_57

    .line 73
    invoke-direct {p0, v5}, Landroidx/preference/c;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    .line 76
    move-result v6

    .line 77
    if-nez v6, :cond_4f

    .line 79
    goto :goto_57

    .line 80
    :cond_4f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 82
    const-string v0, "Nesting an expandable group inside of another expandable group is not supported!"

    .line 84
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p1

    .line 88
    :cond_57
    :goto_57
    invoke-direct {p0, v5}, Landroidx/preference/c;->createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    .line 91
    move-result-object v5

    .line 92
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    move-result-object v5

    .line 96
    :goto_5f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_82

    .line 102
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Landroidx/preference/Preference;

    .line 108
    invoke-direct {p0, p1}, Landroidx/preference/c;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_7c

    .line 114
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    .line 117
    move-result v7

    .line 118
    if-ge v4, v7, :cond_78

    .line 120
    goto :goto_7c

    .line 121
    :cond_78
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    goto :goto_7f

    .line 125
    :cond_7c
    :goto_7c
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :goto_7f
    add-int/lit8 v4, v4, 0x1

    .line 130
    goto :goto_5f

    .line 131
    :cond_82
    :goto_82
    add-int/lit8 v3, v3, 0x1

    .line 133
    goto :goto_10

    .line 134
    :cond_85
    invoke-direct {p0, p1}, Landroidx/preference/c;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_98

    .line 140
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    .line 143
    move-result v2

    .line 144
    if-le v4, v2, :cond_98

    .line 146
    invoke-direct {p0, p1, v1}, Landroidx/preference/c;->createExpandButton(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/a;

    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_98
    return-object v0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->sortPreferences()V

    .line 4
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    if-ge v1, v0, :cond_39

    .line 11
    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 14
    move-result-object v2

    .line 15
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v3, Landroidx/preference/c$c;

    .line 20
    invoke-direct {v3, v2}, Landroidx/preference/c$c;-><init>(Landroidx/preference/Preference;)V

    .line 23
    iget-object v4, p0, Landroidx/preference/c;->mPreferenceResourceDescriptors:Ljava/util/List;

    .line 25
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_23

    .line 31
    iget-object v4, p0, Landroidx/preference/c;->mPreferenceResourceDescriptors:Ljava/util/List;

    .line 33
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_23
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    .line 38
    if-eqz v3, :cond_33

    .line 40
    move-object v3, v2

    .line 41
    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 43
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_33

    .line 49
    invoke-direct {p0, p1, v3}, Landroidx/preference/c;->flattenPreferenceGroup(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 52
    :cond_33
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$b;)V

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_8

    .line 58
    :cond_39
    return-void
.end method

.method private isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    .line 4
    move-result p1

    .line 5
    const v0, 0x7fffffff

    .line 8
    if-eq p1, v0, :cond_b

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    return p1
.end method


# virtual methods
.method public getItem(I)Landroidx/preference/Preference;
    .registers 3

    .line 1
    if-ltz p1, :cond_12

    .line 3
    invoke-virtual {p0}, Landroidx/preference/c;->getItemCount()I

    .line 6
    move-result v0

    .line 7
    if-lt p1, v0, :cond_9

    .line 9
    goto :goto_12

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/preference/c;->mVisiblePreferences:Ljava/util/List;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroidx/preference/Preference;

    .line 18
    return-object p1

    .line 19
    :cond_12
    :goto_12
    const/4 p1, 0x0

    .line 20
    return-object p1
.end method

.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/c;->mVisiblePreferences:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    const-wide/16 v0, -0x1

    .line 9
    return-wide v0

    .line 10
    :cond_9
    invoke-virtual {p0, p1}, Landroidx/preference/c;->getItem(I)Landroidx/preference/Preference;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroidx/preference/Preference;->getId()J

    .line 17
    move-result-wide v0

    .line 18
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/c;->getItem(I)Landroidx/preference/Preference;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Landroidx/preference/c$c;

    .line 7
    invoke-direct {v0, p1}, Landroidx/preference/c$c;-><init>(Landroidx/preference/Preference;)V

    .line 10
    iget-object p1, p0, Landroidx/preference/c;->mPreferenceResourceDescriptors:Ljava/util/List;

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 15
    move-result p1

    .line 16
    const/4 v1, -0x1

    .line 17
    if-eq p1, v1, :cond_13

    .line 19
    return p1

    .line 20
    :cond_13
    iget-object p1, p0, Landroidx/preference/c;->mPreferenceResourceDescriptors:Ljava/util/List;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    move-result p1

    .line 26
    iget-object v1, p0, Landroidx/preference/c;->mPreferenceResourceDescriptors:Ljava/util/List;

    .line 28
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return p1
.end method

.method public getPreferenceAdapterPosition(Landroidx/preference/Preference;)I
    .registers 5

    .line 4
    iget-object v0, p0, Landroidx/preference/c;->mVisiblePreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 5
    iget-object v2, p0, Landroidx/preference/c;->mVisiblePreferences:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    if-eqz v2, :cond_1a

    .line 6
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 p1, -0x1

    return p1
.end method

.method public getPreferenceAdapterPosition(Ljava/lang/String;)I
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/preference/c;->mVisiblePreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 2
    iget-object v2, p0, Landroidx/preference/c;->mVisiblePreferences:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 3
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p1, -0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/preference/h;I)V
    .registers 6

    .line 2
    invoke-virtual {p0, p2}, Landroidx/preference/c;->getItem(I)Landroidx/preference/Preference;

    move-result-object p2

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p1, Landroidx/preference/h;->a:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_15

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 6
    invoke-static {v0, v1}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_15
    const v0, 0x1020016

    .line 7
    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_35

    .line 8
    iget-object v1, p1, Landroidx/preference/h;->b:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_35

    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p1, Landroidx/preference/h;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 10
    iget-object v1, p1, Landroidx/preference/h;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 11
    :cond_35
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    check-cast p1, Landroidx/preference/h;

    invoke-virtual {p0, p1, p2}, Landroidx/preference/c;->onBindViewHolder(Landroidx/preference/h;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/preference/h;
    .registers 7

    .line 2
    iget-object v0, p0, Landroidx/preference/c;->mPreferenceResourceDescriptors:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/c$c;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/preference/q;->BackgroundStyle:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 5
    sget v2, Landroidx/preference/q;->BackgroundStyle_android_selectableItemBackground:I

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2e

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1080062

    invoke-static {v2, v3}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 8
    :cond_2e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    iget v1, p2, Landroidx/preference/c$c;->a:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_43

    .line 11
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 12
    invoke-static {p1, v2}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_43
    const v1, 0x1020018

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5b

    .line 14
    iget p2, p2, Landroidx/preference/c$c;->b:I

    if-eqz p2, :cond_56

    .line 15
    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_5b

    :cond_56
    const/16 p2, 0x8

    .line 16
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_5b
    :goto_5b
    new-instance p2, Landroidx/preference/h;

    invoke-direct {p2, p1}, Landroidx/preference/h;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/preference/c;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/preference/h;

    move-result-object p1

    return-object p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/preference/c;->mVisiblePreferences:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_c

    .line 10
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 13
    :cond_c
    return-void
.end method

.method public onPreferenceHierarchyChange(Landroidx/preference/Preference;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/preference/c;->mHandler:Landroid/os/Handler;

    .line 3
    iget-object v0, p0, Landroidx/preference/c;->mSyncRunnable:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object p1, p0, Landroidx/preference/c;->mHandler:Landroid/os/Handler;

    .line 10
    iget-object v0, p0, Landroidx/preference/c;->mSyncRunnable:Ljava/lang/Runnable;

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
.end method

.method public onPreferenceVisibilityChange(Landroidx/preference/Preference;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/c;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    .line 4
    return-void
.end method

.method public updatePreferences()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/preference/c;->mPreferences:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_17

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/preference/Preference;

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$b;)V

    .line 23
    goto :goto_6

    .line 24
    :cond_17
    iget-object v0, p0, Landroidx/preference/c;->mPreferences:Ljava/util/List;

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    move-result v0

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    iput-object v1, p0, Landroidx/preference/c;->mPreferences:Ljava/util/List;

    .line 37
    iget-object v0, p0, Landroidx/preference/c;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 39
    invoke-direct {p0, v1, v0}, Landroidx/preference/c;->flattenPreferenceGroup(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 42
    iget-object v0, p0, Landroidx/preference/c;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 44
    invoke-direct {p0, v0}, Landroidx/preference/c;->createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Landroidx/preference/c;->mVisiblePreferences:Ljava/util/List;

    .line 50
    iget-object v0, p0, Landroidx/preference/c;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 52
    invoke-virtual {v0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/f;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 59
    iget-object v0, p0, Landroidx/preference/c;->mPreferences:Ljava/util/List;

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v0

    .line 65
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_50

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroidx/preference/Preference;

    .line 77
    invoke-virtual {v1}, Landroidx/preference/Preference;->clearWasDetached()V

    .line 80
    goto :goto_40

    .line 81
    :cond_50
    return-void
.end method
