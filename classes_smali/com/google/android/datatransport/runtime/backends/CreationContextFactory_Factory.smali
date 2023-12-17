.class public final Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;
.super Ljava/lang/Object;
.source "CreationContextFactory_Factory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
        "Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationContextProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final monotonicClockProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final wallClockProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx2/a;Lx2/a;Lx2/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;",
            "Lx2/a<",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            ">;",
            "Lx2/a<",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;->applicationContextProvider:Lx2/a;

    .line 6
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;->wallClockProvider:Lx2/a;

    .line 8
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;->monotonicClockProvider:Lx2/a;

    .line 10
    return-void
.end method

.method public static create(Lx2/a;Lx2/a;Lx2/a;)Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;",
            "Lx2/a<",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            ">;",
            "Lx2/a<",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;-><init>(Lx2/a;Lx2/a;Lx2/a;)V

    .line 6
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;)Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;->applicationContextProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;->wallClockProvider:Lx2/a;

    invoke-interface {v1}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/time/Clock;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;->monotonicClockProvider:Lx2/a;

    invoke-interface {v2}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-static {v0, v1, v2}, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;->newInstance(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;)Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;->get()Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;

    move-result-object v0

    return-object v0
.end method
