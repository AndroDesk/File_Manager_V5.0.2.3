.class public final Lcom/google/android/gms/common/internal/zzh;
.super Ljava/lang/Object;


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final zzdt:I

.field private final zzej:Ljava/lang/String;

.field private final zzek:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzh;->mPackageName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzh;->zzej:Ljava/lang/String;

    .line 8
    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/zzh;->zzek:Z

    .line 10
    const/16 p1, 0x81

    .line 12
    iput p1, p0, Lcom/google/android/gms/common/internal/zzh;->zzdt:I

    .line 14
    return-void
.end method


# virtual methods
.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzh;->mPackageName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final zzq()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/internal/zzh;->zzdt:I

    .line 3
    return v0
.end method

.method public final zzt()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzh;->zzej:Ljava/lang/String;

    .line 3
    return-object v0
.end method
