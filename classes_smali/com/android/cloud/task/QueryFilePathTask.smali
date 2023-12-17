.class public Lcom/android/cloud/task/QueryFilePathTask;
.super Lcom/android/cloud/task/WeakAsyncTask;
.source "QueryFilePathTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/cloud/task/WeakAsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field public fileId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/android/cloud/task/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/android/cloud/task/QueryFilePathTask;->fileId:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Landroid/content/Context;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/cloud/task/QueryFilePathTask;->doInBackground(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object p2

    iget-object v0, p0, Lcom/android/cloud/task/QueryFilePathTask;->fileId:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getDirPath(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Lcom/micloud/midrive/infos/CloudFilePathInfo;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/micloud/midrive/infos/CloudFilePathInfo;->path:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    const-string p2, "query error:"

    .line 4
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "QueryFilePathTask"

    .line 5
    invoke-static {p1, p2, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method
