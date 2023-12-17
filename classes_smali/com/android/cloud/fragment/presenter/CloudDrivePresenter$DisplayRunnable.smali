.class Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;
.super Ljava/lang/Object;
.source "CloudDrivePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;
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
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;"
        }
    .end annotation
.end field

.field private ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/cloud/fragment/presenter/CloudFileContract$View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cloud/fragment/presenter/CloudFileContract$View;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;->ref:Ljava/lang/ref/WeakReference;

    .line 11
    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;->files:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;->ref:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_20

    .line 9
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;->ref:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 17
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;->files:Ljava/util/List;

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
    invoke-interface {v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    .line 33
    :cond_20
    return-void
.end method
