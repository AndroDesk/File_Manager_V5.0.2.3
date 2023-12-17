.class public abstract Landroidx/fragment/app/x;
.super Li1/a;
.source "FragmentPagerAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT:I = 0x1

.field public static final BEHAVIOR_SET_USER_VISIBLE_HINT:I = 0x0
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
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/x;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .registers 4

    .line 2
    invoke-direct {p0}, Li1/a;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 4
    iput-object v0, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 5
    iput-object p1, p0, Landroidx/fragment/app/x;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 6
    iput p2, p0, Landroidx/fragment/app/x;->mBehavior:I

    return-void
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "android:switcher:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string p0, ":"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 5
    if-nez p1, :cond_e

    .line 7
    iget-object p1, p0, Landroidx/fragment/app/x;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 9
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 15
    :cond_e
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 17
    invoke-virtual {p1, p3}, Landroidx/fragment/app/b0;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 20
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 22
    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1e

    .line 28
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 31
    :cond_1e
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 5

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 3
    if-eqz p1, :cond_20

    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/x;->mExecutingFinishUpdate:Z

    .line 7
    if-nez v0, :cond_1d

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_a
    iput-boolean v1, p0, Landroidx/fragment/app/x;->mExecutingFinishUpdate:Z

    .line 13
    check-cast p1, Landroidx/fragment/app/a;

    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/b0;->g()V

    .line 18
    iget-object v2, p1, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 20
    invoke-virtual {v2, p1, v1}, Landroidx/fragment/app/FragmentManager;->y(Landroidx/fragment/app/FragmentManager$n;Z)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    .line 23
    iput-boolean v0, p0, Landroidx/fragment/app/x;->mExecutingFinishUpdate:Z

    .line 25
    goto :goto_1d

    .line 26
    :catchall_19
    move-exception p1

    .line 27
    iput-boolean v0, p0, Landroidx/fragment/app/x;->mExecutingFinishUpdate:Z

    .line 29
    throw p1

    .line 30
    :cond_1d
    :goto_1d
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 33
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

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/x;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 7
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 13
    :cond_c
    invoke-virtual {p0, p2}, Landroidx/fragment/app/x;->getItemId(I)J

    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 20
    move-result v2

    .line 21
    invoke-static {v2, v0, v1}, Landroidx/fragment/app/x;->makeFragmentName(IJ)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Landroidx/fragment/app/x;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 27
    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_30

    .line 34
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    new-instance p2, Landroidx/fragment/app/b0$a;

    .line 41
    const/4 v0, 0x7

    .line 42
    invoke-direct {p2, v0, v2}, Landroidx/fragment/app/b0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 45
    invoke-virtual {p1, p2}, Landroidx/fragment/app/b0;->b(Landroidx/fragment/app/b0$a;)V

    .line 48
    goto :goto_45

    .line 49
    :cond_30
    invoke-virtual {p0, p2}, Landroidx/fragment/app/x;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 52
    move-result-object v2

    .line 53
    iget-object p2, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 58
    move-result v4

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 62
    move-result p1

    .line 63
    invoke-static {p1, v0, v1}, Landroidx/fragment/app/x;->makeFragmentName(IJ)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p2, v4, v2, p1, v3}, Landroidx/fragment/app/b0;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 70
    :goto_45
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 72
    if-eq v2, p1, :cond_5c

    .line 74
    const/4 p1, 0x0

    .line 75
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 78
    iget p2, p0, Landroidx/fragment/app/x;->mBehavior:I

    .line 80
    if-ne p2, v3, :cond_59

    .line 82
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 84
    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 86
    invoke-virtual {p1, v2, p2}, Landroidx/fragment/app/b0;->m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/a;

    .line 89
    goto :goto_5c

    .line 90
    :cond_59
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 93
    :cond_5c
    :goto_5c
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    .line 1
    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 6
    move-result-object p2

    .line 7
    if-ne p2, p1, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
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

    .line 1
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 5
    if-eq p3, p1, :cond_4c

    .line 7
    const/4 p2, 0x1

    .line 8
    if-eqz p1, :cond_2c

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 14
    iget p1, p0, Landroidx/fragment/app/x;->mBehavior:I

    .line 16
    if-ne p1, p2, :cond_27

    .line 18
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 20
    if-nez p1, :cond_1d

    .line 22
    iget-object p1, p0, Landroidx/fragment/app/x;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 24
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 30
    :cond_1d
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 32
    iget-object v0, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 34
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 36
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/b0;->m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/a;

    .line 39
    goto :goto_2c

    .line 40
    :cond_27
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 42
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 45
    :cond_2c
    :goto_2c
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 48
    iget p1, p0, Landroidx/fragment/app/x;->mBehavior:I

    .line 50
    if-ne p1, p2, :cond_47

    .line 52
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 54
    if-nez p1, :cond_3f

    .line 56
    iget-object p1, p0, Landroidx/fragment/app/x;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 58
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 64
    :cond_3f
    iget-object p1, p0, Landroidx/fragment/app/x;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 66
    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 68
    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/b0;->m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/a;

    .line 71
    goto :goto_4a

    .line 72
    :cond_47
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 75
    :goto_4a
    iput-object p3, p0, Landroidx/fragment/app/x;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 77
    :cond_4c
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v1, "ViewPager with adapter "

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, " requires a view id"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
.end method
