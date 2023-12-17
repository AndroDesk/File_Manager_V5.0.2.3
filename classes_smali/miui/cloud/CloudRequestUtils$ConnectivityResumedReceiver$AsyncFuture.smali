.class final Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;
.super Ljava/util/concurrent/FutureTask;
.source "CloudRequestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AsyncFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture$1;

    .line 3
    invoke-direct {v0}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture$1;-><init>()V

    .line 6
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 9
    return-void
.end method


# virtual methods
.method public setResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    .line 4
    return-void
.end method
