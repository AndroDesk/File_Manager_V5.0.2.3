.class public final Lcom/google/android/gms/common/stats/LoggingConstants;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final EXTRA_WAKE_LOCK_KEY:Ljava/lang/String; = "WAKE_LOCK_KEY"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field private static LOG_LEVEL_OFF:I

.field public static final zzfg:Landroid/content/ComponentName;

.field private static zzfh:I

.field private static zzfi:I

.field private static zzfj:I

.field private static zzfk:I

.field private static zzfl:I

.field private static zzfm:I

.field private static zzfn:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 3
    const-string v1, "com.google.android.gms"

    .line 5
    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sput-object v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfg:Landroid/content/ComponentName;

    .line 12
    const/4 v0, 0x0

    .line 13
    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->LOG_LEVEL_OFF:I

    .line 15
    const/4 v0, 0x1

    .line 16
    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfh:I

    .line 18
    const/4 v1, 0x2

    .line 19
    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfi:I

    .line 21
    const/4 v1, 0x4

    .line 22
    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfj:I

    .line 24
    const/16 v1, 0x8

    .line 26
    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfk:I

    .line 28
    const/16 v1, 0x10

    .line 30
    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfl:I

    .line 32
    const/16 v1, 0x20

    .line 34
    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfm:I

    .line 36
    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfn:I

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
