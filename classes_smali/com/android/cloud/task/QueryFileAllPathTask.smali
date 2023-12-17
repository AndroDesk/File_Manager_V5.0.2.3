.class public Lcom/android/cloud/task/QueryFileAllPathTask;
.super Lcom/android/cloud/task/WeakAsyncTask;
.source "QueryFileAllPathTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/cloud/task/WeakAsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/micloud/midrive/infos/FolderParentInfo;",
        ">;",
        "Lcom/android/cloud/fragment/presenter/CloudFileContract$View;",
        ">;"
    }
.end annotation


# instance fields
.field public fileId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/android/cloud/task/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/cloud/task/QueryFileAllPathTask;->fileId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/cloud/task/QueryFileAllPathTask;->doInBackground(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;[Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cloud/fragment/presenter/CloudFileContract$View;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/FolderParentInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/cloud/task/QueryFileAllPathTask;->fileId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryParentInfoFromRoot(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    const-string p2, "query error:"

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "QueryFilePathTask"

    invoke-static {p1, p2, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
