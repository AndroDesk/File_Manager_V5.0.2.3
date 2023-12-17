.class Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$CloudQueryMemberStatusTask;
.super Lcom/android/cloud/task/QueryMemberStatusTask;
.source "CloudDrivePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudQueryMemberStatusTask"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/task/QueryMemberStatusTask;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;Lmiui/cloud/sync/MiCloudStatusInfo;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/cloud/task/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p2}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object p2

    invoke-virtual {p2}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceFull()Z

    move-result p2

    if-eqz p2, :cond_1a

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->updateCloudNotify(Z)V

    goto :goto_1e

    :cond_1a
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->updateCloudNotify(Z)V

    :goto_1e
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    check-cast p2, Lmiui/cloud/sync/MiCloudStatusInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$CloudQueryMemberStatusTask;->onPostExecute(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;Lmiui/cloud/sync/MiCloudStatusInfo;)V

    return-void
.end method
