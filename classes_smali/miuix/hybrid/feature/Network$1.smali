.class Lmiuix/hybrid/feature/Network$1;
.super Lmiuix/hybrid/LifecycleListener;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/hybrid/feature/Network;->enableNotification(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/hybrid/feature/Network;

.field public final synthetic val$nativeInterface:Lmiuix/hybrid/NativeInterface;


# direct methods
.method public constructor <init>(Lmiuix/hybrid/feature/Network;Lmiuix/hybrid/NativeInterface;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/hybrid/feature/Network$1;->this$0:Lmiuix/hybrid/feature/Network;

    .line 3
    iput-object p2, p0, Lmiuix/hybrid/feature/Network$1;->val$nativeInterface:Lmiuix/hybrid/NativeInterface;

    .line 5
    invoke-direct {p0}, Lmiuix/hybrid/LifecycleListener;-><init>()V

    .line 8
    return-void
.end method

.method private unregister()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/feature/Network$1;->this$0:Lmiuix/hybrid/feature/Network;

    .line 3
    iget-object v1, p0, Lmiuix/hybrid/feature/Network$1;->val$nativeInterface:Lmiuix/hybrid/NativeInterface;

    .line 5
    invoke-static {v0, v1}, Lmiuix/hybrid/feature/Network;->access$200(Lmiuix/hybrid/feature/Network;Lmiuix/hybrid/NativeInterface;)V

    .line 8
    iget-object v0, p0, Lmiuix/hybrid/feature/Network$1;->this$0:Lmiuix/hybrid/feature/Network;

    .line 10
    invoke-static {v0}, Lmiuix/hybrid/feature/Network;->access$000(Lmiuix/hybrid/feature/Network;)Lmiuix/hybrid/Callback;

    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lmiuix/hybrid/Response;

    .line 16
    const/16 v2, 0x64

    .line 18
    invoke-direct {v1, v2}, Lmiuix/hybrid/Response;-><init>(I)V

    .line 21
    invoke-virtual {v0, v1}, Lmiuix/hybrid/Callback;->callback(Lmiuix/hybrid/Response;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/hybrid/feature/Network$1;->unregister()V

    .line 4
    return-void
.end method

.method public onPageChange()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/hybrid/feature/Network$1;->unregister()V

    .line 4
    return-void
.end method
