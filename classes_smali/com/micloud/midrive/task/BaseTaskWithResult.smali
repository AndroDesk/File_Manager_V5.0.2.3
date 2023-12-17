.class public abstract Lcom/micloud/midrive/task/BaseTaskWithResult;
.super Lcom/micloud/midrive/task/BaseTask;
.source "BaseTaskWithResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/micloud/midrive/task/BaseTask;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/task/BaseTask$TaskContext;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/BaseTask;-><init>(Lcom/micloud/midrive/task/BaseTask$TaskContext;)V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract getResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
