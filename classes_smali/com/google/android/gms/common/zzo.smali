.class final Lcom/google/android/gms/common/zzo;
.super Lcom/google/android/gms/common/zzm;


# instance fields
.field private final zzaf:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/common/zzm;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/gms/common/zzo;->zzaf:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/common/zzn;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/zzo;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public final getErrorMessage()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/zzo;->zzaf:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
