.class Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4$1;
.super Ljava/lang/Object;
.source "SFSFileTransferClient.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$DownloadParameterProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;->download(Landroid/content/Context;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;

.field public final synthetic val$remoteInfo:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4$1;->this$0:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4$1;->val$remoteInfo:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getDownloadJSONObject()Lorg/json/JSONObject;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4$1;->this$0:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;

    .line 3
    iget-object v0, v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;->val$requester:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;

    .line 5
    iget-object v1, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4$1;->val$remoteInfo:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    .line 7
    invoke-virtual {v0, v1}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->requestDownload(Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4$1;->this$0:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;

    .line 13
    iget-object v1, v1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;->val$requester:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;

    .line 15
    iget-object v2, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4$1;->val$remoteInfo:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;->handleRequestDownloadResultJson(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Lorg/json/JSONObject;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2a

    .line 23
    const-string v1, "data"

    .line 25
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "downLoads"

    .line 31
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lorg/json/JSONObject;

    .line 42
    return-object v0

    .line 43
    :cond_2a
    const/4 v0, 0x0

    .line 44
    return-object v0
.end method
