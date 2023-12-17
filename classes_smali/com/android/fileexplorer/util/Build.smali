.class public Lcom/android/fileexplorer/util/Build;
.super Lmiuix/os/Build;
.source "Build.java"


# static fields
.field public static final IS_DEVELOPMENT_VERSION:Z

.field public static final IS_STABLE_VERSION:Z

.field public static final IS_TABLET:Z

.field private static final REGULAR_EXPRESSION_FOR_DEVELOPMENT:Ljava/lang/String; = "\\d+.\\d+.\\d+(-internal)?"


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/util/Build;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/android/fileexplorer/util/Build;->IS_TABLET:Z

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "\\d+.\\d+.\\d+(-internal)?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    sput-boolean v0, Lcom/android/fileexplorer/util/Build;->IS_DEVELOPMENT_VERSION:Z

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    sput-boolean v1, Lcom/android/fileexplorer/util/Build;->IS_STABLE_VERSION:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiuix/os/Build;-><init>()V

    return-void
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
