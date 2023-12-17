.class public Lmiuix/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# static fields
.field public static final IS_DEBUGGABLE:Z

.field public static final IS_FOLDABLE:Z

.field public static final IS_INTERNATIONAL_BUILD:Z

.field public static final IS_TABLET:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "ro.product.mod_device"

    .line 3
    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "_global"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 17
    invoke-static {}, Lmiuix/os/Build;->isTablet()Z

    .line 20
    move-result v0

    .line 21
    sput-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    .line 23
    invoke-static {}, Lmiuix/os/Build;->isFoldable()Z

    .line 26
    move-result v0

    .line 27
    sput-boolean v0, Lmiuix/os/Build;->IS_FOLDABLE:Z

    .line 29
    const-string v0, "ro.debuggable"

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 35
    move-result v0

    .line 36
    const/4 v2, 0x1

    .line 37
    if-ne v0, v2, :cond_27

    .line 39
    move v1, v2

    .line 40
    :cond_27
    sput-boolean v1, Lmiuix/os/Build;->IS_DEBUGGABLE:Z

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isFoldable()Z
    .registers 3

    .line 1
    const-string v0, "persist.sys.muiltdisplay_type"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v0, v2, :cond_b

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v1, 0x0

    .line 13
    :goto_c
    return v1
.end method

.method private static isTablet()Z
    .registers 2

    .line 1
    const-string v0, "ro.build.characteristics"

    .line 3
    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "tablet"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method
