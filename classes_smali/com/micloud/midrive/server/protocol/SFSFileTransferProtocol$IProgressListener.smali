.class public interface abstract Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;
.super Ljava/lang/Object;
.source "SFSFileTransferProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IProgressListener"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onProgress(JJ)V
.end method
