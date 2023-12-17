.class public abstract Lcom/android/fileexplorer/controller/Task$SimpleTask;
.super Lcom/android/fileexplorer/controller/Task;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/controller/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/controller/Task<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/controller/Task;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public executeOn(Ljava/util/concurrent/ExecutorService;)Lcom/android/fileexplorer/controller/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/android/fileexplorer/controller/Task<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/controller/Task$SimpleTask;->onPreExecute()V

    .line 4
    if-eqz p1, :cond_8

    .line 6
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    :cond_8
    return-object p0
.end method

.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onFail(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public onPreExecute()V
    .registers 1

    return-void
.end method
