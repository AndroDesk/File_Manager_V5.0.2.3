.class public final Lcom/xiaomi/mirror/opensdk/BuildConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.xiaomi.mirror.opensdk"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.mirror.opensdk"

.field public static final VERSION_CODE:I

.field public static final VERSION_NAME:Ljava/lang/String; = "15.0.06.3"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x91708

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/opensdk/BuildConfig;->VERSION_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method