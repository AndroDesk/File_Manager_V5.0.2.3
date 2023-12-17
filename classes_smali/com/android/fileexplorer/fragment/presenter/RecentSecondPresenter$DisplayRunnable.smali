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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->ref:Ljava/lang/ref/WeakReference;

    .line 11
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->files:Ljava/util/List;

    .line 13
    iput-boolean p3, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->hasMore:Z

    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->ref:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2f

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->ref:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->files:Ljava/util/List;

    .line 19
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1b

    .line 25
    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Empty:Lcom/android/cloud/constant/PageConstant$PageStatus;

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->List:Lcom/android/cloud/constant/PageConstant$PageStatus;

    .line 30
    :goto_1d
    iget-boolean v2, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->hasMore:Z

    .line 32
    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;Z)V

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->ref:Ljava/lang/ref/WeakReference;

    .line 37
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    .line 43
    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;->hasMore:Z

    .line 45
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->finishPullRefresh(Z)V

    .line 48
    :cond_2f
    return-void
.end method
