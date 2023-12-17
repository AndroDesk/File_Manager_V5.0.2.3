.class public Lcom/android/fileexplorer/model/Build;
.super Lmiuix/os/Build;
.source "Build.java"


# static fields
.field public static final IS_ALPHA_BUILD:Z

.field public static final IS_DEVELOPMENT_VERSION:Z

.field public static final IS_GLOBAL:Z

.field public static final IS_GLOBAL_PHONE:Z

.field public static final IS_GLOBAL_TABLET:Z

.field public static final IS_STABLE_VERSION:Z

.field public static final IS_TABLET:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/fileexplorer/model/Build;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_TABLET:Z

    invoke-static {}, Lcom/android/fileexplorer/model/Build;->isGlobalTablet()Z

    move-result v0

    sput-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_GLOBAL_TABLET:Z

    invoke-static {}, Lcom/android/fileexplorer/model/Build;->isGlobalPhone()Z

    move-result v0

    sput-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_GLOBAL_PHONE:Z

    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_GLOBAL:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiuix/os/Build;-><init>()V

    return-void
.end method

.method private static isGlobalPhone()Z
    .registers 2

    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_14

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private static isGlobalTablet()Z
    .registers 2

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private static isTablet()Z
    .registers 2

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
