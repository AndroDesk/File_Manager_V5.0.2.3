.class public Lmiuix/hybrid/NativeInterface;
.super Ljava/lang/Object;
.source "NativeInterface.java"


# instance fields
.field private mManager:Lmiuix/internal/hybrid/HybridManager;


# direct methods
.method public constructor <init>(Lmiuix/internal/hybrid/HybridManager;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/hybrid/NativeInterface;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 6
    return-void
.end method


# virtual methods
.method public addLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/NativeInterface;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/HybridManager;->addLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V

    .line 6
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/NativeInterface;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    invoke-virtual {v0}, Lmiuix/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public removeLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/NativeInterface;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/HybridManager;->removeLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V

    .line 6
    return-void
.end method
