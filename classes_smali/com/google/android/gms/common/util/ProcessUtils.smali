.class public Lcom/google/android/gms/common/util/ProcessUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static zzhf:Ljava/lang/String;

.field private static zzhg:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMyProcessName()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzhf:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_16

    .line 5
    sget v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzhg:I

    .line 7
    if-nez v0, :cond_e

    .line 9
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 12
    move-result v0

    .line 13
    sput v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzhg:I

    .line 15
    :cond_e
    sget v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzhg:I

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/util/ProcessUtils;->zzd(I)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzhf:Ljava/lang/String;

    .line 23
    :cond_16
    sget-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzhf:Ljava/lang/String;

    .line 25
    return-object v0
.end method

.method private static zzd(I)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gtz p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    const/16 v1, 0x19

    .line 7
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    const-string v1, "/proc/"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string p0, "/cmdline"

    .line 22
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/google/android/gms/common/util/ProcessUtils;->zzk(Ljava/lang/String;)Ljava/io/BufferedReader;

    .line 32
    move-result-object p0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_20} :catch_36
    .catchall {:try_start_6 .. :try_end_20} :catchall_2e

    .line 33
    :try_start_20
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    move-result-object v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_37
    .catchall {:try_start_20 .. :try_end_28} :catchall_2c

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 44
    goto :goto_3a

    .line 45
    :catchall_2c
    move-exception v0

    .line 46
    goto :goto_32

    .line 47
    :catchall_2e
    move-exception p0

    .line 48
    move-object v3, v0

    .line 49
    move-object v0, p0

    .line 50
    move-object p0, v3

    .line 51
    :goto_32
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 54
    throw v0

    .line 55
    :catch_36
    move-object p0, v0

    .line 56
    :catch_37
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 59
    :goto_3a
    return-object v0
.end method

.method private static zzk(Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 4

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    .line 7
    new-instance v2, Ljava/io/FileReader;

    .line 9
    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 15
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 18
    return-object v1

    .line 19
    :catchall_12
    move-exception p0

    .line 20
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 23
    throw p0
.end method
