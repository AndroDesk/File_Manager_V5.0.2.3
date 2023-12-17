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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;->ref:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;->files:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Empty:Lcom/android/cloud/constant/PageConstant$PageStatus;

    goto :goto_1d

    :cond_1b
    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->List:Lcom/android/cloud/constant/PageConstant$PageStatus;

    :goto_1d
    invoke-interface {v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    :cond_20
    return-void
.end method
