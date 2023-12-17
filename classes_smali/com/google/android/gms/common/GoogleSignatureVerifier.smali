.class public Lcom/google/android/gms/common/GoogleSignatureVerifier;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static zzam:Lcom/google/android/gms/common/GoogleSignatureVerifier;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile zzan:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    .line 10
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_6
    sget-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzam:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 9
    if-nez v1, :cond_14

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/Context;)V

    .line 14
    new-instance v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 16
    invoke-direct {v1, p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;-><init>(Landroid/content/Context;)V

    .line 19
    sput-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzam:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 21
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_18

    .line 22
    sget-object p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzam:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 24
    return-object p0

    .line 25
    :catchall_18
    move-exception p0

    .line 26
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    .line 27
    throw p0
.end method

.method private static varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zze;)Lcom/google/android/gms/common/zze;
    .registers 5

    .line 20
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 21
    :cond_6
    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_12

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 23
    :cond_12
    new-instance v0, Lcom/google/android/gms/common/zzf;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/zzf;-><init>([B)V

    .line 24
    :goto_20
    array-length p0, p1

    if-ge v2, p0, :cond_31

    .line 25
    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/zze;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 26
    aget-object p0, p1, v2

    return-object p0

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_31
    return-object v1
.end method

.method private final zza(Ljava/lang/String;I)Lcom/google/android/gms/common/zzm;
    .registers 9

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/16 v1, 0x40

    .line 6
    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zza(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v0

    if-nez p2, :cond_1b

    const-string p2, "null pkg"

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1b
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_28

    const-string p2, "single cert required"

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1

    .line 11
    :cond_28
    new-instance v1, Lcom/google/android/gms/common/zzf;

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/gms/common/zzf;-><init>([B)V

    .line 12
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 13
    invoke-static {v3, v1, v0, v4}, Lcom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)Lcom/google/android/gms/common/zzm;

    move-result-object v0

    .line 14
    iget-boolean v5, v0, Lcom/google/android/gms/common/zzm;->zzad:Z

    if-eqz v5, :cond_59

    .line 15
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_59

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_59

    .line 16
    invoke-static {v3, v1, v4, v2}, Lcom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)Lcom/google/android/gms/common/zzm;

    move-result-object p2

    .line 17
    iget-boolean p2, p2, Lcom/google/android/gms/common/zzm;->zzad:Z

    if-eqz p2, :cond_59

    const-string p2, "debuggable release cert app rejected"

    .line 18
    invoke-static {p2}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    move-result-object p1
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_58} :catch_5a

    return-object p1

    :cond_59
    return-object v0

    :catch_5a
    const-string p2, "no pkg "

    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_70

    :cond_6b
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_70
    invoke-static {p1}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1
.end method

