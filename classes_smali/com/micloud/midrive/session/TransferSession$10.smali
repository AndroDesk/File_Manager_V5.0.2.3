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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession$10;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$10;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-static {}, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;->buildSuccessResult()Lcom/micloud/midrive/session/TransferSession$TransferResultInner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/BaseSession;->finish(Lcom/micloud/midrive/session/BaseSession$Result;)V

    return-void
.end method
