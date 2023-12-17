.class public abstract Ln/c;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract executeOnDiskIO(Ljava/lang/Runnable;)V
.end method

.method public executeOnMainThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Ln/c;->isMainThread()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    invoke-virtual {p0, p1}, Ln/c;->postToMainThread(Ljava/lang/Runnable;)V

    .line 14
    :goto_d
    return-void
.end method

.method public abstract isMainThread()Z
.end method

.method public abstract postToMainThread(Ljava/lang/Runnable;)V
.end method
