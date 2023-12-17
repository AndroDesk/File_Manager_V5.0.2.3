.class Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;
.super Ljava/lang/Object;
.source "RecentSecondPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayRunnable"
.end annotation


# instance fields
.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation
.end field

.field private hasMore:Z

.field private ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->ref:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->files:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->hasMore:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Empty:Lcom/android/cloud/constant/PageConstant$PageStatus;

    goto :goto_1d

    :cond_1b
    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->List:Lcom/android/cloud/constant/PageConstant$PageStatus;

    :goto_1d
    iget-boolean v2, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->hasMore:Z

    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->hasMore:Z

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->finishPullRefresh(Z)V

    :cond_2f
    return-void
.end method
