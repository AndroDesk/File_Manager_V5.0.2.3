.class public abstract Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;
.super Lcom/android/fileexplorer/fragment/LazyFragment;
.source "AbsMoreAppFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$GetFixAppTagTask;,
        Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$RefreshSourceTask;
    }
.end annotation


# instance fields
.field public mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mGetFixAppTagTask:Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$GetFixAppTagTask;

.field private mLoadingDynamic:Z

.field private mLoadingFix:Z

.field private mTask:Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$RefreshSourceTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mLoadingFix:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mLoadingDynamic:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->loadData()V

    return-void
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mLoadingDynamic:Z

    return p1
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mLoadingFix:Z

    return p1
.end method

.method private loadData()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mLoadingFix:Z

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mLoadingDynamic:Z

    if-eqz v0, :cond_9

    goto :goto_43

    :cond_9
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadBusinessData: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mLoadingFix:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mLoadingDynamic:Z

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mTask:Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$RefreshSourceTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mGetFixAppTagTask:Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$GetFixAppTagTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$RefreshSourceTask;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$RefreshSourceTask;-><init>(Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mTask:Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$RefreshSourceTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$GetFixAppTagTask;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$GetFixAppTagTask;-><init>(Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mGetFixAppTagTask:Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$GetFixAppTagTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->getLogTag()Ljava/lang/String;

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

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const p1, 0x7f12032d

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mTask:Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$RefreshSourceTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mGetFixAppTagTask:Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$GetFixAppTagTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mLoadingDynamic:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mLoadingFix:Z

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

.method public abstract onPreLoadDynamicTag()V
.end method

.method public abstract onPreLoadFixedTag()V
.end method

.method public onUserVisible(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    new-instance p1, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment$1;-><init>(Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    return-void
.end method
