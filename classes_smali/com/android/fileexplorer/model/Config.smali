.class public Lcom/android/fileexplorer/model/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final IS_DEVELOPMENT_VERSION:Z = false

.field public static final IS_GLOBAL:Z

.field public static final IS_GLOBAL_PAD:Z

.field public static final IS_GLOBAL_PHONE:Z

.field public static final IS_PAD:Z

.field public static final SK_3_2:Ljava/lang/String; = "xo1lXnPycW"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_TABLET:Z

    sput-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    sget-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_GLOBAL_TABLET:Z

    sput-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PAD:Z

    sget-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_GLOBAL_PHONE:Z

    sput-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    sget-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_GLOBAL:Z

    sput-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
