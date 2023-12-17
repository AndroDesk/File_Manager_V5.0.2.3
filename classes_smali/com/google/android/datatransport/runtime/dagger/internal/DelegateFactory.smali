.class public final Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;
.super Ljava/lang/Object;
.source "DelegateFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDelegate(Lx2/a;Lx2/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lx2/a<",
            "TT;>;",
            "Lx2/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    check-cast p0, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;

    .line 6
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;->delegate:Lx2/a;

    .line 8
    if-nez v0, :cond_c

    .line 10
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;->delegate:Lx2/a;

    .line 12
    return-void

    .line 13
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 18
    throw p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;->delegate:Lx2/a;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 15
    throw v0
.end method

.method public getDelegate()Lx2/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx2/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;->delegate:Lx2/a;

    .line 3
    invoke-static {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx2/a;

    .line 9
    return-object v0
.end method

.method public setDelegatedProvider(Lx2/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/DelegateFactory;->setDelegate(Lx2/a;Lx2/a;)V

    .line 4
    return-void
.end method
