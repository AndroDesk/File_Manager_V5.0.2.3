.class public Lcom/micloud/midrive/task/BaseTask$TaskContext;
.super Ljava/lang/Object;
.source "BaseTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/BaseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskContext"
.end annotation


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final context:Landroid/content/Context;

.field public final listenerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask$TaskContext;->context:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/task/BaseTask$TaskContext;->account:Landroid/accounts/Account;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/task/BaseTask$TaskContext;->listenerHandler:Landroid/os/Handler;

    .line 10
    return-void
.end method
