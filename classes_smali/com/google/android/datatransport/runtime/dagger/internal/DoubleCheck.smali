.class public final Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;
.super Ljava/lang/Object;
.source "DoubleCheck.java"

# interfaces
.implements Lx2/a;
.implements Lcom/google/android/datatransport/runtime/dagger/Lazy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx2/a<",
        "TT;>;",
        "Lcom/google/android/datatransport/runtime/dagger/Lazy<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private volatile instance:Ljava/lang/Object;

.field private volatile provider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lx2/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider:Lx2/a;

    return-void
.end method

.method public static lazy(Lx2/a;)Lcom/google/android/datatransport/runtime/dagger/Lazy;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lx2/a<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lcom/google/android/datatransport/runtime/dagger/Lazy<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/datatransport/runtime/dagger/Lazy;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/android/datatransport/runtime/dagger/Lazy;

    return-object p0

    :cond_7
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx2/a;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;-><init>(Lx2/a;)V

    return-object v0
.end method

.method public static provider(Lx2/a;)Lx2/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lx2/a<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lx2/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    if-eqz v0, :cond_8

    return-object p0

    :cond_8
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;-><init>(Lx2/a;)V

    return-object v0
.end method

.method public static reentrantCheck(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-eq p0, v0, :cond_a

    instance-of v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/MemoizedSentinel;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_34

    if-ne p0, p1, :cond_10

    goto :goto_34

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scoped provider was invoked recursively returning different results: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " & "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". This is likely due to a circular dependency."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    :goto_34
    return-object p1
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_21

    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->reentrantCheck(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider:Lx2/a;

    :cond_1c
    monitor-exit p0

    goto :goto_21

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    :goto_21
    return-object v0
.end method
