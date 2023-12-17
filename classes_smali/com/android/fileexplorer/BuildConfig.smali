.class public final Lcom/android/fileexplorer/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.android.fileexplorer"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String; = "cn"

.field public static final KEY:Ljava/lang/String; = "SNu+35ITBX2TI7"

.field public static final VERSION_CODE:I

.field public static final VERSION_NAME:Ljava/lang/String; = "5.0.2.3"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x93e09

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/BuildConfig;->VERSION_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
