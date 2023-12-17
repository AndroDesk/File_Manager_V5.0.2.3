.class abstract Lcom/google/android/gms/common/zzg;
.super Lcom/google/android/gms/common/zze;


# static fields
.field private static final zzw:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private zzv:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    sput-object v0, Lcom/google/android/gms/common/zzg;->zzw:Ljava/lang/ref/WeakReference;

    .line 9
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/zze;-><init>([B)V

    .line 4
    sget-object p1, Lcom/google/android/gms/common/zzg;->zzw:Ljava/lang/ref/WeakReference;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/common/zzg;->zzv:Ljava/lang/ref/WeakReference;

    .line 8
    return-void
.end method


# virtual methods
.method public final getBytes()[B
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/zzg;->zzv:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, [B

    .line 10
    if-nez v0, :cond_16

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzg;->zzd()[B

    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    iput-object v1, p0, Lcom/google/android/gms/common/zzg;->zzv:Ljava/lang/ref/WeakReference;

    .line 23
    :cond_16
    monitor-exit p0

    .line 24
    return-object v0

    .line 25
    :catchall_18
    move-exception v0

    .line 26
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    .line 27
    throw v0
.end method

.method public abstract zzd()[B
.end method
