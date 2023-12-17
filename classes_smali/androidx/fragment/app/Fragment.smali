.class public Landroidx/fragment/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/m;
.implements Landroidx/lifecycle/f0;
.implements Landroidx/lifecycle/g;
.implements Lc1/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/Fragment$j;,
        Landroidx/fragment/app/Fragment$InstantiationException;,
        Landroidx/fragment/app/Fragment$SavedState;,
        Landroidx/fragment/app/Fragment$k;
    }
.end annotation


# static fields
.field public static final ACTIVITY_CREATED:I = 0x4

.field public static final ATTACHED:I = 0x0

.field public static final AWAITING_ENTER_EFFECTS:I = 0x6

.field public static final AWAITING_EXIT_EFFECTS:I = 0x3

.field public static final CREATED:I = 0x1

.field public static final INITIALIZING:I = -0x1

.field public static final RESUMED:I = 0x7

.field public static final STARTED:I = 0x5

.field public static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field public static final VIEW_CREATED:I = 0x2


# instance fields
.field public mAdded:Z

.field public mAnimationInfo:Landroidx/fragment/app/Fragment$j;

.field public mArguments:Landroid/os/Bundle;

.field public mBackStackNesting:I

.field public mBeingSaved:Z

.field private mCalled:Z

.field public mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

.field public mContainer:Landroid/view/ViewGroup;

.field public mContainerId:I

.field private mContentLayoutId:I

.field public mDefaultFactory:Landroidx/lifecycle/c0$b;

.field public mDeferStart:Z

.field public mDetached:Z

.field public mFragmentId:I

.field public mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field public mFromLayout:Z

.field public mHasMenu:Z

.field public mHidden:Z

.field public mHiddenChanged:Z

.field public mHost:Landroidx/fragment/app/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/q<",
            "*>;"
        }
    .end annotation
.end field

.field public mInLayout:Z

.field public mIsCreated:Z

.field private mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field public mLifecycleRegistry:Landroidx/lifecycle/n;

.field public mMaxState:Landroidx/lifecycle/Lifecycle$State;

.field public mMenuVisible:Z

.field private final mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOnPreAttachedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment$k;",
            ">;"
        }
    .end annotation
.end field

.field public mParentFragment:Landroidx/fragment/app/Fragment;

.field public mPerformedCreateView:Z

.field public mPostponedDurationRunnable:Ljava/lang/Runnable;

.field public mPreviousWho:Ljava/lang/String;

.field public mRemoving:Z

.field public mRestored:Z

.field public mRetainInstance:Z

.field public mRetainInstanceChangedWhileDetached:Z

.field public mSavedFragmentState:Landroid/os/Bundle;

.field private final mSavedStateAttachListener:Landroidx/fragment/app/Fragment$k;

.field public mSavedStateRegistryController:Lc1/d;

.field public mSavedUserVisibleHint:Ljava/lang/Boolean;

.field public mSavedViewRegistryState:Landroid/os/Bundle;

.field public mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field public mState:I

.field public mTag:Ljava/lang/String;

.field public mTarget:Landroidx/fragment/app/Fragment;

.field public mTargetRequestCode:I

.field public mTargetWho:Ljava/lang/String;

.field public mUserVisibleHint:Z

.field public mView:Landroid/view/View;

.field public mViewLifecycleOwner:Landroidx/fragment/app/j0;

.field public mViewLifecycleOwnerLiveData:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Landroidx/lifecycle/m;",
            ">;"
        }
    .end annotation
.end field

.field public mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    .line 6
    new-instance v0, Landroidx/fragment/app/u;

    invoke-direct {v0}, Landroidx/fragment/app/u;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 9
    new-instance v0, Landroidx/fragment/app/Fragment$b;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    .line 10
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 11
    new-instance v0, Landroidx/lifecycle/q;

    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/q;

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Landroidx/fragment/app/Fragment$c;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$c;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateAttachListener:Landroidx/fragment/app/Fragment$k;

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->initLifecycle()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 17
    iput p1, p0, Landroidx/fragment/app/Fragment;->mContentLayoutId:I

    return-void
.end method

.method private ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/fragment/app/Fragment$j;

    .line 7
    invoke-direct {v0}, Landroidx/fragment/app/Fragment$j;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 14
    return-object v0
.end method

