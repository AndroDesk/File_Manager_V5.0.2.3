.class Lcom/micloud/midrive/server/transport/SFSFileTransferClient$3;
.super Ljava/lang/Object;
.source "SFSFileTransferClient.java"

# interfaces
.implements Lm1/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkStop()Z
    .registers 6

    .line 1
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    .line 3
    const-string v1, "transfer without stopper"

    .line 5
    if-eqz v0, :cond_24

    .line 7
    new-instance v0, Ljava/lang/Throwable;

    .line 9
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 12
    const/4 v2, 0x1

    .line 13
    new-array v3, v2, [Ljava/lang/Object;

    .line 15
    const/4 v4, 0x0

    .line 16
    aput-object v1, v3, v4

    .line 18
    invoke-static {v3}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 21
    new-array v1, v2, [Ljava/lang/Object;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    aput-object v0, v1, v4

    .line 33
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 36
    return v2

    .line 37
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0
.end method
