.class public final Lcom/google/android/gms/common/util/CrashUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final zzgg:[Ljava/lang/String;

.field private static zzgh:Landroid/os/DropBoxManager;

.field private static zzgi:Z

.field private static zzgj:I

.field private static zzgk:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "CrashUtils.class"
    .end annotation
.end field

.field private static zzgl:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "CrashUtils.class"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    const-string v0, "android."

    .line 3
    const-string v1, "com.android."

    .line 5
    const-string v2, "dalvik."

    .line 7
    const-string v3, "java."

    .line 9
    const-string v4, "javax."

    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/android/gms/common/util/CrashUtils;->zzgg:[Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/google/android/gms/common/util/CrashUtils;->zzgh:Landroid/os/DropBoxManager;

    .line 20
    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/google/android/gms/common/util/CrashUtils;->zzgi:Z

    .line 23
    const/4 v1, -0x1

    .line 24
    sput v1, Lcom/google/android/gms/common/util/CrashUtils;->zzgj:I

    .line 26
    sput v0, Lcom/google/android/gms/common/util/CrashUtils;->zzgk:I

    .line 28
    sput v0, Lcom/google/android/gms/common/util/CrashUtils;->zzgl:I

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/high16 v0, 0x20000000

    .line 3
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/CrashUtils;->zza(Landroid/content/Context;Ljava/lang/Throwable;I)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/Throwable;I)Z
    .registers 4

    .line 1
    const/4 p2, 0x0

    .line 2
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_8

    .line 8
    return p2

    .line 9
    :catch_8
    move-exception p0

    .line 10
    const-string p1, "CrashUtils"

    .line 12
    const-string v0, "Error adding exception to DropBox!"

    .line 14
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    return p2
.end method
