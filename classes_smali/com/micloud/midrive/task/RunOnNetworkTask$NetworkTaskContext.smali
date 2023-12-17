.class public Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;
.super Lcom/micloud/midrive/task/BaseTask$TaskContext;
.source "RunOnNetworkTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/RunOnNetworkTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkTaskContext"
.end annotation


# instance fields
.field public final network:Lcom/micloud/midrive/server/transport/Network;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;Lcom/micloud/midrive/server/transport/Network;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/task/BaseTask$TaskContext;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;->network:Lcom/micloud/midrive/server/transport/Network;

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/task/BaseTask$TaskContext;Lcom/micloud/midrive/server/transport/Network;)V
    .registers 5

    iget-object v0, p1, Lcom/micloud/midrive/task/BaseTask$TaskContext;->context:Landroid/content/Context;

    iget-object v1, p1, Lcom/micloud/midrive/task/BaseTask$TaskContext;->account:Landroid/accounts/Account;

    iget-object p1, p1, Lcom/micloud/midrive/task/BaseTask$TaskContext;->listenerHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, p1}, Lcom/micloud/midrive/task/BaseTask$TaskContext;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;->network:Lcom/micloud/midrive/server/transport/Network;

    return-void
.end method
