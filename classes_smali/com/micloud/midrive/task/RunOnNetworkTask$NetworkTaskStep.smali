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

    .line 1
    new-instance v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    .line 3
    const-string v1, "WAIT_FOR_ANY_NETWORK"

    .line 5
    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_ANY_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    .line 10
    new-instance v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    .line 12
    const-string v1, "WAIT_FOR_PROPER_NETWORK"

    .line 14
    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_PROPER_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static isWaitingNetworkStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_ANY_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    .line 3
    if-eq v0, p0, :cond_b

    .line 5
    sget-object v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_PROPER_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    .line 7
    if-ne v0, p0, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 p0, 0x1

    .line 13
    :goto_c
    return p0
.end method
