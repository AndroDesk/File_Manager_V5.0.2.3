.class Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$1;
.super Ljava/lang/Object;
.source "MiCloudFileMaster.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$DownloadParameterProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->download(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

.field public final synthetic val$remoteInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;Ljava/lang/Object;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$1;->this$0:Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$1;->val$remoteInfo:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getDownloadJSONObject()Lorg/json/JSONObject;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$1;->this$0:Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->access$000(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;)Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$1;->val$remoteInfo:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v1}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->requestDownload(Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$1;->this$0:Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    .line 15
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->access$000(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;)Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;

    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$1;->val$remoteInfo:Ljava/lang/Object;

    .line 21
    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->handleRequestDownloadResultJson(Ljava/lang/Object;Lorg/json/JSONObject;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_21

    .line 27
    const-string v1, "data"

    .line 29
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :cond_21
    const/4 v0, 0x0

    .line 35
    return-object v0
.end method
