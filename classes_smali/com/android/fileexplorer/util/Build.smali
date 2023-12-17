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

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/Build;->isTablet()Z

    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/fileexplorer/util/Build;->IS_TABLET:Z

    .line 7
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_1c

    .line 17
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 19
    const-string v3, "\\d+.\\d+.\\d+(-internal)?"

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1c

    .line 27
    move v0, v1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v0, v2

    .line 30
    :goto_1d
    sput-boolean v0, Lcom/android/fileexplorer/util/Build;->IS_DEVELOPMENT_VERSION:Z

    .line 32
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 34
    const-string v4, "user"

    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2c

    .line 42
    if-nez v0, :cond_2c

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v1, v2

    .line 46
    :goto_2d
    sput-boolean v1, Lcom/android/fileexplorer/util/Build;->IS_STABLE_VERSION:Z

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/os/Build;-><init>()V

    .line 4
    return-void
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
