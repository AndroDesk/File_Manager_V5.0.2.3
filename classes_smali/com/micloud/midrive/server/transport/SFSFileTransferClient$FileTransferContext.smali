.class public Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;
.super Ljava/lang/Object;
.source "SFSFileTransferClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/server/transport/SFSFileTransferClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileTransferContext"
.end annotation


# instance fields
.field public final retryCountDown:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;->retryCountDown:I

    .line 6
    return-void
.end method