.method private getMinimumMaxLifecycleState()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 3
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 5
    if-eq v0, v1, :cond_1a

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 9
    if-nez v1, :cond_b

    .line 11
    goto :goto_1a

    .line 12
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 18
    invoke-direct {v1}, Landroidx/fragment/app/Fragment;->getMinimumMaxLifecycleState()I

    .line 21
    move-result v1

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1a
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method private getTargetFragment(Z)Landroidx/fragment/app/Fragment;
    .registers 5

    if-eqz p1, :cond_29

    .line 2
    sget-object p1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 3
    new-instance p1, Landroidx/fragment/app/strictmode/GetTargetFragmentUsageViolation;

    invoke-direct {p1, p0}, Landroidx/fragment/app/strictmode/GetTargetFragmentUsageViolation;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    invoke-static {p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->c(Landroidx/fragment/app/strictmode/Violation;)V

    .line 5
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    move-result-object v0

    .line 6
    iget-object v1, v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->a:Ljava/util/Set;

    .line 7
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_TARGET_FRAGMENT_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroidx/fragment/app/strictmode/GetTargetFragmentUsageViolation;

    invoke-static {v0, v1, v2}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->f(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 9
    invoke-static {v0, p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->b(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Landroidx/fragment/app/strictmode/Violation;)V

    .line 10
    :cond_29
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_2e

    return-object p1

    .line 11
    :cond_2e
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz p1, :cond_3b

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 12
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_3b
    const/4 p1, 0x0

    return-object p1
.end method

.method private initLifecycle()V
    .registers 3

    .line 1
    new-instance v0, Landroidx/lifecycle/n;

    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/m;)V

    .line 6
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 8
    new-instance v0, Lc1/d;

    .line 10
    invoke-direct {v0, p0}, Lc1/d;-><init>(Lc1/e;)V

    .line 13
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Lc1/d;

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/c0$b;

    .line 18
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    .line 20
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedStateAttachListener:Landroidx/fragment/app/Fragment$k;

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_20

    .line 28
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateAttachListener:Landroidx/fragment/app/Fragment$k;

    .line 30
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;->registerOnPreAttachListener(Landroidx/fragment/app/Fragment$k;)V

    .line 33
    :cond_20
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    .line 2
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 3
    invoke-static {p0, p1}, Landroidx/fragment/app/p;->loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_2b

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 6
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_2b
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_2b} :catch_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_2b} :catch_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_2b} :catch_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_2b} :catch_2c

    :cond_2b
    return-object p0

    :catch_2c
    move-exception p0

    .line 7
    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    const-string v0, ": calling Fragment constructor caused an exception"

    .line 8
    invoke-static {v1, p1, v0}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_39
    move-exception p0

    .line 10
    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    const-string v0, ": could not find Fragment constructor"

    .line 11
    invoke-static {v1, p1, v0}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_46
    move-exception p0

    .line 13
    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 14
    invoke-static {v1, p1, v0}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_51
    move-exception p0

    .line 16
    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 17
    invoke-static {v1, p1, v0}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private prepareCallInternal(Lg/a;Lp/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/a<",
            "TI;TO;>;",
            "Lp/a<",
            "Ljava/lang/Void;",
            "Landroidx/activity/result/e;",
            ">;",
            "Landroidx/activity/result/a<",
            "TO;>;)",
            "Landroidx/activity/result/b<",
            "TI;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-gt v0, v1, :cond_1e

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 11
    new-instance v1, Landroidx/fragment/app/Fragment$i;

    .line 13
    move-object v2, v1

    .line 14
    move-object v3, p0

    .line 15
    move-object v4, p2

    .line 16
    move-object v5, v0

    .line 17
    move-object v6, p1

    .line 18
    move-object v7, p3

    .line 19
    invoke-direct/range {v2 .. v7}, Landroidx/fragment/app/Fragment$i;-><init>(Landroidx/fragment/app/Fragment;Lp/a;Ljava/util/concurrent/atomic/AtomicReference;Lg/a;Landroidx/activity/result/a;)V

    .line 22
    invoke-direct {p0, v1}, Landroidx/fragment/app/Fragment;->registerOnPreAttachListener(Landroidx/fragment/app/Fragment$k;)V

    .line 25
    new-instance p1, Landroidx/fragment/app/Fragment$a;

    .line 27
    invoke-direct {p1, v0}, Landroidx/fragment/app/Fragment$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 30
    return-object p1

    .line 31
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    const-string p2, "Fragment "

    .line 35
    const-string p3, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."

    .line 37
    invoke-static {p2, p0, p3}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1
.end method

.method private registerOnPreAttachListener(Landroidx/fragment/app/Fragment$k;)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 3
    if-ltz v0, :cond_8

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment$k;->a()V

    .line 8
    goto :goto_d

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :goto_d
    return-void
.end method

.method private restoreViewState()V
    .registers 3

    const/4 v0, 0x3

    .line 23
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto RESTORE_VIEW_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_26

    .line 26
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    :cond_26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public callStartTransitionListener(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$j;->s:Z

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 10
    if-eqz v0, :cond_32

    .line 12
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 14
    if-eqz v0, :cond_32

    .line 16
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 18
    if-eqz v1, :cond_32

    .line 20
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->K()Landroidx/fragment/app/l0;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroidx/fragment/app/SpecialEffectsController;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/l0;)Landroidx/fragment/app/SpecialEffectsController;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController;->h()V

    .line 31
    if-eqz p1, :cond_2f

    .line 33
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/q;->getHandler()Landroid/os/Handler;

    .line 38
    move-result-object p1

    .line 39
    new-instance v1, Landroidx/fragment/app/Fragment$e;

    .line 41
    invoke-direct {v1, v0}, Landroidx/fragment/app/Fragment$e;-><init>(Landroidx/fragment/app/SpecialEffectsController;)V

    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController;->c()V

    .line 51
    :cond_32
    :goto_32
    return-void
.end method

.method public createFragmentContainer()Landroidx/fragment/app/n;
    .registers 2

    .line 1
    new-instance v0, Landroidx/fragment/app/Fragment$f;

    .line 3
    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$f;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 6
    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    const-string v0, "mFragmentId=#"

    .line 6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget v0, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    const-string v0, " mContainerId=#"

    .line 20
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    iget v0, p0, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    const-string v0, " mTag="

    .line 34
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 39
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    const-string v0, "mState="

    .line 47
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 52
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 55
    const-string v0, " mWho="

    .line 57
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 62
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    const-string v0, " mBackStackNesting="

    .line 67
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    iget v0, p0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 72
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 75
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    const-string v0, "mAdded="

    .line 80
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 85
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 88
    const-string v0, " mRemoving="

    .line 90
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 95
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 98
    const-string v0, " mFromLayout="

    .line 100
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 105
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 108
    const-string v0, " mInLayout="

    .line 110
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 115
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 118
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    const-string v0, "mHidden="

    .line 123
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 128
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 131
    const-string v0, " mDetached="

    .line 133
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 138
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 141
    const-string v0, " mMenuVisible="

    .line 143
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 148
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 151
    const-string v0, " mHasMenu="

    .line 153
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 158
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 161
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    const-string v0, "mRetainInstance="

    .line 166
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 171
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 174
    const-string v0, " mUserVisibleHint="

    .line 176
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 181
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 184
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 186
    if-eqz v0, :cond_c8

    .line 188
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    const-string v0, "mFragmentManager="

    .line 193
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 198
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 201
    :cond_c8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 203
    if-eqz v0, :cond_d9

    .line 205
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    const-string v0, "mHost="

    .line 210
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 215
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 218
    :cond_d9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 220
    if-eqz v0, :cond_ea

    .line 222
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    const-string v0, "mParentFragment="

    .line 227
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 232
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 235
    :cond_ea
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 237
    if-eqz v0, :cond_fb

    .line 239
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    const-string v0, "mArguments="

    .line 244
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 249
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 252
    :cond_fb
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 254
    if-eqz v0, :cond_10c

    .line 256
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    const-string v0, "mSavedFragmentState="

    .line 261
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 266
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 269
    :cond_10c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 271
    if-eqz v0, :cond_11d

    .line 273
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    const-string v0, "mSavedViewState="

    .line 278
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 283
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 286
    :cond_11d
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 288
    if-eqz v0, :cond_12e

    .line 290
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    const-string v0, "mSavedViewRegistryState="

    .line 295
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 300
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 303
    :cond_12e
    const/4 v0, 0x0

    .line 304
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 307
    move-result-object v0

    .line 308
    if-eqz v0, :cond_14a

    .line 310
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    const-string v1, "mTarget="

    .line 315
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 321
    const-string v0, " mTargetRequestCode="

    .line 323
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    iget v0, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 328
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 331
    :cond_14a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 334
    const-string v0, "mPopDirection="

    .line 336
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    .line 342
    move-result v0

    .line 343
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 346
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    .line 349
    move-result v0

    .line 350
    if-eqz v0, :cond_16e

    .line 352
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    const-string v0, "getEnterAnim="

    .line 357
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    .line 363
    move-result v0

    .line 364
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 367
    :cond_16e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_183

    .line 373
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    const-string v0, "getExitAnim="

    .line 378
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    .line 384
    move-result v0

    .line 385
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 388
    :cond_183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_198

    .line 394
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    const-string v0, "getPopEnterAnim="

    .line 399
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    .line 405
    move-result v0

    .line 406
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 409
    :cond_198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    .line 412
    move-result v0

    .line 413
    if-eqz v0, :cond_1ad

    .line 415
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    const-string v0, "getPopExitAnim="

    .line 420
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    .line 426
    move-result v0

    .line 427
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 430
    :cond_1ad
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 432
    if-eqz v0, :cond_1be

    .line 434
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    const-string v0, "mContainer="

    .line 439
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 444
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 447
    :cond_1be
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 449
    if-eqz v0, :cond_1cf

    .line 451
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 454
    const-string v0, "mView="

    .line 456
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 461
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 464
    :cond_1cf
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    .line 467
    move-result-object v0

    .line 468
    if-eqz v0, :cond_1e4

    .line 470
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    const-string v0, "mAnimatingAway="

    .line 475
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 485
    :cond_1e4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 488
    move-result-object v0

    .line 489
    if-eqz v0, :cond_1f1

    .line 491
    invoke-static {p0}, La1/a;->a(Landroidx/lifecycle/m;)La1/b;

    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {v0, p1, p3}, La1/b;->b(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 498
    :cond_1f1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    .line 503
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    const-string v1, "Child "

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 516
    const-string v1, ":"

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    move-result-object v0

    .line 525
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 530
    const-string v1, "  "

    .line 532
    invoke-static {p1, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    move-result-object p1

    .line 536
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManager;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-object p0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 12
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 14
    invoke-virtual {v0, p1}, Landroidx/fragment/app/a0;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public generateActivityResultKey()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "fragment_"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "_rq#"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public final getActivity()Landroidx/fragment/app/FragmentActivity;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_c

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/q;->getActivity()Landroid/app/Activity;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 13
    :goto_c
    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/Fragment$j;->p:Ljava/lang/Boolean;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_e

    .line 10
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    move-result v0

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    :goto_e
    const/4 v0, 0x1

    .line 16
    :goto_f
    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/Fragment$j;->o:Ljava/lang/Boolean;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_e

    .line 10
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    move-result v0

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    :goto_e
    const/4 v0, 0x1

    .line 16
    :goto_f
    return v0
.end method

.method public getAnimatingAway()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    return-object v1
.end method

.method public final getArguments()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 3
    return-object v0
.end method

.method public final getChildFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 7
    return-object v0

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    const-string v1, "Fragment "

    .line 12
    const-string v2, " has not been attached yet."

    .line 14
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/q;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getDefaultViewModelCreationExtras()Lz0/a;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    :goto_8
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 11
    if-eqz v1, :cond_1a

    .line 13
    instance-of v1, v0, Landroid/app/Application;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Landroid/app/Application;

    .line 19
    goto :goto_1b

    .line 20
    :cond_13
    check-cast v0, Landroid/content/ContextWrapper;

    .line 22
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    goto :goto_8

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    if-nez v0, :cond_43

    .line 30
    const/4 v1, 0x3

    .line 31
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_43

    .line 37
    const-string v1, "Could not find Application instance from Context "

    .line 39
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string v2, ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory"

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    const-string v2, "FragmentManager"

    .line 65
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_43
    new-instance v1, Lz0/c;

    .line 70
    invoke-direct {v1}, Lz0/c;-><init>()V

    .line 73
    if-eqz v0, :cond_51

    .line 75
    sget-object v2, Landroidx/lifecycle/b0;->a:Landroidx/lifecycle/b0;

    .line 77
    iget-object v3, v1, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 79
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_51
    sget-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->a:Landroidx/lifecycle/SavedStateHandleSupport$b;

    .line 84
    iget-object v2, v1, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 86
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->b:Landroidx/lifecycle/SavedStateHandleSupport$c;

    .line 91
    iget-object v2, v1, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 93
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_70

    .line 102
    sget-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->c:Landroidx/lifecycle/SavedStateHandleSupport$a;

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 107
    move-result-object v2

    .line 108
    iget-object v3, v1, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 110
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_70
    return-object v1
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/c0$b;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    if-eqz v0, :cond_5a

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/c0$b;

    .line 7
    if-nez v0, :cond_57

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    :goto_11
    instance-of v2, v1, Landroid/content/ContextWrapper;

    .line 20
    if-eqz v2, :cond_24

    .line 22
    instance-of v2, v1, Landroid/app/Application;

    .line 24
    if-eqz v2, :cond_1d

    .line 26
    move-object v0, v1

    .line 27
    check-cast v0, Landroid/app/Application;

    .line 29
    goto :goto_24

    .line 30
    :cond_1d
    check-cast v1, Landroid/content/ContextWrapper;

    .line 32
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 35
    move-result-object v1

    .line 36
    goto :goto_11

    .line 37
    :cond_24
    :goto_24
    if-nez v0, :cond_4c

    .line 39
    const/4 v1, 0x3

    .line 40
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_4c

    .line 46
    const-string v1, "Could not find Application instance from Context "

    .line 48
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v2, ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory"

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    const-string v2, "FragmentManager"

    .line 74
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_4c
    new-instance v1, Landroidx/lifecycle/y;

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 82
    move-result-object v2

    .line 83
    invoke-direct {v1, v0, p0, v2}, Landroidx/lifecycle/y;-><init>(Landroid/app/Application;Lc1/e;Landroid/os/Bundle;)V

    .line 86
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/c0$b;

    .line 88
    :cond_57
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/c0$b;

    .line 90
    return-object v0

    .line 91
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 93
    const-string v1, "Can\'t access ViewModels from detached fragment"

    .line 95
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    throw v0
.end method

.method public getEnterAnim()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget v0, v0, Landroidx/fragment/app/Fragment$j;->b:I

    .line 9
    return v0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$j;->i:Ljava/lang/Object;

    .line 9
    return-object v0
.end method

.method public getEnterTransitionCallback()Ld0/o;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    return-object v1
.end method

.method public getExitAnim()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget v0, v0, Landroidx/fragment/app/Fragment$j;->c:I

    .line 9
    return v0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$j;->k:Ljava/lang/Object;

    .line 9
    return-object v0
.end method

.method public getExitTransitionCallback()Ld0/o;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    return-object v1
.end method

.method public getFocusedView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$j;->r:Landroid/view/View;

    .line 9
    return-object v0
.end method

.method public final getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/q;->onGetHost()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    return-object v0
.end method

.method public final getId()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 3
    return v0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_9
    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    if-eqz p1, :cond_10

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/q;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 6
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->f:Landroidx/fragment/app/r;

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    .line 8
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 3
    return-object v0
.end method

.method public getLoaderManager()La1/a;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, La1/a;->a(Landroidx/lifecycle/m;)La1/b;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getNextTransition()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget v0, v0, Landroidx/fragment/app/Fragment$j;->f:I

    .line 9
    return v0
.end method

.method public final getParentFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 3
    return-object v0
.end method

.method public final getParentFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    const-string v1, "Fragment "

    .line 10
    const-string v2, " not associated with a fragment manager."

    .line 12
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method

.method public getPopDirection()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$j;->a:Z

    .line 9
    return v0
.end method

.method public getPopEnterAnim()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget v0, v0, Landroidx/fragment/app/Fragment$j;->d:I

    .line 9
    return v0
.end method

.method public getPopExitAnim()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget v0, v0, Landroidx/fragment/app/Fragment$j;->e:I

    .line 9
    return v0
.end method

.method public getPostOnViewCreatedAlpha()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const/high16 v0, 0x3f800000  # 1.0f

    .line 7
    return v0

    .line 8
    :cond_7
    iget v0, v0, Landroidx/fragment/app/Fragment$j;->q:F

    .line 10
    return v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$j;->l:Ljava/lang/Object;

    .line 9
    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    .line 11
    if-ne v0, v1, :cond_10

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    :cond_10
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getRetainInstance()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 3
    new-instance v0, Landroidx/fragment/app/strictmode/GetRetainInstanceUsageViolation;

    .line 5
    invoke-direct {v0, p0}, Landroidx/fragment/app/strictmode/GetRetainInstanceUsageViolation;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 8
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->c(Landroidx/fragment/app/strictmode/Violation;)V

    .line 11
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->a:Ljava/util/Set;

    .line 17
    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_RETAIN_INSTANCE_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    .line 19
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_27

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object v2

    .line 29
    const-class v3, Landroidx/fragment/app/strictmode/GetRetainInstanceUsageViolation;

    .line 31
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->f(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_27

    .line 37
    invoke-static {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->b(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Landroidx/fragment/app/strictmode/Violation;)V

    .line 40
    :cond_27
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 42
    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$j;->j:Ljava/lang/Object;

    .line 9
    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    .line 11
    if-ne v0, v1, :cond_10

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    :cond_10
    return-object v0
.end method

.method public final getSavedStateRegistry()Lc1/c;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Lc1/d;

    .line 3
    iget-object v0, v0, Lc1/d;->b:Lc1/c;

    .line 5
    return-object v0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$j;->m:Ljava/lang/Object;

    .line 9
    return-object v0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$j;->n:Ljava/lang/Object;

    .line 9
    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    .line 11
    if-ne v0, v1, :cond_10

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    :cond_10
    return-object v0
.end method

.method public getSharedElementSourceNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/Fragment$j;->g:Ljava/util/ArrayList;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    return-object v0

    .line 11
    :cond_a
    :goto_a
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    return-object v0
.end method

.method public getSharedElementTargetNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/Fragment$j;->h:Ljava/util/ArrayList;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    return-object v0

    .line 11
    :cond_a
    :goto_a
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    return-object v0
.end method

.method public final getString(I)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final getTargetFragment()Landroidx/fragment/app/Fragment;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 3
    new-instance v0, Landroidx/fragment/app/strictmode/GetTargetFragmentRequestCodeUsageViolation;

    .line 5
    invoke-direct {v0, p0}, Landroidx/fragment/app/strictmode/GetTargetFragmentRequestCodeUsageViolation;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 8
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->c(Landroidx/fragment/app/strictmode/Violation;)V

    .line 11
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->a:Ljava/util/Set;

    .line 17
    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_TARGET_FRAGMENT_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    .line 19
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_27

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object v2

    .line 29
    const-class v3, Landroidx/fragment/app/strictmode/GetTargetFragmentRequestCodeUsageViolation;

    .line 31
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->f(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_27

    .line 37
    invoke-static {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->b(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Landroidx/fragment/app/strictmode/Violation;)V

    .line 40
    :cond_27
    iget v0, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 42
    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getUserVisibleHint()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 3
    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getViewLifecycleOwner()Landroidx/lifecycle/m;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    const-string v1, "Can\'t access the Fragment View\'s LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method public getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/lifecycle/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/q;

    .line 3
    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/e0;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    if-eqz v0, :cond_35

    .line 5
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->getMinimumMaxLifecycleState()I

    .line 8
    move-result v0

    .line 9
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v1

    .line 15
    if-eq v0, v1, :cond_2d

    .line 17
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 19
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 21
    iget-object v1, v0, Landroidx/fragment/app/v;->c:Ljava/util/HashMap;

    .line 23
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroidx/lifecycle/e0;

    .line 31
    if-nez v1, :cond_2c

    .line 33
    new-instance v1, Landroidx/lifecycle/e0;

    .line 35
    invoke-direct {v1}, Landroidx/lifecycle/e0;-><init>()V

    .line 38
    iget-object v0, v0, Landroidx/fragment/app/v;->c:Ljava/util/HashMap;

    .line 40
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_2c
    return-object v1

    .line 46
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw v0

    .line 54
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    const-string v1, "Can\'t access ViewModels from detached fragment"

    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0
.end method

.method public final hasOptionsMenu()Z
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "KotlinPropertyAccess"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 3
    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public initState()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->initLifecycle()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mPreviousWho:Ljava/lang/String;

    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 21
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 23
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 25
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 27
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRestored:Z

    .line 29
    iput v0, p0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 34
    new-instance v2, Landroidx/fragment/app/u;

    .line 36
    invoke-direct {v2}, Landroidx/fragment/app/u;-><init>()V

    .line 39
    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 41
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 43
    iput v0, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 45
    iput v0, p0, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 47
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 49
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 51
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 53
    return-void
.end method

.method public final isAdded()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public final isDetached()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 3
    return v0
.end method

.method public final isHidden()Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_18

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 8
    if-eqz v0, :cond_19

    .line 10
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    if-nez v2, :cond_12

    .line 17
    move v0, v1

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 22
    move-result v0

    .line 23
    :goto_16
    if-eqz v0, :cond_19

    .line 25
    :cond_18
    const/4 v1, 0x1

    .line 26
    :cond_19
    return v1
.end method

.method public final isInBackStack()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 3
    if-lez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public final isInLayout()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 3
    return v0
.end method

.method public final isMenuVisible()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_16

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 8
    if-eqz v0, :cond_17

    .line 10
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 12
    if-nez v0, :cond_f

    .line 14
    move v0, v1

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    .line 19
    move-result v0

    .line 20
    :goto_13
    if-eqz v0, :cond_16

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v1, 0x0

    .line 24
    :cond_17
    :goto_17
    return v1
.end method

.method public isPostponed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$j;->s:Z

    .line 9
    return v0
.end method

.method public final isRemoving()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 3
    return v0
.end method

.method public final isResumed()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 3
    const/4 v1, 0x7

    .line 4
    if-lt v0, v1, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return v0
.end method

.method public final isStateSaved()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->Q()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final isVisible()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_20

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_20

    .line 13
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 15
    if-eqz v0, :cond_20

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_20

    .line 23
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_20

    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 v0, 0x0

    .line 34
    :goto_21
    return v0
.end method

.method public noteStateNotSaved()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->S()V

    .line 6
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_35

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v1, "Fragment "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " received the following in onActivityResult(): requestCode: "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string p1, " resultCode: "

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string p1, " data: "

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    const-string p2, "FragmentManager"

    .line 51
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_35
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroidx/fragment/app/q;->getActivity()Landroid/app/Activity;

    move-result-object p1

    :goto_d
    if-eqz p1, :cond_15

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :cond_15
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 4
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 7
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 9
    iget v1, p1, Landroidx/fragment/app/FragmentManager;->t:I

    .line 11
    const/4 v2, 0x0

    .line 12
    if-lt v1, v0, :cond_f

    .line 14
    move v1, v0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v1, v2

    .line 17
    :goto_10
    if-nez v1, :cond_1d

    .line 19
    iput-boolean v2, p1, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 21
    iput-boolean v2, p1, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 23
    iget-object v1, p1, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 25
    iput-boolean v2, v1, Landroidx/fragment/app/v;->f:Z

    .line 27
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 30
    :cond_1d
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 8
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    iget p3, p0, Landroidx/fragment/app/Fragment;->mContentLayoutId:I

    .line 3
    if-eqz p3, :cond_a

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 4
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 4
    return-void
.end method

.method public onDetach()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 4
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .registers 2

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroidx/fragment/app/q;->getActivity()Landroid/app/Activity;

    move-result-object p1

    :goto_d
    if-eqz p1, :cond_15

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_15
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 4
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 4
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPrimaryNavigationFragmentChanged(Z)V
    .registers 2

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 4
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 4
    return-void
.end method

.method public performActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->S()V

    .line 6
    const/4 v0, 0x3

    .line 7
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 12
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 15
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 17
    if-eqz p1, :cond_24

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->restoreViewState()V

    .line 22
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 24
    iput-boolean v0, p1, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 26
    iput-boolean v0, p1, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 28
    iget-object v1, p1, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 30
    iput-boolean v0, v1, Landroidx/fragment/app/v;->f:Z

    .line 32
    const/4 v0, 0x4

    .line 33
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 36
    return-void

    .line 37
    :cond_24
    new-instance p1, Landroidx/fragment/app/SuperNotCalledException;

    .line 39
    const-string v0, "Fragment "

    .line 41
    const-string v1, " did not call through to super.onActivityCreated()"

    .line 43
    invoke-static {v0, p0, v1}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
.end method

.method public performAttach()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/fragment/app/Fragment$k;

    .line 19
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment$k;->a()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 30
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->createFragmentContainer()Landroidx/fragment/app/n;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/FragmentManager;->b(Landroidx/fragment/app/q;Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V

    .line 39
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 42
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 44
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 46
    invoke-virtual {v1}, Landroidx/fragment/app/q;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 53
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 55
    if-eqz v1, :cond_5e

    .line 57
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 59
    iget-object v2, v1, Landroidx/fragment/app/FragmentManager;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v2

    .line 65
    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_50

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Landroidx/fragment/app/w;

    .line 77
    invoke-interface {v3, v1, p0}, Landroidx/fragment/app/w;->onAttachFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 80
    goto :goto_40

    .line 81
    :cond_50
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 83
    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 85
    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 87
    iget-object v2, v1, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 89
    iput-boolean v0, v2, Landroidx/fragment/app/v;->f:Z

    .line 91
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 94
    return-void

    .line 95
    :cond_5e
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 97
    const-string v1, "Fragment "

    .line 99
    const-string v2, " did not call through to super.onAttach()"

    .line 101
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 108
    throw v0
.end method

.method public performConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    return-void
.end method

.method public performContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 3
    if-nez v0, :cond_13

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 15
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->i(Landroid/view/MenuItem;)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public performCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->S()V

    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 12
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 14
    new-instance v2, Landroidx/fragment/app/Fragment$6;

    .line 16
    invoke-direct {v2, p0}, Landroidx/fragment/app/Fragment$6;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 19
    invoke-virtual {v1, v2}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/l;)V

    .line 22
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Lc1/d;

    .line 24
    invoke-virtual {v1, p1}, Lc1/d;->b(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    .line 32
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 34
    if-eqz p1, :cond_2b

    .line 36
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 38
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 40
    invoke-virtual {p1, v0}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 43
    return-void

    .line 44
    :cond_2b
    new-instance p1, Landroidx/fragment/app/SuperNotCalledException;

    .line 46
    const-string v0, "Fragment "

    .line 48
    const-string v1, " did not call through to super.onCreate()"

    .line 50
    invoke-static {v0, p0, v1}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p1
.end method

.method public performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_18

    .line 6
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 8
    if-eqz v0, :cond_11

    .line 10
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 12
    if-eqz v0, :cond_11

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 20
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentManager;->j(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    .line 23
    move-result p1

    .line 24
    or-int/2addr v1, p1

    .line 25
    :cond_18
    return v1
.end method

.method public performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->S()V

    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 9
    new-instance v1, Landroidx/fragment/app/j0;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewModelStore()Landroidx/lifecycle/e0;

    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, p0, v2}, Landroidx/fragment/app/j0;-><init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e0;)V

    .line 18
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 26
    if-eqz p1, :cond_48

    .line 28
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->b()V

    .line 33
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 35
    iget-object p2, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 37
    sget p3, Ly0/a;->view_tree_lifecycle_owner:I

    .line 39
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 42
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 44
    iget-object p2, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 46
    sget p3, Lz0/d;->view_tree_view_model_store_owner:I

    .line 48
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 51
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 53
    iget-object p2, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 55
    const-string p3, "<this>"

    .line 57
    invoke-static {p1, p3}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget p3, Lc1/a;->view_tree_saved_state_registry_owner:I

    .line 62
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 65
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/q;

    .line 67
    iget-object p2, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 69
    invoke-virtual {p1, p2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 72
    goto :goto_55

    .line 73
    :cond_48
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 75
    iget-object p1, p1, Landroidx/fragment/app/j0;->d:Landroidx/lifecycle/n;

    .line 77
    if-eqz p1, :cond_4f

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    const/4 v0, 0x0

    .line 81
    :goto_50
    if-nez v0, :cond_56

    .line 83
    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 86
    :goto_55
    return-void

    .line 87
    :cond_56
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 89
    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    .line 91
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p1
.end method

.method public performDestroy()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->k()V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 8
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 10
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 16
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 18
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 23
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 25
    if-eqz v0, :cond_1b

    .line 27
    return-void

    .line 28
    :cond_1b
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 30
    const-string v1, "Fragment "

    .line 32
    const-string v2, " did not call through to super.onDestroy()"

    .line 34
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
.end method

.method public performDestroyView()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 9
    if-eqz v0, :cond_22

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/j0;->b()V

    .line 16
    iget-object v0, v0, Landroidx/fragment/app/j0;->d:Landroidx/lifecycle/n;

    .line 18
    iget-object v0, v0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 20
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 22
    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_22

    .line 28
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 30
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 32
    invoke-virtual {v0, v2}, Landroidx/fragment/app/j0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 35
    :cond_22
    iput v1, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 37
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 43
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 45
    if-eqz v1, :cond_4c

    .line 47
    invoke-static {p0}, La1/a;->a(Landroidx/lifecycle/m;)La1/b;

    .line 50
    move-result-object v1

    .line 51
    iget-object v1, v1, La1/b;->b:La1/b$b;

    .line 53
    iget-object v2, v1, La1/b$b;->a:Landroidx/collection/g;

    .line 55
    iget v2, v2, Landroidx/collection/g;->c:I

    .line 57
    move v3, v0

    .line 58
    :goto_39
    if-ge v3, v2, :cond_49

    .line 60
    iget-object v4, v1, La1/b$b;->a:Landroidx/collection/g;

    .line 62
    iget-object v4, v4, Landroidx/collection/g;->b:[Ljava/lang/Object;

    .line 64
    aget-object v4, v4, v3

    .line 66
    check-cast v4, La1/b$a;

    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_39

    .line 74
    :cond_49
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 76
    return-void

    .line 77
    :cond_4c
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 79
    const-string v1, "Fragment "

    .line 81
    const-string v2, " did not call through to super.onDestroyView()"

    .line 83
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 90
    throw v0
.end method

.method public performDetach()V
    .registers 4

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 13
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 15
    if-eqz v0, :cond_21

    .line 17
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 19
    iget-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->I:Z

    .line 21
    if-nez v1, :cond_20

    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->k()V

    .line 26
    new-instance v0, Landroidx/fragment/app/u;

    .line 28
    invoke-direct {v0}, Landroidx/fragment/app/u;-><init>()V

    .line 31
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 33
    :cond_20
    return-void

    .line 34
    :cond_21
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 36
    const-string v1, "Fragment "

    .line 38
    const-string v2, " did not call through to super.onDetach()"

    .line 40
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 47
    throw v0
.end method

.method public performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 7
    return-object p1
.end method

.method public performLowMemory()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    .line 4
    return-void
.end method

.method public performMultiWindowModeChanged(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 4
    return-void
.end method

.method public performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 3
    if-nez v0, :cond_1b

    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 7
    if-eqz v0, :cond_14

    .line 9
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 11
    if-eqz v0, :cond_14

    .line 13
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 23
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->o(Landroid/view/MenuItem;)Z

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1b
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public performOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 3
    if-nez v0, :cond_14

    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 7
    if-eqz v0, :cond_f

    .line 9
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 16
    :cond_f
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 18
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->p(Landroid/view/Menu;)V

    .line 21
    :cond_14
    return-void
.end method

.method public performPause()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 9
    if-eqz v0, :cond_11

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 13
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 15
    invoke-virtual {v0, v1}, Landroidx/fragment/app/j0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 20
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 22
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 25
    const/4 v0, 0x6

    .line 26
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 34
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 36
    if-eqz v0, :cond_26

    .line 38
    return-void

    .line 39
    :cond_26
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 41
    const-string v1, "Fragment "

    .line 43
    const-string v2, " did not call through to super.onPause()"

    .line 45
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public performPictureInPictureModeChanged(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 4
    return-void
.end method

.method public performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_18

    .line 6
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 8
    if-eqz v0, :cond_11

    .line 10
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 12
    if-eqz v0, :cond_11

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 20
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->s(Landroid/view/Menu;)Z

    .line 23
    move-result p1

    .line 24
    or-int/2addr v1, p1

    .line 25
    :cond_18
    return v1
.end method

.method public performPrimaryNavigationFragmentChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->P(Landroidx/fragment/app/Fragment;)Z

    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    .line 12
    if-eqz v1, :cond_13

    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result v1

    .line 18
    if-eq v1, v0, :cond_26

    .line 20
    :cond_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    .line 26
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->onPrimaryNavigationFragmentChanged(Z)V

    .line 29
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->l0()V

    .line 34
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    .line 36
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->q(Landroidx/fragment/app/Fragment;)V

    .line 39
    :cond_26
    return-void
.end method

.method public performResume()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->S()V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->x(Z)Z

    .line 12
    const/4 v0, 0x7

    .line 13
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 21
    iget-boolean v2, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 23
    if-eqz v2, :cond_36

    .line 25
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 27
    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 29
    invoke-virtual {v2, v3}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 32
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 34
    if-eqz v2, :cond_28

    .line 36
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 38
    invoke-virtual {v2, v3}, Landroidx/fragment/app/j0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 41
    :cond_28
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 43
    iput-boolean v1, v2, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 45
    iput-boolean v1, v2, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 47
    iget-object v3, v2, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 49
    iput-boolean v1, v3, Landroidx/fragment/app/v;->f:Z

    .line 51
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 54
    return-void

    .line 55
    :cond_36
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 57
    const-string v1, "Fragment "

    .line 59
    const-string v2, " did not call through to super.onResume()"

    .line 61
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 68
    throw v0
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Lc1/d;

    .line 6
    invoke-virtual {v0, p1}, Lc1/d;->c(Landroid/os/Bundle;)V

    .line 9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->b0()Landroid/os/Bundle;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "android:support:fragments"

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    return-void
.end method

.method public performStart()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->S()V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->x(Z)Z

    .line 12
    const/4 v0, 0x5

    .line 13
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 21
    iget-boolean v2, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 23
    if-eqz v2, :cond_36

    .line 25
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 27
    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 29
    invoke-virtual {v2, v3}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 32
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 34
    if-eqz v2, :cond_28

    .line 36
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 38
    invoke-virtual {v2, v3}, Landroidx/fragment/app/j0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 41
    :cond_28
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 43
    iput-boolean v1, v2, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 45
    iput-boolean v1, v2, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 47
    iget-object v3, v2, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 49
    iput-boolean v1, v3, Landroidx/fragment/app/v;->f:Z

    .line 51
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 54
    return-void

    .line 55
    :cond_36
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 57
    const-string v1, "Fragment "

    .line 59
    const-string v2, " did not call through to super.onStart()"

    .line 61
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 68
    throw v0
.end method

.method public performStop()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 6
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 8
    iput-boolean v1, v2, Landroidx/fragment/app/v;->f:Z

    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 14
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 16
    if-eqz v0, :cond_18

    .line 18
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 20
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 22
    invoke-virtual {v0, v2}, Landroidx/fragment/app/j0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 25
    :cond_18
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 27
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 29
    invoke-virtual {v0, v2}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 32
    iput v1, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 40
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 42
    if-eqz v0, :cond_2c

    .line 44
    return-void

    .line 45
    :cond_2c
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    .line 47
    const-string v1, "Fragment "

    .line 49
    const-string v2, " did not call through to super.onStop()"

    .line 51
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0
.end method

.method public performViewCreated()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 14
    return-void
.end method

.method public postponeEnterTransition()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$j;->s:Z

    return-void
.end method

.method public final postponeEnterTransition(JLjava/util/concurrent/TimeUnit;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$j;->s:Z

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_12

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/q;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_1b

    .line 6
    :cond_12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    :goto_1b
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final registerForActivityResult(Lg/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/a<",
            "TI;TO;>;",
            "Landroidx/activity/result/a<",
            "TO;>;)",
            "Landroidx/activity/result/b<",
            "TI;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/fragment/app/Fragment$g;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$g;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/Fragment;->prepareCallInternal(Lg/a;Lp/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object p1

    return-object p1
.end method

.method public final registerForActivityResult(Lg/a;Landroidx/activity/result/e;Landroidx/activity/result/a;)Landroidx/activity/result/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/a<",
            "TI;TO;>;",
            "Landroidx/activity/result/e;",
            "Landroidx/activity/result/a<",
            "TO;>;)",
            "Landroidx/activity/result/b<",
            "TI;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Landroidx/fragment/app/Fragment$h;

    invoke-direct {v0, p2}, Landroidx/fragment/app/Fragment$h;-><init>(Landroidx/activity/result/e;)V

    invoke-direct {p0, p1, v0, p3}, Landroidx/fragment/app/Fragment;->prepareCallInternal(Lg/a;Lp/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object p1

    return-object p1
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 4
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 3
    if-eqz v0, :cond_24

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->D:Landroidx/activity/result/d;

    .line 11
    if-eqz v1, :cond_1e

    .line 13
    new-instance v1, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    .line 15
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 17
    invoke-direct {v1, v2, p2}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    .line 20
    iget-object p2, v0, Landroidx/fragment/app/FragmentManager;->E:Ljava/util/ArrayDeque;

    .line 22
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 25
    iget-object p2, v0, Landroidx/fragment/app/FragmentManager;->D:Landroidx/activity/result/d;

    .line 27
    invoke-virtual {p2, p1}, Landroidx/activity/result/d;->a(Ljava/lang/Object;)V

    .line 30
    goto :goto_23

    .line 31
    :cond_1e
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 33
    invoke-virtual {v0, p0, p1, p2}, Landroidx/fragment/app/q;->onRequestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    .line 36
    :goto_23
    return-void

    .line 37
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    const-string p2, "Fragment "

    .line 41
    const-string v0, " not attached to Activity"

    .line 43
    invoke-static {p2, p0, v0}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
.end method

.method public final requireActivity()Landroidx/fragment/app/FragmentActivity;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    const-string v1, "Fragment "

    .line 12
    const-string v2, " not attached to an activity."

    .line 14
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public final requireArguments()Landroid/os/Bundle;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    const-string v1, "Fragment "

    .line 12
    const-string v2, " does not have any arguments."

    .line 14
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public final requireContext()Landroid/content/Context;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    const-string v1, "Fragment "

    .line 12
    const-string v2, " not attached to a context."

    .line 14
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public final requireFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final requireHost()Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    const-string v1, "Fragment "

    .line 12
    const-string v2, " not attached to a host."

    .line 14
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public final requireParentFragment()Landroidx/fragment/app/Fragment;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_3b

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "Fragment "

    .line 13
    if-nez v0, :cond_1a

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    const-string v2, " is not attached to any Fragment or host"

    .line 19
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0

    .line 27
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, " is not a child Fragment, it is directly attached to "

    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    throw v0

    .line 60
    :cond_3b
    return-object v0
.end method

.method public final requireView()Landroid/view/View;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    const-string v1, "Fragment "

    .line 12
    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    .line 14
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public restoreChildFragmentState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_1e

    .line 3
    const-string v0, "android:support:fragments"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_1e

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 13
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->a0(Landroid/os/Parcelable;)V

    .line 16
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p1, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 21
    iput-boolean v0, p1, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 23
    iget-object v1, p1, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 25
    iput-boolean v0, v1, Landroidx/fragment/app/v;->f:Z

    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 31
    :cond_1e
    return-void
.end method

.method public final restoreViewState(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 3
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 4
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 6
    iget-object v0, v0, Landroidx/fragment/app/j0;->e:Lc1/d;

    .line 7
    invoke-virtual {v0, v2}, Lc1/d;->b(Landroid/os/Bundle;)V

    .line 8
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    :cond_1b
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 10
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 11
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz p1, :cond_31

    .line 12
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_30

    .line 13
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/j0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_30
    return-void

    .line 14
    :cond_31
    new-instance p1, Landroidx/fragment/app/SuperNotCalledException;

    const-string v0, "Fragment "

    const-string v1, " did not call through to super.onViewStateRestored()"

    .line 15
    invoke-static {v0, p0, v1}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-direct {p1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Landroidx/fragment/app/Fragment$j;->p:Ljava/lang/Boolean;

    .line 11
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Landroidx/fragment/app/Fragment$j;->o:Ljava/lang/Boolean;

    .line 11
    return-void
.end method

.method public setAnimations(IIII)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_d

    .line 5
    if-nez p1, :cond_d

    .line 7
    if-nez p2, :cond_d

    .line 9
    if-nez p3, :cond_d

    .line 11
    if-nez p4, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 17
    move-result-object v0

    .line 18
    iput p1, v0, Landroidx/fragment/app/Fragment$j;->b:I

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 23
    move-result-object p1

    .line 24
    iput p2, p1, Landroidx/fragment/app/Fragment$j;->c:I

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 29
    move-result-object p1

    .line 30
    iput p3, p1, Landroidx/fragment/app/Fragment$j;->d:I

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 35
    move-result-object p1

    .line 36
    iput p4, p1, Landroidx/fragment/app/Fragment$j;->e:I

    .line 38
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_13

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    const-string v0, "Fragment already added and state has been saved"

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1

    .line 20
    :cond_13
    :goto_13
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 22
    return-void
.end method

.method public setEnterSharedElementCallback(Ld0/o;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Landroidx/fragment/app/Fragment$j;->i:Ljava/lang/Object;

    .line 7
    return-void
.end method

.method public setExitSharedElementCallback(Ld0/o;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Landroidx/fragment/app/Fragment$j;->k:Ljava/lang/Object;

    .line 7
    return-void
.end method

.method public setFocusedView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Landroidx/fragment/app/Fragment$j;->r:Landroid/view/View;

    .line 7
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 3
    if-eq v0, p1, :cond_17

    .line 5
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_17

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_17

    .line 19
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/q;->onSupportInvalidateOptionsMenu()V

    .line 24
    :cond_17
    return-void
.end method

.method public setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    if-nez v0, :cond_f

    .line 5
    if-eqz p1, :cond_b

    .line 7
    iget-object p1, p1, Landroidx/fragment/app/Fragment$SavedState;->a:Landroid/os/Bundle;

    .line 9
    if-eqz p1, :cond_b

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 15
    return-void

    .line 16
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    const-string v0, "Fragment already added"

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1
.end method

.method public setMenuVisibility(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 3
    if-eq v0, p1, :cond_1b

    .line 5
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 7
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 9
    if-eqz p1, :cond_1b

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1b

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1b

    .line 23
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 25
    invoke-virtual {p1}, Landroidx/fragment/app/q;->onSupportInvalidateOptionsMenu()V

    .line 28
    :cond_1b
    return-void
.end method

.method public setNextTransition(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_7

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 13
    iput p1, v0, Landroidx/fragment/app/Fragment$j;->f:I

    .line 15
    return-void
.end method

.method public setPopDirection(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 9
    move-result-object v0

    .line 10
    iput-boolean p1, v0, Landroidx/fragment/app/Fragment$j;->a:Z

    .line 12
    return-void
.end method

.method public setPostOnViewCreatedAlpha(F)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroidx/fragment/app/Fragment$j;->q:F

    .line 7
    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Landroidx/fragment/app/Fragment$j;->l:Ljava/lang/Object;

    .line 7
    return-void
.end method

.method public setRetainInstance(Z)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 3
    new-instance v0, Landroidx/fragment/app/strictmode/SetRetainInstanceUsageViolation;

    .line 5
    invoke-direct {v0, p0}, Landroidx/fragment/app/strictmode/SetRetainInstanceUsageViolation;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 8
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->c(Landroidx/fragment/app/strictmode/Violation;)V

    .line 11
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->a:Ljava/util/Set;

    .line 17
    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_RETAIN_INSTANCE_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    .line 19
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_27

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object v2

    .line 29
    const-class v3, Landroidx/fragment/app/strictmode/SetRetainInstanceUsageViolation;

    .line 31
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->f(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_27

    .line 37
    invoke-static {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->b(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Landroidx/fragment/app/strictmode/Violation;)V

    .line 40
    :cond_27
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 42
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 44
    if-eqz v0, :cond_3b

    .line 46
    if-eqz p1, :cond_35

    .line 48
    iget-object p1, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 50
    invoke-virtual {p1, p0}, Landroidx/fragment/app/v;->a(Landroidx/fragment/app/Fragment;)V

    .line 53
    goto :goto_3e

    .line 54
    :cond_35
    iget-object p1, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 56
    invoke-virtual {p1, p0}, Landroidx/fragment/app/v;->d(Landroidx/fragment/app/Fragment;)V

    .line 59
    goto :goto_3e

    .line 60
    :cond_3b
    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    .line 63
    :goto_3e
    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Landroidx/fragment/app/Fragment$j;->j:Ljava/lang/Object;

    .line 7
    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Landroidx/fragment/app/Fragment$j;->m:Ljava/lang/Object;

    .line 7
    return-void
.end method

.method public setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 6
    iput-object p1, v0, Landroidx/fragment/app/Fragment$j;->g:Ljava/util/ArrayList;

    .line 8
    iput-object p2, v0, Landroidx/fragment/app/Fragment$j;->h:Ljava/util/ArrayList;

    .line 10
    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Landroidx/fragment/app/Fragment$j;->n:Ljava/lang/Object;

    .line 7
    return-void
.end method

.method public setTargetFragment(Landroidx/fragment/app/Fragment;I)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-eqz p1, :cond_29

    .line 3
    sget-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 5
    new-instance v0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;

    .line 7
    invoke-direct {v0, p0, p1, p2}, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    .line 10
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->c(Landroidx/fragment/app/strictmode/Violation;)V

    .line 13
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 16
    move-result-object v1

    .line 17
    iget-object v2, v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->a:Ljava/util/Set;

    .line 19
    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_TARGET_FRAGMENT_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    .line 21
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_29

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    move-result-object v2

    .line 31
    const-class v3, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;

    .line 33
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->f(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_29

    .line 39
    invoke-static {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->b(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Landroidx/fragment/app/strictmode/Violation;)V

    .line 42
    :cond_29
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz p1, :cond_31

    .line 47
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move-object v2, v1

    .line 51
    :goto_32
    if-eqz v0, :cond_47

    .line 53
    if-eqz v2, :cond_47

    .line 55
    if-ne v0, v2, :cond_39

    .line 57
    goto :goto_47

    .line 58
    :cond_39
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 60
    const-string v0, "Fragment "

    .line 62
    const-string v1, " must share the same FragmentManager to be set as a target fragment"

    .line 64
    invoke-static {v0, p1, v1}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p2

    .line 72
    :cond_47
    :goto_47
    move-object v0, p1

    .line 73
    :goto_48
    if-eqz v0, :cond_7a

    .line 75
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_56

    .line 81
    const/4 v2, 0x0

    .line 82
    invoke-direct {v0, v2}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 85
    move-result-object v0

    .line 86
    goto :goto_48

    .line 87
    :cond_56
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const-string v1, "Setting "

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    const-string p1, " as the target of "

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    const-string p1, " would create a target cycle"

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    throw p2

    .line 123
    :cond_7a
    if-nez p1, :cond_81

    .line 125
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 129
    goto :goto_94

    .line 130
    :cond_81
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 132
    if-eqz v0, :cond_90

    .line 134
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 136
    if-eqz v0, :cond_90

    .line 138
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 140
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 144
    goto :goto_94

    .line 145
    :cond_90
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 147
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 149
    :goto_94
    iput p2, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 151
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 3
    new-instance v0, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;

    .line 5
    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;-><init>(Landroidx/fragment/app/Fragment;Z)V

    .line 8
    invoke-static {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->c(Landroidx/fragment/app/strictmode/Violation;)V

    .line 11
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->a:Ljava/util/Set;

    .line 17
    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_SET_USER_VISIBLE_HINT:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    .line 19
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_27

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object v2

    .line 29
    const-class v3, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;

    .line 31
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->f(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_27

    .line 37
    invoke-static {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->b(Landroidx/fragment/app/strictmode/FragmentStrictMode$b;Landroidx/fragment/app/strictmode/Violation;)V

    .line 40
    :cond_27
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 42
    const/4 v1, 0x5

    .line 43
    const/4 v2, 0x1

    .line 44
    const/4 v3, 0x0

    .line 45
    if-nez v0, :cond_5a

    .line 47
    if-eqz p1, :cond_5a

    .line 49
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 51
    if-ge v0, v1, :cond_5a

    .line 53
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 55
    if-eqz v0, :cond_5a

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_5a

    .line 63
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    .line 65
    if-eqz v0, :cond_5a

    .line 67
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 69
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 72
    move-result-object v4

    .line 73
    iget-object v5, v4, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 75
    iget-boolean v6, v5, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 77
    if-eqz v6, :cond_5a

    .line 79
    iget-boolean v6, v0, Landroidx/fragment/app/FragmentManager;->b:Z

    .line 81
    if-eqz v6, :cond_55

    .line 83
    iput-boolean v2, v0, Landroidx/fragment/app/FragmentManager;->J:Z

    .line 85
    goto :goto_5a

    .line 86
    :cond_55
    iput-boolean v3, v5, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 88
    invoke-virtual {v4}, Landroidx/fragment/app/y;->k()V

    .line 91
    :cond_5a
    :goto_5a
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 93
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 95
    if-ge v0, v1, :cond_63

    .line 97
    if-nez p1, :cond_63

    .line 99
    goto :goto_64

    .line 100
    :cond_63
    move v2, v3

    .line 101
    :goto_64
    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 103
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 105
    if-eqz v0, :cond_70

    .line 107
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 113
    :cond_70
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroidx/fragment/app/q;->onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .param p1  # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5
    .param p1  # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    if-eqz v0, :cond_9

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, p0, p1, v1, p2}, Landroidx/fragment/app/q;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 4
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string v0, " not attached to Activity"

    .line 5
    invoke-static {p2, p0, v0}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1  # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7
    .param p1  # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    if-eqz v0, :cond_2d

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 4
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->B:Landroidx/activity/result/d;

    if-eqz v1, :cond_27

    .line 5
    new-instance v1, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    .line 6
    iget-object p2, v0, Landroidx/fragment/app/FragmentManager;->E:Ljava/util/ArrayDeque;

    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz p1, :cond_21

    if-eqz p3, :cond_21

    const-string p2, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8
    :cond_21
    iget-object p2, v0, Landroidx/fragment/app/FragmentManager;->B:Landroidx/activity/result/d;

    .line 9
    invoke-virtual {p2, p1}, Landroidx/activity/result/d;->a(Ljava/lang/Object;)V

    goto :goto_2c

    .line 10
    :cond_27
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/fragment/app/q;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_2c
    return-void

    .line 11
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string p3, " not attached to Activity"

    .line 12
    invoke-static {p2, p0, p3}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 20
    .param p1  # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    move-object v9, p0

    .line 2
    move-object v2, p1

    .line 3
    move v3, p2

    .line 4
    move-object v4, p3

    .line 5
    move-object/from16 v8, p7

    .line 7
    iget-object v0, v9, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 9
    const-string v1, "Fragment "

    .line 11
    if-eqz v0, :cond_db

    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 17
    move-result v5

    .line 18
    const-string v6, "FragmentManager"

    .line 20
    if-eqz v5, :cond_47

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string v7, " received the following in startIntentSenderForResult() requestCode: "

    .line 35
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v7, " IntentSender: "

    .line 43
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string v7, " fillInIntent: "

    .line 51
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const-string v7, " options: "

    .line 59
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 75
    move-result-object v5

    .line 76
    iget-object v7, v5, Landroidx/fragment/app/FragmentManager;->C:Landroidx/activity/result/d;

    .line 78
    if-eqz v7, :cond_c5

    .line 80
    if-eqz v8, :cond_8d

    .line 82
    if-nez v4, :cond_5e

    .line 84
    new-instance v4, Landroid/content/Intent;

    .line 86
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 89
    const/4 v7, 0x1

    .line 90
    const-string v10, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 92
    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    :cond_5e
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_88

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    const-string v10, "ActivityOptions "

    .line 108
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    const-string v10, " were added to fillInIntent "

    .line 116
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const-string v10, " for fragment "

    .line 124
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v7

    .line 134
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_88
    const-string v7, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 139
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    :cond_8d
    new-instance v7, Landroidx/activity/result/IntentSenderRequest;

    .line 144
    move/from16 v10, p4

    .line 146
    move/from16 v11, p5

    .line 148
    invoke-direct {v7, p1, v4, v10, v11}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 151
    new-instance v2, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    .line 153
    iget-object v4, v9, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 155
    invoke-direct {v2, v4, p2}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    .line 158
    iget-object v3, v5, Landroidx/fragment/app/FragmentManager;->E:Ljava/util/ArrayDeque;

    .line 160
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 163
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_bf

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "is launching an IntentSender for result "

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_bf
    iget-object v0, v5, Landroidx/fragment/app/FragmentManager;->C:Landroidx/activity/result/d;

    .line 194
    invoke-virtual {v0, v7}, Landroidx/activity/result/d;->a(Ljava/lang/Object;)V

    .line 197
    goto :goto_da

    .line 198
    :cond_c5
    move/from16 v10, p4

    .line 200
    move/from16 v11, p5

    .line 202
    iget-object v0, v5, Landroidx/fragment/app/FragmentManager;->u:Landroidx/fragment/app/q;

    .line 204
    move-object v1, p0

    .line 205
    move-object v2, p1

    .line 206
    move v3, p2

    .line 207
    move-object v4, p3

    .line 208
    move/from16 v5, p4

    .line 210
    move/from16 v6, p5

    .line 212
    move/from16 v7, p6

    .line 214
    move-object/from16 v8, p7

    .line 216
    invoke-virtual/range {v0 .. v8}, Landroidx/fragment/app/q;->onStartIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 219
    :goto_da
    return-void

    .line 220
    :cond_db
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 222
    const-string v2, " not attached to Activity"

    .line 224
    invoke-static {v1, p0, v2}, La/a;->j(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    move-result-object v1

    .line 228
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 231
    throw v0
.end method

.method public startPostponedEnterTransition()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 3
    if-eqz v0, :cond_3c

    .line 5
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 8
    move-result-object v0

    .line 9
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$j;->s:Z

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_3c

    .line 14
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 16
    if-nez v0, :cond_19

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$j;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$j;->s:Z

    .line 25
    goto :goto_3c

    .line 26
    :cond_19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 32
    invoke-virtual {v1}, Landroidx/fragment/app/q;->getHandler()Landroid/os/Handler;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 39
    move-result-object v1

    .line 40
    if-eq v0, v1, :cond_38

    .line 42
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/q;

    .line 44
    invoke-virtual {v0}, Landroidx/fragment/app/q;->getHandler()Landroid/os/Handler;

    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Landroidx/fragment/app/Fragment$d;

    .line 50
    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$d;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 56
    goto :goto_3c

    .line 57
    :cond_38
    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->callStartTransitionListener(Z)V

    .line 61
    :cond_3c
    :goto_3c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const/16 v1, 0x80

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "{"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, "}"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, " ("

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v1, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 52
    if-eqz v1, :cond_43

    .line 54
    const-string v1, " id=0x"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v1, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_43
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 70
    if-eqz v1, :cond_51

    .line 72
    const-string v1, " tag="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_51
    const-string v1, ")"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    return-object v0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 5
    return-void
.end method
