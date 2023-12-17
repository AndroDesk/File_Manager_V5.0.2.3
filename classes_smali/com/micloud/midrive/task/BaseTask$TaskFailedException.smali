.class public Lcom/micloud/midrive/task/BaseTask$TaskFailedException;
.super Lcom/micloud/midrive/task/BaseTask$TaskException;
.source "BaseTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/BaseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskFailedException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/BaseTask$TaskException;-><init>(Ljava/lang/Throwable;)V

    .line 4
    return-void
.end method
