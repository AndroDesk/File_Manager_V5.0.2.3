.class public final Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;
.super Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
.source "RunOnNetworkTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/RunOnNetworkTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkTaskStep"
.end annotation


# static fields
.field public static final WAIT_FOR_ANY_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

.field public static final WAIT_FOR_PROPER_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    const-string v1, "WAIT_FOR_ANY_NETWORK"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_ANY_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    new-instance v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    const-string v1, "WAIT_FOR_PROPER_NETWORK"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_PROPER_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static isWaitingNetworkStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Z
    .registers 2

    sget-object v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_ANY_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    if-eq v0, p0, :cond_b

    sget-object v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_PROPER_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    if-ne v0, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method
