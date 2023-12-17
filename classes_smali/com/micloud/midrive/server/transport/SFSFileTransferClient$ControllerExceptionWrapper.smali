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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wrap(Ljava/lang/Throwable;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;
    .registers 2

    new-instance v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$ControllerExceptionWrapper;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
