.class public abstract Landroidx/fragment/app/x;
.super Li1/a;
.source "FragmentPagerAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT:I

.field public static final BEHAVIOR_SET_USER_VISIBLE_HINT:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapter"


# instance fields
.field private final mBehavior:I

.field private mCurTransaction:Landroidx/fragment/app/b0;

.field private mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

.field private mExecutingFinishUpdate:Z

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/fragment/app/x;->BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/fragment/app/x;->BEHAVIOR_SET_USER_VISIBLE_HINT:I

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/x;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .registers 4

    invoke-direct {p0}, Li1/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    iput-object v0, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Landroidx/fragment/app/x;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput p2, p0, Landroidx/fragment/app/x;->mBehavior:I

    return-void
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    check-cast p3, Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    if-nez p1, :cond_e

    iget-object p1, p0, Landroidx/fragment/app/x;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    :cond_e
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/b0;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    iget-object p1, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    :cond_1e
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 5

    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    if-eqz p1, :cond_20

    iget-boolean v0, p0, Landroidx/fragment/app/x;->mExecutingFinishUpdate:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, p0, Landroidx/fragment/app/x;->mExecutingFinishUpdate:Z

    check-cast p1, Landroidx/fragment/app/a;

    invoke-virtual {p1}, Landroidx/fragment/app/b0;->g()V

    iget-object v2, p1, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, p1, v1}, Landroidx/fragment/app/FragmentManager;->y(Landroidx/fragment/app/FragmentManager$n;Z)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    iput-boolean v0, p0, Landroidx/fragment/app/x;->mExecutingFinishUpdate:Z

    goto :goto_1d

    :catchall_19
    move-exception p1

    iput-boolean v0, p0, Landroidx/fragment/app/x;->mExecutingFinishUpdate:Z

    throw p1

    :cond_1d
    :goto_1d
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    :cond_20
    return-void
.end method

.method public abstract getItem(I)Landroidx/fragment/app/Fragment;
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/fragment/app/x;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    :cond_c
    invoke-virtual {p0, p2}, Landroidx/fragment/app/x;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Landroidx/fragment/app/x;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/x;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_30

    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/fragment/app/b0$a;

    const/4 v0, 0x7

    invoke-direct {p2, v0, v2}, Landroidx/fragment/app/b0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/b0;->b(Landroidx/fragment/app/b0$a;)V

    goto :goto_45

    :cond_30
    invoke-virtual {p0, p2}, Landroidx/fragment/app/x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    iget-object p2, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Landroidx/fragment/app/x;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v4, v2, p1, v3}, Landroidx/fragment/app/b0;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :goto_45
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq v2, p1, :cond_5c

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget p2, p0, Landroidx/fragment/app/x;->mBehavior:I

    if-ne p2, v3, :cond_59

    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v2, p2}, Landroidx/fragment/app/b0;->m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/a;

    goto :goto_5c

    :cond_59
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_5c
    :goto_5c
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 6

    check-cast p3, Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq p3, p1, :cond_4c

    const/4 p2, 0x1

    if-eqz p1, :cond_2c

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget p1, p0, Landroidx/fragment/app/x;->mBehavior:I

    if-ne p1, p2, :cond_27

    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    if-nez p1, :cond_1d

    iget-object p1, p0, Landroidx/fragment/app/x;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    :cond_1d
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    iget-object v0, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/b0;->m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/a;

    goto :goto_2c

    :cond_27
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_2c
    :goto_2c
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget p1, p0, Landroidx/fragment/app/x;->mBehavior:I

    if-ne p1, p2, :cond_47

    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    if-nez p1, :cond_3f

    iget-object p1, p0, Landroidx/fragment/app/x;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    :cond_3f
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/b0;->m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/a;

    goto :goto_4a

    :cond_47
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :goto_4a
    iput-object p3, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    :cond_4c
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
