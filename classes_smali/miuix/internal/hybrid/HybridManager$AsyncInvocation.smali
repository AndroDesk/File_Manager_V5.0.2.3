.class Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;
.super Ljava/lang/Object;
.source "HybridManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/hybrid/HybridManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncInvocation"
.end annotation


# instance fields
.field private mFeature:Lmiuix/hybrid/HybridFeature;

.field private mHybridManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/internal/hybrid/HybridManager;",
            ">;"
        }
    .end annotation
.end field

.field private mJsCallback:Ljava/lang/String;

.field private mRequestKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/HybridFeature;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;->mHybridManager:Ljava/lang/ref/WeakReference;

    .line 11
    iput-object p2, p0, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;->mFeature:Lmiuix/hybrid/HybridFeature;

    .line 13
    iput-object p3, p0, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;->mRequestKey:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;->mJsCallback:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;->mHybridManager:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/internal/hybrid/HybridManager;

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-static {v0}, Lmiuix/internal/hybrid/HybridManager;->access$100(Lmiuix/internal/hybrid/HybridManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;->mRequestKey:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lmiuix/hybrid/Request;

    .line 24
    if-eqz v1, :cond_47

    .line 26
    invoke-virtual {v0}, Lmiuix/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_47

    .line 36
    invoke-virtual {v0}, Lmiuix/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2e

    .line 46
    goto :goto_47

    .line 47
    :cond_2e
    iget-object v2, p0, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;->mFeature:Lmiuix/hybrid/HybridFeature;

    .line 49
    invoke-interface {v2, v1}, Lmiuix/hybrid/HybridFeature;->invoke(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;->mFeature:Lmiuix/hybrid/HybridFeature;

    .line 55
    invoke-interface {v3, v1}, Lmiuix/hybrid/HybridFeature;->getInvocationMode(Lmiuix/hybrid/Request;)Lmiuix/hybrid/HybridFeature$Mode;

    .line 58
    move-result-object v3

    .line 59
    sget-object v4, Lmiuix/hybrid/HybridFeature$Mode;->ASYNC:Lmiuix/hybrid/HybridFeature$Mode;

    .line 61
    if-ne v3, v4, :cond_47

    .line 63
    invoke-virtual {v1}, Lmiuix/hybrid/Request;->getPageContext()Lmiuix/hybrid/PageContext;

    .line 66
    move-result-object v1

    .line 67
    iget-object v3, p0, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;->mJsCallback:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v2, v1, v3}, Lmiuix/internal/hybrid/HybridManager;->callback(Lmiuix/hybrid/Response;Lmiuix/hybrid/PageContext;Ljava/lang/String;)V

    .line 72
    :cond_47
    :goto_47
    return-void
.end method
