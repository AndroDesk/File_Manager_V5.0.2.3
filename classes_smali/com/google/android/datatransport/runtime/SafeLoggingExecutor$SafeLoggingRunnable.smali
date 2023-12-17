.class Lcom/google/android/datatransport/runtime/SafeLoggingExecutor$SafeLoggingRunnable;
.super Ljava/lang/Object;
.source "SafeLoggingExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafeLoggingRunnable"
.end annotation


# instance fields
.field private final delegate:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor$SafeLoggingRunnable;->delegate:Ljava/lang/Runnable;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor$SafeLoggingRunnable;->delegate:Ljava/lang/Runnable;

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 6
    goto :goto_e

    .line 7
    :catch_6
    move-exception v0

    .line 8
    const-string v1, "Executor"

    .line 10
    const-string v2, "Background execution failure."

    .line 12
    invoke-static {v1, v2, v0}, Lcom/google/android/datatransport/runtime/logging/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :goto_e
    return-void
.end method
