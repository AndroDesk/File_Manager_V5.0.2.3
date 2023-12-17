.class public Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private final priority:I

.field private final zzhr:Ljava/util/concurrent/ThreadFactory;

.field private final zzhs:Ljava/lang/String;

.field private final zzht:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;->zzht:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;->zzhr:Ljava/util/concurrent/ThreadFactory;

    const-string p2, "Name must not be null"

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;->zzhs:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;->priority:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;->zzhr:Ljava/util/concurrent/ThreadFactory;

    .line 3
    new-instance v1, Lcom/google/android/gms/common/util/concurrent/zza;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/common/util/concurrent/zza;-><init>(Ljava/lang/Runnable;I)V

    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;->zzhs:Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;->zzht:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 20
    move-result v1

    .line 21
    const/16 v2, 0xd

    .line 23
    invoke-static {v0, v2}, La/a;->a(Ljava/lang/String;I)I

    .line 26
    move-result v2

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v0, "["

    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v0, "]"

    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 55
    return-object p1
.end method
