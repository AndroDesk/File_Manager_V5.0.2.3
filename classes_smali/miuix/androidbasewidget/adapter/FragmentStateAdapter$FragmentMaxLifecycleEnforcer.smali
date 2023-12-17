.class Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FragmentMaxLifecycleEnforcer"
.end annotation


# instance fields
.field private mDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

.field private mLifecycleObserver:Landroidx/lifecycle/k;

.field private mPageChangeCallback:Landroidx/viewpager2/widget/OriginalViewPager2$i;

.field private mPrimaryItemId:J

.field private mViewPager:Landroidx/viewpager2/widget/OriginalViewPager2;

.field public final synthetic this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPrimaryItemId:J

    .line 10
    return-void
.end method

.method private inferViewPager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/OriginalViewPager2;
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    check-cast p1, Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 11
    return-object p1

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v2, "Expected ViewPager2 instance. Got: "

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0
.end method


# virtual methods
.method public register(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->inferViewPager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 7
    new-instance p1, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$1;

    .line 9
    invoke-direct {p1, p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$1;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V

    .line 12
    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPageChangeCallback:Landroidx/viewpager2/widget/OriginalViewPager2$i;

    .line 14
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 16
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/OriginalViewPager2$i;)V

    .line 19
    new-instance p1, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;

    .line 21
    invoke-direct {p1, p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V

    .line 24
    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 26
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 28
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 31
    new-instance p1, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    .line 33
    invoke-direct {p1, p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V

    .line 36
    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mLifecycleObserver:Landroidx/lifecycle/k;

    .line 38
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 40
    iget-object v0, v0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 42
    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 45
    return-void
.end method

.method public unregister(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->inferViewPager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPageChangeCallback:Landroidx/viewpager2/widget/OriginalViewPager2$i;

    .line 7
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/OriginalViewPager2$i;)V

    .line 10
    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 12
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 14
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 17
    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 19
    iget-object p1, p1, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 21
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mLifecycleObserver:Landroidx/lifecycle/k;

    .line 23
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/l;)V

    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 29
    return-void
.end method

.method public updateFragmentMaxLifecycle(Z)V
    .registers 11

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 3
    invoke-virtual {v0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 12
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getScrollState()I

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_12

    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 21
    iget-object v0, v0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 23
    invoke-virtual {v0}, Landroidx/collection/d;->h()I

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x1

    .line 29
    if-nez v0, :cond_20

    .line 31
    move v0, v2

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v0, v1

    .line 34
    :goto_21
    if-nez v0, :cond_bb

    .line 36
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 38
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2d

    .line 44
    goto/16 :goto_bb

    .line 46
    :cond_2d
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 48
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getCurrentItem()I

    .line 51
    move-result v0

    .line 52
    iget-object v3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 54
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 57
    move-result v3

    .line 58
    if-lt v0, v3, :cond_3c

    .line 60
    return-void

    .line 61
    :cond_3c
    iget-object v3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 63
    invoke-virtual {v3, v0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->getItemId(I)J

    .line 66
    move-result-wide v3

    .line 67
    iget-wide v5, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPrimaryItemId:J

    .line 69
    cmp-long v0, v3, v5

    .line 71
    if-nez v0, :cond_4b

    .line 73
    if-nez p1, :cond_4b

    .line 75
    return-void

    .line 76
    :cond_4b
    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 78
    iget-object p1, p1, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v3, v4, v0}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 87
    if-eqz p1, :cond_bb

    .line 89
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_5f

    .line 95
    goto :goto_bb

    .line 96
    :cond_5f
    iput-wide v3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPrimaryItemId:J

    .line 98
    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 100
    iget-object p1, p1, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 102
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 105
    move-result-object p1

    .line 106
    move v3, v1

    .line 107
    :goto_6a
    iget-object v4, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 109
    iget-object v4, v4, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 111
    invoke-virtual {v4}, Landroidx/collection/d;->h()I

    .line 114
    move-result v4

    .line 115
    if-ge v3, v4, :cond_a9

    .line 117
    iget-object v4, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 119
    iget-object v4, v4, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 121
    invoke-virtual {v4, v3}, Landroidx/collection/d;->e(I)J

    .line 124
    move-result-wide v4

    .line 125
    iget-object v6, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 127
    iget-object v6, v6, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 129
    invoke-virtual {v6, v3}, Landroidx/collection/d;->i(I)Ljava/lang/Object;

    .line 132
    move-result-object v6

    .line 133
    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 135
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 138
    move-result v7

    .line 139
    if-nez v7, :cond_8d

    .line 141
    goto :goto_a6

    .line 142
    :cond_8d
    iget-wide v7, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPrimaryItemId:J

    .line 144
    cmp-long v7, v4, v7

    .line 146
    if-eqz v7, :cond_99

    .line 148
    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 150
    invoke-virtual {p1, v6, v7}, Landroidx/fragment/app/a;->m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/a;

    .line 153
    goto :goto_9a

    .line 154
    :cond_99
    move-object v0, v6

    .line 155
    :goto_9a
    iget-wide v7, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPrimaryItemId:J

    .line 157
    cmp-long v4, v4, v7

    .line 159
    if-nez v4, :cond_a2

    .line 161
    move v4, v2

    .line 162
    goto :goto_a3

    .line 163
    :cond_a2
    move v4, v1

    .line 164
    :goto_a3
    invoke-virtual {v6, v4}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 167
    :goto_a6
    add-int/lit8 v3, v3, 0x1

    .line 169
    goto :goto_6a

    .line 170
    :cond_a9
    if-eqz v0, :cond_b0

    .line 172
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 174
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/a;->m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/a;

    .line 177
    :cond_b0
    iget-object v0, p1, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_bb

    .line 185
    invoke-virtual {p1}, Landroidx/fragment/app/a;->r()V

    .line 188
    :cond_bb
    :goto_bb
    return-void
.end method
