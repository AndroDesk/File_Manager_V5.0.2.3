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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingFix:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingDynamic:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->loadData()V

    return-void
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingDynamic:Z

    return p1
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingFix:Z

    return p1
.end method

.method private loadData()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingFix:Z

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingDynamic:Z

    if-eqz v0, :cond_9

    goto :goto_43

    :cond_9
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadBusinessData: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingFix:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingDynamic:Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$RefreshSourceTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mGetFixAppTagTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$RefreshSourceTask;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$RefreshSourceTask;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$RefreshSourceTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mGetFixAppTagTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loading, return."

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const p1, 0x7f12032d

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$RefreshSourceTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mGetFixAppTagTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$GetFixAppTagTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingDynamic:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mLoadingFix:Z

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

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mRootView:Landroid/view/View;

    if-eqz p3, :cond_8

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mInited:Z

    return-object p3

    :cond_8
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->getLayoutRes()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->initView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public abstract onPreLoadDynamicTag()V
.end method

.method public abstract onPreLoadFixedTag()V
.end method

.method public onUserVisible(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    new-instance p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorAbsMoreAppFragment;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    return-void
.end method
