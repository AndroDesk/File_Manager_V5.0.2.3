.class final Lcom/google/android/gms/common/util/concurrent/zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final priority:I

.field private final zzhu:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/util/concurrent/zza;->zzhu:Ljava/lang/Runnable;

    iput p2, p0, Lcom/google/android/gms/common/util/concurrent/zza;->priority:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/util/concurrent/zza;->priority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/util/concurrent/zza;->zzhu:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