.method public static zza(Landroid/content/pm/PackageInfo;Z)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    .line 1
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    if-eqz p1, :cond_11

    .line 2
    sget-object p1, Lcom/google/android/gms/common/zzh;->zzx:[Lcom/google/android/gms/common/zze;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zze;)Lcom/google/android/gms/common/zze;

    move-result-object p0

    goto :goto_1d

    :cond_11
    new-array p1, v1, [Lcom/google/android/gms/common/zze;

    .line 3
    sget-object v2, Lcom/google/android/gms/common/zzh;->zzx:[Lcom/google/android/gms/common/zze;

    aget-object v2, v2, v0

    aput-object v2, p1, v0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zze;)Lcom/google/android/gms/common/zze;

    move-result-object p0

    :goto_1d
    if-eqz p0, :cond_20

    return v1

    :cond_20
    return v0
.end method

.method private final zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;
    .registers 9

    .line 1
    const-string v0, "null pkg"

    .line 3
    if-nez p1, :cond_9

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzan:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_16

    .line 18
    invoke-static {}, Lcom/google/android/gms/common/zzm;->zze()Lcom/google/android/gms/common/zzm;

    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 28
    move-result-object v1

    .line 29
    const/16 v2, 0x40

    .line 31
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 34
    move-result-object v1
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_22} :catch_75

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    .line 40
    move-result v2

    .line 41
    if-nez v1, :cond_2f

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    .line 46
    move-result-object v0

    .line 47
    goto :goto_6e

    .line 48
    :cond_2f
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 50
    array-length v0, v0

    .line 51
    const/4 v3, 0x1

    .line 52
    if-eq v0, v3, :cond_3c

    .line 54
    const-string v0, "single cert required"

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    .line 59
    move-result-object v0

    .line 60
    goto :goto_6e

    .line 61
    :cond_3c
    new-instance v0, Lcom/google/android/gms/common/zzf;

    .line 63
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 65
    const/4 v5, 0x0

    .line 66
    aget-object v4, v4, v5

    .line 68
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 71
    move-result-object v4

    .line 72
    invoke-direct {v0, v4}, Lcom/google/android/gms/common/zzf;-><init>([B)V

    .line 75
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 77
    invoke-static {v4, v0, v2, v5}, Lcom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)Lcom/google/android/gms/common/zzm;

    .line 80
    move-result-object v2

    .line 81
    iget-boolean v6, v2, Lcom/google/android/gms/common/zzm;->zzad:Z

    .line 83
    if-eqz v6, :cond_6d

    .line 85
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 87
    if-eqz v1, :cond_6d

    .line 89
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 91
    and-int/lit8 v1, v1, 0x2

    .line 93
    if-eqz v1, :cond_6d

    .line 95
    invoke-static {v4, v0, v5, v3}, Lcom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)Lcom/google/android/gms/common/zzm;

    .line 98
    move-result-object v0

    .line 99
    iget-boolean v0, v0, Lcom/google/android/gms/common/zzm;->zzad:Z

    .line 101
    if-eqz v0, :cond_6d

    .line 103
    const-string v0, "debuggable release cert app rejected"

    .line 105
    invoke-static {v0}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    .line 108
    move-result-object v0

    .line 109
    goto :goto_6e

    .line 110
    :cond_6d
    move-object v0, v2

    .line 111
    :goto_6e
    iget-boolean v1, v0, Lcom/google/android/gms/common/zzm;->zzad:Z

    .line 113
    if-eqz v1, :cond_74

    .line 115
    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzan:Ljava/lang/String;

    .line 117
    :cond_74
    return-object v0

    .line 118
    :catch_75
    const-string v0, "no pkg "

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_82

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    goto :goto_87

    .line 131
    :cond_82
    new-instance p1, Ljava/lang/String;

    .line 133
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 136
    :goto_87
    invoke-static {p1}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    .line 139
    move-result-object p1

    .line 140
    return-object p1
.end method


# virtual methods
.method public isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;Z)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_c

    .line 12
    return v2

    .line 13
    :cond_c
    invoke-static {p1, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;Z)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_22

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1b

    .line 27
    return v2

    .line 28
    :cond_1b
    const-string p1, "GoogleSignatureVerifier"

    .line 30
    const-string v1, "Test-keys aren\'t accepted on this build."

    .line 32
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_22
    return v0
.end method

.method public isPackageGoogleSigned(Ljava/lang/String;)Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/zzm;->zzf()V

    .line 8
    iget-boolean p1, p1, Lcom/google/android/gms/common/zzm;->zzad:Z

    .line 10
    return p1
.end method

.method public isUidGoogleSigned(I)Z
    .registers 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackagesForUid(I)[Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_22

    .line 13
    array-length v1, v0

    .line 14
    if-nez v1, :cond_10

    .line 16
    goto :goto_22

    .line 17
    :cond_10
    const/4 v1, 0x0

    .line 18
    array-length v2, v0

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_13
    if-ge v3, v2, :cond_28

    .line 22
    aget-object v1, v0, v3

    .line 24
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Ljava/lang/String;I)Lcom/google/android/gms/common/zzm;

    .line 27
    move-result-object v1

    .line 28
    iget-boolean v4, v1, Lcom/google/android/gms/common/zzm;->zzad:Z

    .line 30
    if-nez v4, :cond_28

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 34
    goto :goto_13

    .line 35
    :cond_22
    :goto_22
    const-string p1, "no pkgs"

    .line 37
    invoke-static {p1}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    .line 40
    move-result-object v1

    .line 41
    :cond_28
    invoke-virtual {v1}, Lcom/google/android/gms/common/zzm;->zzf()V

    .line 44
    iget-boolean p1, v1, Lcom/google/android/gms/common/zzm;->zzad:Z

    .line 46
    return p1
.end method
