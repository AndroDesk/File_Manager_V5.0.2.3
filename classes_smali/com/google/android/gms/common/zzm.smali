.class Lcom/google/android/gms/common/zzm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static final zzac:Lcom/google/android/gms/common/zzm;


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field public final zzad:Z

.field private final zzae:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/zzm;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/common/zzm;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    sput-object v0, Lcom/google/android/gms/common/zzm;->zzac:Lcom/google/android/gms/common/zzm;

    .line 10
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p2  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/common/zzm;->zzad:Z

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/common/zzm;->zzae:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/common/zzm;->cause:Ljava/lang/Throwable;

    .line 10
    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzm;
    .registers 4

    .line 2
    new-instance v0, Lcom/google/android/gms/common/zzm;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/common/zzm;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/common/zzm;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/zzm;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/zzo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/zzo;-><init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/common/zzn;)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/zzm;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/common/zzm;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    return-object v0
.end method

.method public static zzc(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)Ljava/lang/String;
    .registers 6

    .line 1
    if-eqz p3, :cond_5

    .line 3
    const-string p3, "debug cert rejected"

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    const-string p3, "not whitelisted"

    .line 8
    :goto_7
    const/4 v0, 0x5

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    const/4 v1, 0x0

    .line 12
    aput-object p3, v0, v1

    .line 14
    const/4 p3, 0x1

    .line 15
    aput-object p0, v0, p3

    .line 17
    const/4 p0, 0x2

    .line 18
    const-string p3, "SHA-1"

    .line 20
    invoke-static {p3}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->zzj(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 23
    move-result-object p3

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/common/zze;->getBytes()[B

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    aput-object p1, v0, p0

    .line 38
    const/4 p0, 0x3

    .line 39
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object p1

    .line 43
    aput-object p1, v0, p0

    .line 45
    const/4 p0, 0x4

    .line 46
    const-string p1, "12451009.false"

    .line 48
    aput-object p1, v0, p0

    .line 50
    const-string p0, "%s: pkg=%s, sha1=%s, atk=%s, ver=%s"

    .line 52
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public static zze()Lcom/google/android/gms/common/zzm;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/common/zzm;->zzac:Lcom/google/android/gms/common/zzm;

    .line 3
    return-object v0
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/zzm;->zzae:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final zzf()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/zzm;->zzad:Z

    .line 3
    if-nez v0, :cond_22

    .line 5
    const/4 v0, 0x3

    .line 6
    const-string v1, "GoogleCertificatesRslt"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_22

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/zzm;->cause:Ljava/lang/Throwable;

    .line 16
    if-eqz v0, :cond_1b

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzm;->getErrorMessage()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/common/zzm;->cause:Ljava/lang/Throwable;

    .line 24
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    return-void

    .line 28
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzm;->getErrorMessage()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_22
    return-void
.end method
