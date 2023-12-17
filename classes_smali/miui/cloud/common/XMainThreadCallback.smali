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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lmiui/cloud/common/XDirectCallback;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance p1, Lmiui/cloud/common/XMainThreadCallback$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lmiui/cloud/common/XMainThreadCallback$1;-><init>(Lmiui/cloud/common/XMainThreadCallback;Landroid/os/Looper;)V

    iput-object p1, p0, Lmiui/cloud/common/XMainThreadCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleCallback(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lmiui/cloud/common/XMainThreadCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lmiui/cloud/common/XMainThreadCallback$CallRequest;

    invoke-direct {v1, p1, p2}, Lmiui/cloud/common/XMainThreadCallback$CallRequest;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public handleCallbackInMainThread(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    invoke-super {p0, p1, p2}, Lmiui/cloud/common/XDirectCallback;->handleCallback(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_f

    :catchall_4
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "Exception in callback, but unable to propagate to the original thread. "

    aput-object v0, p1, p2

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    :goto_f
    return-void
.end method
