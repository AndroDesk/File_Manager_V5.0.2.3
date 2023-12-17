.class public abstract Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FragmentStateAdapter.java"

# interfaces
.implements Lmiuix/androidbasewidget/adapter/StatefulAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$DataSetChangeObserver;,
        Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lmiuix/androidbasewidget/adapter/FragmentViewHolder;",
        ">;",
        "Lmiuix/androidbasewidget/adapter/StatefulAdapter;"
    }
.end annotation


# static fields
.field private static final GRACE_WINDOW_TIME_MS:J = 0x2710L

.field private static final KEY_PREFIX_FRAGMENT:Ljava/lang/String; = "f#"

.field private static final KEY_PREFIX_STATE:Ljava/lang/String; = "s#"


# instance fields
.field public final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mFragmentMaxLifecycleEnforcer:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

.field public final mFragments:Landroidx/collection/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/d<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHasStaleFragments:Z

.field public mIsInGracePeriod:Z

.field private final mItemIdToViewHolder:Landroidx/collection/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field private final mSavedStates:Landroidx/collection/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/d<",
            "Landroidx/fragment/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    new-instance v0, Landroidx/collection/d;

    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    iput-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 5
    new-instance v0, Landroidx/collection/d;

    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    iput-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    .line 6
    new-instance v0, Landroidx/collection/d;

    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    iput-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    .line 8
    iput-boolean v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    .line 9
    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 10
    iput-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    const/4 p1, 0x1

    .line 11
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private static createKey(Ljava/lang/String;J)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private ensureFragment(I)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->getItemId(I)J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 7
    iget-boolean v3, v2, Landroidx/collection/d;->a:Z

    .line 9
    if-eqz v3, :cond_d

    .line 11
    invoke-virtual {v2}, Landroidx/collection/d;->c()V

    .line 14
    :cond_d
    iget-object v3, v2, Landroidx/collection/d;->b:[J

    .line 16
    iget v2, v2, Landroidx/collection/d;->d:I

    .line 18
    invoke-static {v3, v2, v0, v1}, La/b;->i([JIJ)I

    .line 21
    move-result v2

    .line 22
    if-ltz v2, :cond_19

    .line 24
    const/4 v2, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v2, 0x0

    .line 27
    :goto_1a
    if-nez v2, :cond_31

    .line 29
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->createFragment(I)Landroidx/fragment/app/Fragment;

    .line 32
    move-result-object p1

    .line 33
    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v2, v0, v1, v3}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroidx/fragment/app/Fragment$SavedState;

    .line 42
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    .line 45
    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 47
    invoke-virtual {v2, v0, v1, p1}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 50
    :cond_31
    return-void
.end method

.method private isFragmentViewBound(J)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    .line 3
    iget-boolean v1, v0, Landroidx/collection/d;->a:Z

    .line 5
    if-eqz v1, :cond_9

    .line 7
    invoke-virtual {v0}, Landroidx/collection/d;->c()V

    .line 10
    :cond_9
    iget-object v1, v0, Landroidx/collection/d;->b:[J

    .line 12
    iget v0, v0, Landroidx/collection/d;->d:I

    .line 14
    invoke-static {v1, v0, p1, p2}, La/b;->i([JIJ)I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-ltz v0, :cond_17

    .line 22
    move v0, v1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v0, v2

    .line 25
    :goto_18
    if-eqz v0, :cond_1b

    .line 27
    return v1

    .line 28
    :cond_1b
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v0, p1, p2, v3}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 37
    if-nez p1, :cond_27

    .line 39
    return v2

    .line 40
    :cond_27
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_2e

    .line 46
    return v2

    .line 47
    :cond_2e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_35

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move v1, v2

    .line 55
    :goto_36
    return v1
.end method

.method private static isValidKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_12

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result p0

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    move-result p1

    .line 15
    if-le p0, p1, :cond_12

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    return p0
.end method

.method private itemForViewHolder(I)Ljava/lang/Long;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    .line 5
    invoke-virtual {v2}, Landroidx/collection/d;->h()I

    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_30

    .line 11
    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    .line 13
    invoke-virtual {v2, v1}, Landroidx/collection/d;->i(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/Integer;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v2

    .line 23
    if-ne v2, p1, :cond_2d

    .line 25
    if-nez v0, :cond_25

    .line 27
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    .line 29
    invoke-virtual {v0, v1}, Landroidx/collection/d;->e(I)J

    .line 32
    move-result-wide v2

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    move-result-object v0

    .line 37
    goto :goto_2d

    .line 38
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    const-string v0, "Design assumption violated: a ViewHolder can only be bound to one item at a time."

    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p1

    .line 46
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_2

    .line 49
    :cond_30
    return-object v0
.end method

.method private static parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method private removeFragment(J)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 10
    if-nez v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_21

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_21

    .line 29
    check-cast v1, Landroid/widget/FrameLayout;

    .line 31
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 34
    :cond_21
    invoke-virtual {p0, p1, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->containsItem(J)Z

    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2c

    .line 40
    iget-object v1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    .line 42
    invoke-virtual {v1, p1, p2}, Landroidx/collection/d;->g(J)V

    .line 45
    :cond_2c
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_38

    .line 51
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 53
    invoke-virtual {v0, p1, p2}, Landroidx/collection/d;->g(J)V

    .line 56
    return-void

    .line 57
    :cond_38
    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_42

    .line 63
    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    .line 66
    return-void

    .line 67
    :cond_42
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_59

    .line 73
    invoke-virtual {p0, p1, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->containsItem(J)Z

    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_59

    .line 79
    iget-object v1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    .line 81
    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 83
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->c0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, p1, p2, v2}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 90
    :cond_59
    iget-object v1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    new-instance v2, Landroidx/fragment/app/a;

    .line 97
    invoke-direct {v2, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 100
    invoke-virtual {v2, v0}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 103
    invoke-virtual {v2}, Landroidx/fragment/app/a;->r()V

    .line 106
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 108
    invoke-virtual {v0, p1, p2}, Landroidx/collection/d;->g(J)V

    .line 111
    return-void
.end method

.method private scheduleGracePeriodEnd()V
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    new-instance v1, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$4;

    .line 12
    invoke-direct {v1, p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$4;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;)V

    .line 15
    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 17
    new-instance v3, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$5;

    .line 19
    invoke-direct {v3, p0, v0, v1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$5;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 22
    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 25
    const-wide/16 v2, 0x2710

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    return-void
.end method

.method private scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    new-instance v1, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;

    .line 5
    invoke-direct {v1, p0, p1, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    .line 8
    iget-object p1, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 10
    iget-object p1, p1, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    new-instance p2, Landroidx/fragment/app/s$a;

    .line 14
    invoke-direct {p2, v1}, Landroidx/fragment/app/s$a;-><init>(Landroidx/fragment/app/FragmentManager$l;)V

    .line 17
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method


# virtual methods
.method public addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-gt v0, v1, :cond_2a

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    move-result-object v0

    .line 12
    if-ne v0, p2, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_17

    .line 21
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 24
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_26

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/ViewGroup;

    .line 36
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    :cond_26
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    return-void

    .line 43
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    const-string p2, "Design assumption violated."

    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
.end method

.method public containsItem(J)Z
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-ltz v0, :cond_11

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 10
    move-result v0

    .line 11
    int-to-long v0, v0

    .line 12
    cmp-long p1, p1, v0

    .line 14
    if-gez p1, :cond_11

    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    :goto_12
    return p1
.end method

.method public abstract createFragment(I)Landroidx/fragment/app/Fragment;
.end method

.method public gcFragments()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    .line 3
    if-eqz v0, :cond_72

    .line 5
    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_72

    .line 12
    :cond_b
    new-instance v0, Landroidx/collection/b;

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    .line 18
    move v2, v1

    .line 19
    :goto_12
    iget-object v3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 21
    invoke-virtual {v3}, Landroidx/collection/d;->h()I

    .line 24
    move-result v3

    .line 25
    if-ge v2, v3, :cond_35

    .line 27
    iget-object v3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 29
    invoke-virtual {v3, v2}, Landroidx/collection/d;->e(I)J

    .line 32
    move-result-wide v3

    .line 33
    invoke-virtual {p0, v3, v4}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->containsItem(J)Z

    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_32

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v0, v5}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v5, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    .line 48
    invoke-virtual {v5, v3, v4}, Landroidx/collection/d;->g(J)V

    .line 51
    :cond_32
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_12

    .line 54
    :cond_35
    iget-boolean v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    .line 56
    if-nez v2, :cond_59

    .line 58
    iput-boolean v1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    .line 60
    :goto_3b
    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 62
    invoke-virtual {v2}, Landroidx/collection/d;->h()I

    .line 65
    move-result v2

    .line 66
    if-ge v1, v2, :cond_59

    .line 68
    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 70
    invoke-virtual {v2, v1}, Landroidx/collection/d;->e(I)J

    .line 73
    move-result-wide v2

    .line 74
    invoke-direct {p0, v2, v3}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->isFragmentViewBound(J)Z

    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_56

    .line 80
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_56
    add-int/lit8 v1, v1, 0x1

    .line 89
    goto :goto_3b

    .line 90
    :cond_59
    new-instance v1, Landroidx/collection/b$a;

    .line 92
    invoke-direct {v1, v0}, Landroidx/collection/b$a;-><init>(Landroidx/collection/b;)V

    .line 95
    :goto_5e
    invoke-virtual {v1}, Landroidx/collection/c;->hasNext()Z

    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_72

    .line 101
    invoke-virtual {v1}, Landroidx/collection/c;->next()Ljava/lang/Object;

    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Ljava/lang/Long;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 110
    move-result-wide v2

    .line 111
    invoke-direct {p0, v2, v3}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->removeFragment(J)V

    .line 114
    goto :goto_5e

    .line 115
    :cond_72
    :goto_72
    return-void
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    if-eqz v0, :cond_14

    .line 10
    new-instance v0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    .line 12
    invoke-direct {v0, p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;)V

    .line 15
    iput-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    .line 17
    invoke-virtual {v0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->register(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 20
    return-void

    .line 21
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 26
    throw p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    check-cast p1, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->onBindViewHolder(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;I)V
    .registers 10

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    .line 4
    invoke-direct {p0, v2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 5
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_2a

    .line 6
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->removeFragment(J)V

    .line 7
    iget-object v4, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/collection/d;->g(J)V

    .line 8
    :cond_2a
    iget-object v3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->ensureFragment(I)V

    .line 10
    invoke-virtual {p1}, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object p2

    .line 11
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 12
    invoke-static {p2}, Lm0/g0$g;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_51

    .line 14
    new-instance v0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;Landroid/widget/FrameLayout;Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_59

    .line 15
    :cond_51
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Design assumption violated."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_59
    :goto_59
    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->gcFragments()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lmiuix/androidbasewidget/adapter/FragmentViewHolder;
    .registers 3

    .line 2
    invoke-static {p1}, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;->create(Landroid/view/ViewGroup;)Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->unregister(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    .line 9
    return-void
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 2

    .line 1
    check-cast p1, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->onFailedToRecycleView(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final onFailedToRecycleView(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    .line 1
    check-cast p1, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->onViewAttachedToWindow(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V

    return-void
.end method

.method public final onViewAttachedToWindow(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->placeFragmentInViewHolder(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V

    .line 3
    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->gcFragments()V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    .line 1
    check-cast p1, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->onViewRecycled(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V

    return-void
.end method

.method public final onViewRecycled(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V
    .registers 5

    .line 2
    invoke-virtual {p1}, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 3
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->removeFragment(J)V

    .line 5
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/d;->g(J)V

    :cond_1e
    return-void
.end method

.method public placeFragmentInViewHolder(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    .line 6
    move-result-wide v1

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 14
    const-string v1, "Design assumption violated."

    .line 16
    if-eqz v0, :cond_9b

    .line 18
    invoke-virtual {p1}, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_28

    .line 32
    if-nez v3, :cond_22

    .line 34
    goto :goto_28

    .line 35
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1

    .line 41
    :cond_28
    :goto_28
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_34

    .line 47
    if-nez v3, :cond_34

    .line 49
    invoke-direct {p0, v0, v2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    .line 52
    return-void

    .line 53
    :cond_34
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4c

    .line 59
    if-eqz v3, :cond_4c

    .line 61
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_4c

    .line 67
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 70
    move-result-object p1

    .line 71
    if-eq p1, v2, :cond_4b

    .line 73
    invoke-virtual {p0, v3, v2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 76
    :cond_4b
    return-void

    .line 77
    :cond_4c
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_56

    .line 83
    invoke-virtual {p0, v3, v2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 86
    return-void

    .line 87
    :cond_56
    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_89

    .line 93
    invoke-direct {p0, v0, v2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    .line 96
    iget-object v1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 98
    invoke-static {v1, v1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 101
    move-result-object v1

    .line 102
    const-string v2, "f"

    .line 104
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    .line 111
    move-result-wide v3

    .line 112
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    const/4 v2, 0x1

    .line 120
    const/4 v3, 0x0

    .line 121
    invoke-virtual {v1, v3, v0, p1, v2}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 124
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 126
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/a;->m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/a;

    .line 129
    invoke-virtual {v1}, Landroidx/fragment/app/a;->r()V

    .line 132
    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    .line 134
    invoke-virtual {p1, v3}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->updateFragmentMaxLifecycle(Z)V

    .line 137
    goto :goto_9a

    .line 138
    :cond_89
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 140
    iget-boolean v0, v0, Landroidx/fragment/app/FragmentManager;->I:Z

    .line 142
    if-eqz v0, :cond_90

    .line 144
    return-void

    .line 145
    :cond_90
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 147
    new-instance v1, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;

    .line 149
    invoke-direct {v1, p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V

    .line 152
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 155
    :goto_9a
    return-void

    .line 156
    :cond_9b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 158
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 161
    throw p1
.end method

.method public final restoreState(Landroid/os/Parcelable;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    .line 3
    invoke-virtual {v0}, Landroidx/collection/d;->h()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_c

    .line 11
    move v0, v2

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v0, v1

    .line 14
    :goto_d
    if-eqz v0, :cond_9b

    .line 16
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 18
    invoke-virtual {v0}, Landroidx/collection/d;->h()I

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_19

    .line 24
    move v0, v2

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v0, v1

    .line 27
    :goto_1a
    if-eqz v0, :cond_9b

    .line 29
    check-cast p1, Landroid/os/Bundle;

    .line 31
    invoke-virtual {p1}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_2f

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 48
    :cond_2f
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v0

    .line 56
    :cond_37
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_85

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ljava/lang/String;

    .line 68
    const-string v4, "f#"

    .line 70
    invoke-static {v3, v4}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->isValidKey(Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_5b

    .line 76
    invoke-static {v3, v4}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J

    .line 79
    move-result-wide v4

    .line 80
    iget-object v6, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 82
    invoke-virtual {v6, p1, v3}, Landroidx/fragment/app/FragmentManager;->G(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 85
    move-result-object v3

    .line 86
    iget-object v6, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 88
    invoke-virtual {v6, v4, v5, v3}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 91
    goto :goto_37

    .line 92
    :cond_5b
    const-string v4, "s#"

    .line 94
    invoke-static {v3, v4}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->isValidKey(Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_79

    .line 100
    invoke-static {v3, v4}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J

    .line 103
    move-result-wide v4

    .line 104
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Landroidx/fragment/app/Fragment$SavedState;

    .line 110
    invoke-virtual {p0, v4, v5}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->containsItem(J)Z

    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_37

    .line 116
    iget-object v6, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    .line 118
    invoke-virtual {v6, v4, v5, v3}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 121
    goto :goto_37

    .line 122
    :cond_79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 124
    const-string v0, "Unexpected key in savedState: "

    .line 126
    invoke-static {v0, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p1

    .line 134
    :cond_85
    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 136
    invoke-virtual {p1}, Landroidx/collection/d;->h()I

    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_8e

    .line 142
    move v1, v2

    .line 143
    :cond_8e
    if-nez v1, :cond_9a

    .line 145
    iput-boolean v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    .line 147
    iput-boolean v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    .line 149
    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->gcFragments()V

    .line 152
    invoke-direct {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->scheduleGracePeriodEnd()V

    .line 155
    :cond_9a
    return-void

    .line 156
    :cond_9b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 158
    const-string v0, "Expected the adapter to be \'fresh\' while restoring state."

    .line 160
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    throw p1
.end method

.method public final saveState()Landroid/os/Parcelable;
    .registers 8

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    iget-object v1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 5
    invoke-virtual {v1}, Landroidx/collection/d;->h()I

    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    .line 11
    invoke-virtual {v2}, Landroidx/collection/d;->h()I

    .line 14
    move-result v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v1

    .line 21
    :goto_14
    iget-object v3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 23
    invoke-virtual {v3}, Landroidx/collection/d;->h()I

    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    if-ge v2, v3, :cond_41

    .line 30
    iget-object v3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 32
    invoke-virtual {v3, v2}, Landroidx/collection/d;->e(I)J

    .line 35
    move-result-wide v5

    .line 36
    iget-object v3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    .line 38
    invoke-virtual {v3, v5, v6, v4}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 44
    if-eqz v3, :cond_3e

    .line 46
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_3e

    .line 52
    const-string v4, "f#"

    .line 54
    invoke-static {v4, v5, v6}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    iget-object v5, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 60
    invoke-virtual {v5, v0, v4, v3}, Landroidx/fragment/app/FragmentManager;->X(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 63
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_14

    .line 66
    :cond_41
    :goto_41
    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    .line 68
    invoke-virtual {v2}, Landroidx/collection/d;->h()I

    .line 71
    move-result v2

    .line 72
    if-ge v1, v2, :cond_69

    .line 74
    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    .line 76
    invoke-virtual {v2, v1}, Landroidx/collection/d;->e(I)J

    .line 79
    move-result-wide v2

    .line 80
    invoke-virtual {p0, v2, v3}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->containsItem(J)Z

    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_66

    .line 86
    const-string v5, "s#"

    .line 88
    invoke-static {v5, v2, v3}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    .line 91
    move-result-object v5

    .line 92
    iget-object v6, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    .line 94
    invoke-virtual {v6, v2, v3, v4}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Landroid/os/Parcelable;

    .line 100
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    :cond_66
    add-int/lit8 v1, v1, 0x1

    .line 105
    goto :goto_41

    .line 106
    :cond_69
    return-object v0
.end method

.method public final setHasStableIds(Z)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public shouldDelayFragmentTransactions()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->Q()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
