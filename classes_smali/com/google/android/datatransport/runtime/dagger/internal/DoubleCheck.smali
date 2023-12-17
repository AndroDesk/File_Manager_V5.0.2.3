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

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    .line 8
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider:Lx2/a;

    .line 10
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

    .line 1
    instance-of v0, p0, Lcom/google/android/datatransport/runtime/dagger/Lazy;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    check-cast p0, Lcom/google/android/datatransport/runtime/dagger/Lazy;

    .line 7
    return-object p0

    .line 8
    :cond_7
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    .line 10
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lx2/a;

    .line 16
    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;-><init>(Lx2/a;)V

    .line 19
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

    .line 1
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-object p0

    .line 9
    :cond_8
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    .line 11
    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;-><init>(Lx2/a;)V

    .line 14
    return-object v0
.end method

.method public static reentrantCheck(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    .line 3
    if-eq p0, v0, :cond_a

    .line 5
    instance-of v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/MemoizedSentinel;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    if-eqz v0, :cond_34

    .line 14
    if-ne p0, p1, :cond_10

    .line 16
    goto :goto_34

    .line 17
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v2, "Scoped provider was invoked recursively returning different results: "

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string p0, " & "

    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    const-string p0, ". This is likely due to a circular dependency."

    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0

    .line 53
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

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    .line 5
    if-ne v0, v1, :cond_21

    .line 7
    monitor-enter p0

    .line 8
    :try_start_7
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 10
    if-ne v0, v1, :cond_1c

    .line 12
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider:Lx2/a;

    .line 14
    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 20
    invoke-static {v1, v0}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->reentrantCheck(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 26
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider:Lx2/a;

    .line 29
    :cond_1c
    monitor-exit p0

    .line 30
    goto :goto_21

    .line 31
    :catchall_1e
    move-exception v0

    .line 32
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    .line 33
    throw v0

    .line 34
    :cond_21
    :goto_21
    return-object v0
.end method
