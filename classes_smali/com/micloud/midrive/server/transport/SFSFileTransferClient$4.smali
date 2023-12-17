.class Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;
.super Ljava/lang/Object;
.source "SFSFileTransferClient.java"

# interfaces
.implements Lcom/micloud/midrive/server/transport/SFSFileTransferClient$IMiCloudFileClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$client:Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

.field public final synthetic val$requester:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;->val$client:Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;->val$requester:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$MiCloudFileMasterRequestor;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public download(Landroid/content/Context;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;",
            "TT;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4$1;

    .line 3
    invoke-direct {p1, p0, p2}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4$1;-><init>(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;)V

    .line 6
    instance-of p2, p3, Lq1/a;

    .line 8
    if-eqz p2, :cond_11

    .line 10
    iget-object p2, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;->val$client:Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    .line 12
    check-cast p3, Lq1/a;

    .line 14
    invoke-virtual {p2, p3, p4, p5, p1}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->download(Lq1/a;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$DownloadParameterProvider;)V

    .line 17
    goto :goto_18

    .line 18
    :cond_11
    iget-object p2, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;->val$client:Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    .line 20
    check-cast p3, Ljava/io/File;

    .line 22
    invoke-virtual {p2, p3, p4, p5, p1}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->download(Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster$DownloadParameterProvider;)V

    .line 25
    :goto_18
    return-void
.end method

.method public upload(Landroid/content/Context;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;",
            "TT;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;",
            ")",
            "Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;"
        }
    .end annotation

    .line 1
    instance-of p1, p3, Lr1/j;

    .line 3
    if-eqz p1, :cond_f

    .line 5
    iget-object p1, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;->val$client:Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    .line 7
    check-cast p3, Lr1/j;

    .line 9
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->upload(Ljava/lang/Object;Lr1/j;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    .line 15
    return-object p1

    .line 16
    :cond_f
    iget-object p1, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$4;->val$client:Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    .line 18
    check-cast p3, Ljava/io/File;

    .line 20
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->upload(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    .line 26
    return-object p1
.end method
