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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V
    .registers 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroidx/collection/d;

    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    iput-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    new-instance v0, Landroidx/collection/d;

    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    iput-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    new-instance v0, Landroidx/collection/d;

    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    iput-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    iput-boolean v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    const/4 p1, 0x1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private static createKey(Ljava/lang/String;J)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ensureFragment(I)V
    .registers 6

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    iget-boolean v3, v2, Landroidx/collection/d;->a:Z

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Landroidx/collection/d;->c()V

    :cond_d
    iget-object v3, v2, Landroidx/collection/d;->b:[J

    iget v2, v2, Landroidx/collection/d;->d:I

    invoke-static {v3, v2, v0, v1}, La/b;->i([JIJ)I

    move-result v2

    if-ltz v2, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    if-nez v2, :cond_31

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->createFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    invoke-virtual {v2, v0, v1, p1}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    :cond_31
    return-void
.end method

.method private isFragmentViewBound(J)Z
    .registers 7

    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    iget-boolean v1, v0, Landroidx/collection/d;->a:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroidx/collection/d;->c()V

    :cond_9
    iget-object v1, v0, Landroidx/collection/d;->b:[J

    iget v0, v0, Landroidx/collection/d;->d:I

    invoke-static {v1, v0, p1, p2}, La/b;->i([JIJ)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    if-eqz v0, :cond_1b

    return v1

    :cond_1b
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v3}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_27

    return v2

    :cond_27
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2e

    return v2

    :cond_2e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    return v1
.end method

.method private static isValidKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p0, p1, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private itemForViewHolder(I)Ljava/lang/Long;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    invoke-virtual {v2}, Landroidx/collection/d;->h()I

    move-result v2

    if-ge v1, v2, :cond_30

    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    invoke-virtual {v2, v1}, Landroidx/collection/d;->i(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2d

    if-nez v0, :cond_25

    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    invoke-virtual {v0, v1}, Landroidx/collection/d;->e(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2d

    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Design assumption violated: a ViewHolder can only be bound to one item at a time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_30
    return-object v0
.end method

.method private static parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J
    .registers 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private removeFragment(J)V
    .registers 6

    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_21

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_21
    invoke-virtual {p0, p1, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/d;->g(J)V

    :cond_2c
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/d;->g(J)V

    return-void

    :cond_38
    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    return-void

    :cond_42
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual {p0, p1, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->c0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    :cond_59
    iget-object v1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v2, v0}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {v2}, Landroidx/fragment/app/a;->r()V

    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/d;->g(J)V

    return-void
.end method

.method private scheduleGracePeriodEnd()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$4;

    invoke-direct {v1, p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$4;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;)V

    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v3, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$5;

    invoke-direct {v3, p0, v0, v1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$5;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .registers 5

    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v1, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;

    invoke-direct {v1, p0, p1, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$3;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    iget-object p1, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    iget-object p1, p1, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p2, Landroidx/fragment/app/s$a;

    invoke-direct {p2, v1}, Landroidx/fragment/app/s$a;-><init>(Landroidx/fragment/app/FragmentManager$l;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .registers 5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p2, :cond_e

    return-void

    :cond_e
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_26
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Design assumption violated."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public containsItem(J)Z
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_11

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-gez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public abstract createFragment(I)Landroidx/fragment/app/Fragment;
.end method

.method public gcFragments()V
    .registers 7

    iget-boolean v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    if-eqz v0, :cond_72

    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_72

    :cond_b
    new-instance v0, Landroidx/collection/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    move v2, v1

    :goto_12
    iget-object v3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    invoke-virtual {v3}, Landroidx/collection/d;->h()I

    move-result v3

    if-ge v2, v3, :cond_35

    iget-object v3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    invoke-virtual {v3, v2}, Landroidx/collection/d;->e(I)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v5

    if-nez v5, :cond_32

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    invoke-virtual {v5, v3, v4}, Landroidx/collection/d;->g(J)V

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_35
    iget-boolean v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    if-nez v2, :cond_59

    iput-boolean v1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    :goto_3b
    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    invoke-virtual {v2}, Landroidx/collection/d;->h()I

    move-result v2

    if-ge v1, v2, :cond_59

    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    invoke-virtual {v2, v1}, Landroidx/collection/d;->e(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->isFragmentViewBound(J)Z

    move-result v4

    if-nez v4, :cond_56

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_59
    new-instance v1, Landroidx/collection/b$a;

    invoke-direct {v1, v0}, Landroidx/collection/b$a;-><init>(Landroidx/collection/b;)V

    :goto_5e
    invoke-virtual {v1}, Landroidx/collection/c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {v1}, Landroidx/collection/c;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->removeFragment(J)V

    goto :goto_5e

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

    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_14

    new-instance v0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-direct {v0, p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-virtual {v0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->register(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    check-cast p1, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->onBindViewHolder(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;I)V
    .registers 10

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    move-result-wide v0

    invoke-virtual {p1}, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_2a

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->removeFragment(J)V

    iget-object v4, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/collection/d;->g(J)V

    :cond_2a
    iget-object v3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    invoke-direct {p0, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->ensureFragment(I)V

    invoke-virtual {p1}, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object p2

    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p2}, Lm0/g0$g;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_51

    new-instance v0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;Landroid/widget/FrameLayout;Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_59

    :cond_51
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Design assumption violated."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_59
    :goto_59
    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->gcFragments()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lmiuix/androidbasewidget/adapter/FragmentViewHolder;
    .registers 3

    invoke-static {p1}, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;->create(Landroid/view/ViewGroup;)Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-virtual {v0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->unregister(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    return-void
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 2

    check-cast p1, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->onFailedToRecycleView(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)Z

    move-result p1

    return p1
.end method

.method public final onFailedToRecycleView(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    check-cast p1, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->onViewAttachedToWindow(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V

    return-void
.end method

.method public final onViewAttachedToWindow(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->placeFragmentInViewHolder(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V

    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->gcFragments()V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    check-cast p1, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->onViewRecycled(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V

    return-void
.end method

.method public final onViewRecycled(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V
    .registers 5

    invoke-virtual {p1}, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->removeFragment(J)V

    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/d;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/d;->g(J)V

    :cond_1e
    return-void
.end method

.method public placeFragmentInViewHolder(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V
    .registers 7

    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const-string v1, "Design assumption violated."

    if-eqz v0, :cond_9b

    invoke-virtual {p1}, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_28

    if-nez v3, :cond_22

    goto :goto_28

    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    :goto_28
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_34

    if-nez v3, :cond_34

    invoke-direct {p0, v0, v2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    return-void

    :cond_34
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_4c

    if-eqz v3, :cond_4c

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eq p1, v2, :cond_4b

    invoke-virtual {p0, v3, v2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_4b
    return-void

    :cond_4c
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {p0, v3, v2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void

    :cond_56
    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v1

    if-nez v1, :cond_89

    invoke-direct {p0, v0, v2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    iget-object v1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v1, v1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v1

    const-string v2, "f"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, p1, v2}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/a;->m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/a;

    invoke-virtual {v1}, Landroidx/fragment/app/a;->r()V

    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-virtual {p1, v3}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->updateFragmentMaxLifecycle(Z)V

    goto :goto_9a

    :cond_89
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentManager;->I:Z

    if-eqz v0, :cond_90

    return-void

    :cond_90
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v1, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;

    invoke-direct {v1, p0, p1}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$2;-><init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    :goto_9a
    return-void

    :cond_9b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final restoreState(Landroid/os/Parcelable;)V
    .registers 9

    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    invoke-virtual {v0}, Landroidx/collection/d;->h()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    if-eqz v0, :cond_9b

    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    invoke-virtual {v0}, Landroidx/collection/d;->h()I

    move-result v0

    if-nez v0, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    if-eqz v0, :cond_9b

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2f
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_37
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "f#"

    invoke-static {v3, v4}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->isValidKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-static {v3, v4}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6, p1, v3}, Landroidx/fragment/app/FragmentManager;->G(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    iget-object v6, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    invoke-virtual {v6, v4, v5, v3}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    goto :goto_37

    :cond_5b
    const-string v4, "s#"

    invoke-static {v3, v4}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->isValidKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-static {v3, v4}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {p0, v4, v5}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v6

    if-eqz v6, :cond_37

    iget-object v6, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    invoke-virtual {v6, v4, v5, v3}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    goto :goto_37

    :cond_79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected key in savedState: "

    invoke-static {v0, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_85
    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    invoke-virtual {p1}, Landroidx/collection/d;->h()I

    move-result p1

    if-nez p1, :cond_8e

    move v1, v2

    :cond_8e
    if-nez v1, :cond_9a

    iput-boolean v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    iput-boolean v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->gcFragments()V

    invoke-direct {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->scheduleGracePeriodEnd()V

    :cond_9a
    return-void

    :cond_9b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expected the adapter to be \'fresh\' while restoring state."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final saveState()Landroid/os/Parcelable;
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    invoke-virtual {v1}, Landroidx/collection/d;->h()I

    move-result v1

    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    invoke-virtual {v2}, Landroidx/collection/d;->h()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_14
    iget-object v3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    invoke-virtual {v3}, Landroidx/collection/d;->h()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_41

    iget-object v3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    invoke-virtual {v3, v2}, Landroidx/collection/d;->e(I)J

    move-result-wide v5

    iget-object v3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/d;

    invoke-virtual {v3, v5, v6, v4}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_3e

    const-string v4, "f#"

    invoke-static {v4, v5, v6}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v0, v4, v3}, Landroidx/fragment/app/FragmentManager;->X(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_41
    :goto_41
    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    invoke-virtual {v2}, Landroidx/collection/d;->h()I

    move-result v2

    if-ge v1, v2, :cond_69

    iget-object v2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    invoke-virtual {v2, v1}, Landroidx/collection/d;->e(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v5

    if-eqz v5, :cond_66

    const-string v5, "s#"

    invoke-static {v5, v2, v3}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/d;

    invoke-virtual {v6, v2, v3, v4}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_69
    return-object v0
.end method

.method public final setHasStableIds(Z)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldDelayFragmentTransactions()Z
    .registers 2

    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->Q()Z

    move-result v0

    return v0
.end method
