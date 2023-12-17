.class final Lcom/google/android/gms/tasks/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnTokenCanceledListener;


# instance fields
.field private final synthetic zzv:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zzv:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzs;->zzv:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/zzu;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzu;->zza()Z

    .line 10
    return-void
.end method
