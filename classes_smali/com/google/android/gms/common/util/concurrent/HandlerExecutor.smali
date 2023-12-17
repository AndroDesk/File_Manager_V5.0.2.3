.class public Lcom/google/android/gms/common/util/concurrent/HandlerExecutor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/common/zze;

    .line 6
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/common/zze;-><init>(Landroid/os/Looper;)V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/common/util/concurrent/HandlerExecutor;->handler:Landroid/os/Handler;

    .line 11
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/util/concurrent/HandlerExecutor;->handler:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    return-void
.end method
