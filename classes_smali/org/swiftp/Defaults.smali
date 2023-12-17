.class public Lorg/swiftp/Defaults;
.super Ljava/lang/Object;
.source "Defaults.java"


# static fields
.field public static final BIG5_ENCODING:Ljava/lang/String; = "big5"

.field public static final DEFAULT_PORT_NUMBER:I = 0x849

.field public static final GBK_ENCODING:Ljava/lang/String; = "GBK"

.field public static final REMOTE_PROXY_PORT:I = 0x8ae

.field public static final SESSION_ENCODING:Ljava/lang/String;

.field public static final SO_TIMEOUT_MS:I = 0x7530

.field public static final STRING_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final UTF8_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final chrootDir:Ljava/lang/String;

.field public static dataChunkSize:I = 0x10000

.field public static final do_mediascanner_notify:Z = true

.field private static inputBufferSize:I = 0x100

.field public static portNumber:I = 0x849

.field public static final release:Z = true

.field public static final stayAwake:Z = true

.field public static final tcpConnectionBacklog:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/fileexplorer/model/Util;->getSdDirectory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/swiftp/Defaults;->chrootDir:Ljava/lang/String;

    invoke-static {}, Lorg/swiftp/Defaults;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "big5"

    goto :goto_11

    :cond_f
    const-string v0, "GBK"

    :goto_11
    sput-object v0, Lorg/swiftp/Defaults;->SESSION_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataChunkSize()I
    .registers 1

    sget v0, Lorg/swiftp/Defaults;->dataChunkSize:I

    return v0
.end method

.method public static getInputBufferSize()I
    .registers 1

    sget v0, Lorg/swiftp/Defaults;->inputBufferSize:I

    return v0
.end method

.method private static isInternationalBuild()Z
    .registers 8

    const-class v0, Ljava/lang/String;

    const-string v1, ""

    :try_start_4
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v0, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "ro.product.mod_device"

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_27} :catch_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_27} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_27} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_27} :catch_29

    move-object v1, v0

    goto :goto_3c

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3c

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3c

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3c

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3c
    const-string v0, "aries_tw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
