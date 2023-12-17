.class Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$CloudQueryFileAllPathTask;
.super Lcom/android/cloud/task/QueryFileAllPathTask;
.source "CloudDrivePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudQueryFileAllPathTask"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/cloud/task/QueryFileAllPathTask;-><init>(Ljava/lang/String;Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cloud/fragment/presenter/CloudFileContract$View;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/FolderParentInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->updatePathGallery(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$CloudQueryFileAllPathTask;->onPostExecute(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;Ljava/util/List;)V

    return-void
.end method
