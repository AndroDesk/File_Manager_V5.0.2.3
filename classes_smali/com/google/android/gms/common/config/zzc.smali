.class final Lcom/google/android/gms/common/config/zzc;
.super Lcom/google/android/gms/common/config/GservicesValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/config/GservicesValue<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/config/GservicesValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzbq:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    const/4 p1, 0x0

    throw p1
.end method
