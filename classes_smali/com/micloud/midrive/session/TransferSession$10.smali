.class Lcom/micloud/midrive/session/TransferSession$10;
.super Ljava/lang/Object;
.source "TransferSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/TransferSession;->performFinishH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/TransferSession;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession$10;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$10;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 3
    invoke-static {}, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;->buildSuccessResult()Lcom/micloud/midrive/session/TransferSession$TransferResultInner;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/BaseSession;->finish(Lcom/micloud/midrive/session/BaseSession$Result;)V

    .line 10
    return-void
.end method
