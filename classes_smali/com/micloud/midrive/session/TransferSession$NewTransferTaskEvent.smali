.class public abstract Lcom/micloud/midrive/session/TransferSession$NewTransferTaskEvent;
.super Lcom/micloud/midrive/session/TransferSession$TransferEvent;
.source "TransferSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/TransferSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "NewTransferTaskEvent"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/TransferSession;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession$NewTransferTaskEvent;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession$TransferEvent;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    return-void
.end method
