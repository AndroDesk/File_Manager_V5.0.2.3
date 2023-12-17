.class public Lmiui/cloud/common/XMainThreadCallback;
.super Lmiui/cloud/common/XDirectCallback;
.source "XMainThreadCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/XMainThreadCallback$CallRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/cloud/common/XDirectCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lmiui/cloud/common/XDirectCallback;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lmiui/cloud/common/XMainThreadCallback$1;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object p2

    .line 10
    invoke-direct {p1, p0, p2}, Lmiui/cloud/common/XMainThreadCallback$1;-><init>(Lmiui/cloud/common/XMainThreadCallback;Landroid/os/Looper;)V

    .line 13
    iput-object p1, p0, Lmiui/cloud/common/XMainThreadCallback;->mHandler:Landroid/os/Handler;

    .line 15
    return-void
.end method


# virtual methods
.method public handleCallback(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiui/cloud/common/XMainThreadCallback;->mHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lmiui/cloud/common/XMainThreadCallback$CallRequest;

    .line 9
    invoke-direct {v1, p1, p2}, Lmiui/cloud/common/XMainThreadCallback$CallRequest;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 12
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method public handleCallbackInMainThread(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Lmiui/cloud/common/XDirectCallback;->handleCallback(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 4
    goto :goto_f

    .line 5
    :catchall_4
    const/4 p1, 0x1

    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    .line 8
    const/4 p2, 0x0

    .line 9
    const-string v0, "Exception in callback, but unable to propagate to the original thread. "

    .line 11
    aput-object v0, p1, p2

    .line 13
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 16
    :goto_f
    return-void
.end method
