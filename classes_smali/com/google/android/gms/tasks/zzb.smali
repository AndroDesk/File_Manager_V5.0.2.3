.class final Lcom/google/android/gms/tasks/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzb:Lcom/google/android/gms/tasks/OnTokenCanceledListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tasks/zza;Lcom/google/android/gms/tasks/OnTokenCanceledListener;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzb;->zzb:Lcom/google/android/gms/tasks/OnTokenCanceledListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzb;->zzb:Lcom/google/android/gms/tasks/OnTokenCanceledListener;

    invoke-interface {p1}, Lcom/google/android/gms/tasks/OnTokenCanceledListener;->onCanceled()V

    return-void
.end method