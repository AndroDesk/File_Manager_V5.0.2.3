.class public abstract Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;
.source "MirrorAbsMoreAppFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;,
        Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$RefreshSourceTask;
    }
.end annotation


# instance fields
.field public mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mGetFixAppTagTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;

.field private mLoadingDynamic:Z

.field private mLoadingFix:Z

.field private mRootView:Landroid/view/View;

.field private mTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$RefreshSourceTask;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingFix:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingDynamic:Z

    .line 9
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->loadData()V

    .line 4
    return-void
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingDynamic:Z

    .line 3
    return p1
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingFix:Z

    .line 3
    return p1
.end method

.method private loadData()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingFix:Z

    .line 3
    if-nez v0, :cond_43

    .line 5
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingDynamic:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_43

    .line 10
    :cond_9
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->getLogTag()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "loadBusinessData: "

    .line 16
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingFix:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingDynamic:Z

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$RefreshSourceTask;

    .line 26
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mGetFixAppTagTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;

    .line 31
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 34
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$RefreshSourceTask;

    .line 36
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$RefreshSourceTask;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;)V

    .line 39
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$RefreshSourceTask;

    .line 41
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    new-array v3, v2, [Ljava/lang/Void;

    .line 48
    invoke-virtual {v0, v1, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;

    .line 53
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;)V

    .line 56
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mGetFixAppTagTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;

    .line 58
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 61
    move-result-object v1

    .line 62
    new-array v2, v2, [Ljava/lang/Void;

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    return-void

    .line 68
    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->getLogTag()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    const-string v1, "loading, return."

    .line 74
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public abstract asyncLoadDynamicTag()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asyncLoadFixedTag()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLayoutRes()I
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method public abstract initView(Landroid/view/View;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 12
    const p1, 0x7f12032d

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 18
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDestroyView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$RefreshSourceTask;

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mGetFixAppTagTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingDynamic:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingFix:Z

    .line 19
    return-void
.end method

.method public abstract onFinishLoadDynamicTag(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFinishLoadFixedTag(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)V"
        }
    .end annotation
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mRootView:Landroid/view/View;

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mInited:Z

    .line 8
    return-object p3

    .line 9
    :cond_8
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->getLayoutRes()I

    .line 12
    move-result p3

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mRootView:Landroid/view/View;

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->initView(Landroid/view/View;)V

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mRootView:Landroid/view/View;

    .line 25
    return-object p1
.end method

.method public abstract onPreLoadDynamicTag()V
.end method

.method public abstract onPreLoadFixedTag()V
.end method

.method public onUserVisible(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    .line 4
    new-instance p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$1;

    .line 6
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;)V

    .line 9
    const-wide/16 v0, 0x32

    .line 11
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 14
    return-void
.end method
