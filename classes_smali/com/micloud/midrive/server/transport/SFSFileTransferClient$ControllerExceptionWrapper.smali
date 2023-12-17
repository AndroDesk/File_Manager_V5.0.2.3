.class Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;
.super Ljava/lang/Exception;
.source "SFSFileTransferClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/server/transport/SFSFileTransferClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerExceptionWrapper"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 4
    return-void
.end method

.method public static wrap(Ljava/lang/Throwable;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;

    .line 3
    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;-><init>(Ljava/lang/Throwable;)V

    .line 6
    return-object v0
.end method
