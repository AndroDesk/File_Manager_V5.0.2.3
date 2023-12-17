.class public Lcom/android/fileexplorer/model/Build;
.super Lmiuix/os/Build;
.source "Build.java"


# static fields
.field public static final IS_ALPHA_BUILD:Z = false

.field public static final IS_DEVELOPMENT_VERSION:Z = false

.field public static final IS_GLOBAL:Z

.field public static final IS_GLOBAL_PHONE:Z

.field public static final IS_GLOBAL_TABLET:Z

.field public static final IS_STABLE_VERSION:Z = false

.field public static final IS_TABLET:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/Build;->isTablet()Z

    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_TABLET:Z

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/Build;->isGlobalTablet()Z

    .line 10
    move-result v0

    .line 11
    sput-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_GLOBAL_TABLET:Z

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/model/Build;->isGlobalPhone()Z

    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_GLOBAL_PHONE:Z

    .line 19
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 21
    sput-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_GLOBAL:Z

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/os/Build;-><init>()V

    .line 4
    return-void
.end method

.method private static isGlobalPhone()Z
    .registers 2

    .line 1
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 3
    if-eqz v0, :cond_14

    .line 5
    const-string v0, "ro.build.characteristics"

    .line 7
    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "tablet"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_14

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
.end method

.method private static isGlobalTablet()Z
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
    if-eqz v0, :cond_14

    .line 15
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 17
    if-eqz v0, :cond_14

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
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
