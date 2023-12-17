.class abstract Lcom/google/android/gms/common/zze;
.super Lcom/google/android/gms/common/internal/zzj;


# instance fields
.field private zzt:I


# direct methods
.method public constructor <init>([B)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzj;-><init>()V

    .line 4
    array-length v0, p1

    .line 5
    const/16 v1, 0x19

    .line 7
    if-ne v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 15
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/google/android/gms/common/zze;->zzt:I

    .line 21
    return-void
.end method

.method public static zza(Ljava/lang/String;)[B
    .registers 2

    .line 1
    :try_start_0
    const-string v0, "ISO-8859-1"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 6
    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    .line 7
    return-object p0

    .line 8
    :catch_7
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/AssertionError;

    .line 11
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 14
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_33

    .line 4
    instance-of v1, p1, Lcom/google/android/gms/common/internal/zzi;

    .line 6
    if-nez v1, :cond_8

    .line 8
    goto :goto_33

    .line 9
    :cond_8
    :try_start_8
    check-cast p1, Lcom/google/android/gms/common/internal/zzi;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzi;->zzc()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/common/zze;->hashCode()I

    .line 18
    move-result v2

    .line 19
    if-eq v1, v2, :cond_15

    .line 21
    return v0

    .line 22
    :cond_15
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzi;->zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_1c

    .line 28
    return v0

    .line 29
    :cond_1c
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, [B

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/common/zze;->getBytes()[B

    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 42
    move-result p1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2a} :catch_2b

    .line 43
    return p1

    .line 44
    :catch_2b
    move-exception p1

    .line 45
    const-string v1, "GoogleCertificates"

    .line 47
    const-string v2, "Failed to get Google certificates from remote"

    .line 49
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :cond_33
    :goto_33
    return v0
.end method

.method public abstract getBytes()[B
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/zze;->zzt:I

    .line 3
    return v0
.end method

.method public final zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/zze;->getBytes()[B

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final zzc()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/zze;->hashCode()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method
