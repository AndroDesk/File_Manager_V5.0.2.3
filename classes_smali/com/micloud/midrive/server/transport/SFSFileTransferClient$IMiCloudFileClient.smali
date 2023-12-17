.class interface abstract Lcom/micloud/midrive/server/transport/SFSFileTransferClient$IMiCloudFileClient;
.super Ljava/lang/Object;
.source "SFSFileTransferClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/server/transport/SFSFileTransferClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMiCloudFileClient"
.end annotation


# virtual methods
.method public abstract download(Landroid/content/Context;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
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
.end method

.method public abstract upload(Landroid/content/Context;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;
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
.end method
