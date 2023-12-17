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

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->getSdDirectory()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/swiftp/Defaults;->chrootDir:Ljava/lang/String;

    .line 7
    invoke-static {}, Lorg/swiftp/Defaults;->isInternationalBuild()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_f

    .line 13
    const-string v0, "big5"

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const-string v0, "GBK"

    .line 18
    :goto_11
    sput-object v0, Lorg/swiftp/Defaults;->SESSION_ENCODING:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataChunkSize()I
    .registers 1

    .line 1
    sget v0, Lorg/swiftp/Defaults;->dataChunkSize:I

    .line 3
    return v0
.end method

.method public static getInputBufferSize()I
    .registers 1

    .line 1
    sget v0, Lorg/swiftp/Defaults;->inputBufferSize:I

    .line 3
    return v0
.end method

.method private static isInternationalBuild()Z
    .registers 8

    .line 1
    const-class v0, Ljava/lang/String;

    .line 3
    const-string v1, ""

    .line 5
    :try_start_4
    const-string v2, "android.os.SystemProperties"

    .line 7
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v2

    .line 11
    const-string v3, "get"

    .line 13
    const/4 v4, 0x2

    .line 14
    new-array v5, v4, [Ljava/lang/Class;

    .line 16
    const/4 v6, 0x0

    .line 17
    aput-object v0, v5, v6

    .line 19
    const/4 v7, 0x1

    .line 20
    aput-object v0, v5, v7

    .line 22
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    move-result-object v0

    .line 26
    new-array v3, v4, [Ljava/lang/Object;

    .line 28
    const-string v4, "ro.product.mod_device"

    .line 30
    aput-object v4, v3, v6

    .line 32
    aput-object v1, v3, v7

    .line 34
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_27} :catch_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_27} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_27} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_27} :catch_29

    .line 40
    move-object v1, v0

    .line 41
    goto :goto_3c

    .line 42
    :catch_29
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    goto :goto_3c

    .line 47
    :catch_2e
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    goto :goto_3c

    .line 52
    :catch_33
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    goto :goto_3c

    .line 57
    :catch_38
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    :goto_3c
    const-string v0, "aries_tw"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v0

    .line 67
    return v0
.end method
