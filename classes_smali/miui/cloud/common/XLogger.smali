.class public Lmiui/cloud/common/XLogger;
.super Ljava/lang/Object;
.source "XLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/XLogger$LogSender;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOGGER_CLASS:Ljava/lang/String; = "miui.cloud.common.XLogger"

.field private static final LOG_PREFIX:Ljava/lang/String; = "##XLogger##"

.field private static volatile sDefLogLevel:I

.field private static volatile sEnableCallStacktrace:Z

.field private static volatile sLogSender:Lmiui/cloud/common/XLogger$LogSender;

.field private static volatile sOutputLogLevel:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiui/cloud/common/XLogger$1;

    .line 3
    invoke-direct {v0}, Lmiui/cloud/common/XLogger$1;-><init>()V

    .line 6
    sput-object v0, Lmiui/cloud/common/XLogger;->sLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 8
    const/4 v0, 0x4

    .line 9
    sput v0, Lmiui/cloud/common/XLogger;->sDefLogLevel:I

    .line 11
    const/4 v0, 0x2

    .line 12
    sput v0, Lmiui/cloud/common/XLogger;->sOutputLogLevel:I

    .line 14
    const/4 v0, 0x1

    .line 15
    sput-boolean v0, Lmiui/cloud/common/XLogger;->sEnableCallStacktrace:Z

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 1
    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    aput-object p1, v1, p2

    .line 13
    const/4 p1, 0x3

    .line 14
    invoke-static {p1, p0, v0, v1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public static enableStackTrace(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lmiui/cloud/common/XLogger;->sEnableCallStacktrace:Z

    .line 3
    return-void
.end method

.method public static varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 1
    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    aput-object p1, v1, p2

    .line 13
    const/4 p1, 0x6

    .line 14
    invoke-static {p1, p0, v0, v1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method private static varargs formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 3
    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    if-eqz p1, :cond_29

    .line 9
    array-length v1, p1

    .line 10
    if-eqz v1, :cond_29

    .line 12
    array-length v1, p1

    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 15
    aget-object v1, p1, v1

    .line 17
    instance-of v2, v1, Ljava/lang/Throwable;

    .line 19
    if-eqz v2, :cond_29

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    check-cast v1, Ljava/lang/Throwable;

    .line 31
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0
    :try_end_29
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 42
    :cond_29
    return-object v0

    .line 43
    :catch_2a
    move-exception v0

    .line 44
    const-string v1, " "

    .line 46
    invoke-static {p0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object p0

    .line 50
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string p1, " : "

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method private static getCallerInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    move v4, v3

    .line 13
    :goto_c
    if-ge v3, v1, :cond_59

    .line 15
    aget-object v5, v0, v3

    .line 17
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v6

    .line 25
    const/4 v7, 0x1

    .line 26
    if-eqz v6, :cond_1d

    .line 28
    move v4, v7

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    if-nez v4, :cond_22

    .line 32
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    .line 34
    goto :goto_c

    .line 35
    :cond_22
    const/4 p0, 0x5

    .line 36
    new-array p0, p0, [Ljava/lang/Object;

    .line 38
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    aput-object v0, p0, v2

    .line 44
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    aput-object v0, p0, v7

    .line 50
    const/4 v0, 0x2

    .line 51
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    aput-object v1, p0, v0

    .line 57
    const/4 v0, 0x3

    .line 58
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 61
    move-result v1

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v1

    .line 66
    aput-object v1, p0, v0

    .line 68
    const/4 v0, 0x4

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    .line 76
    move-result-wide v1

    .line 77
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    move-result-object v1

    .line 81
    aput-object v1, p0, v0

    .line 83
    const-string v0, "%s::%s@%s:%s, thread:%s"

    .line 85
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_59
    const-string p0, ""

    .line 92
    return-object p0
.end method

.method public static getLogSender()Lmiui/cloud/common/XLogger$LogSender;
    .registers 1

    .line 1
    sget-object v0, Lmiui/cloud/common/XLogger;->sLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 3
    return-object v0
.end method

.method private static getObjectString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    if-nez p0, :cond_5

    .line 3
    const-string p0, "NULL"

    .line 5
    return-object p0

    .line 6
    :cond_5
    instance-of v0, p0, Ljava/lang/Throwable;

    .line 8
    if-eqz v0, :cond_10

    .line 10
    check-cast p0, Ljava/lang/Throwable;

    .line 12
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private static getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    const/16 v2, 0xa

    .line 9
    if-ge v1, v2, :cond_26

    .line 11
    if-nez p0, :cond_d

    .line 13
    goto :goto_26

    .line 14
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_18

    .line 20
    const-string v2, " *Caused by* "

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 35
    move-result-object p0

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_6

    .line 39
    :cond_26
    :goto_26
    if-eqz p0, :cond_2d

    .line 41
    const-string p0, " *and more...*"

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static varargs group(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v2, "["

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string p0, ": "

    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    array-length p0, p1

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x1

    .line 34
    move v3, v1

    .line 35
    :goto_22
    if-ge v3, p0, :cond_38

    .line 37
    aget-object v4, p1, v3

    .line 39
    if-nez v2, :cond_2d

    .line 41
    const-string v2, ", "

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_2d
    invoke-static {v4}, Lmiui/cloud/common/XLogger;->getObjectString(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 55
    move v2, v1

    .line 56
    goto :goto_22

    .line 57
    :cond_38
    const-string p0, "]"

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public static varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 1
    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    aput-object p1, v1, p2

    .line 13
    const/4 p1, 0x4

    .line 14
    invoke-static {p1, p0, v0, v1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public static varargs log([Ljava/lang/Object;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Lmiui/cloud/common/XLogger;->sDefLogLevel:I

    .line 3
    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public static varargs logAtLevel(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1, p2}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logAtLevel(I[Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10

    .line 1
    sget v0, Lmiui/cloud/common/XLogger;->sOutputLogLevel:I

    .line 3
    if-ge p0, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    sget-object v0, Lmiui/cloud/common/XLogger;->sLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 8
    if-nez v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    sget-boolean v1, Lmiui/cloud/common/XLogger;->sEnableCallStacktrace:Z

    .line 13
    if-eqz v1, :cond_1e

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->getCallerInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    const-string v2, "--"

    .line 26
    invoke-static {v1, p2, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    const-string p2, ""

    .line 33
    :goto_20
    array-length v1, p3

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x1

    .line 36
    if-ne v1, v3, :cond_2c

    .line 38
    aget-object p3, p3, v2

    .line 40
    invoke-static {p3}, Lmiui/cloud/common/XLogger;->getObjectString(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object p3

    .line 44
    goto :goto_4c

    .line 45
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    array-length v3, p3

    .line 51
    :goto_32
    if-ge v2, v3, :cond_4b

    .line 53
    aget-object v4, p3, v2

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_41

    .line 61
    const-string v5, ", "

    .line 63
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_41
    invoke-static {v4}, Lmiui/cloud/common/XLogger;->getObjectString(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 75
    goto :goto_32

    .line 76
    :cond_4b
    move-object p3, v1

    .line 77
    :goto_4c
    if-nez p1, :cond_50

    .line 79
    const-string p1, "##XLogger##"

    .line 81
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p2

    .line 96
    invoke-interface {v0, p0, p1, p2}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static varargs logd([Ljava/lang/Object;)V
    .registers 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    .line 5
    return-void
.end method

.method public static varargs loge([Ljava/lang/Object;)V
    .registers 2

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    .line 5
    return-void
.end method

.method public static varargs logi([Ljava/lang/Object;)V
    .registers 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    .line 5
    return-void
.end method

.method public static varargs logv([Ljava/lang/Object;)V
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    .line 5
    return-void
.end method

.method public static varargs logw([Ljava/lang/Object;)V
    .registers 2

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    .line 5
    return-void
.end method

.method public static setDefLogLevel(I)V
    .registers 1

    .line 1
    sput p0, Lmiui/cloud/common/XLogger;->sDefLogLevel:I

    .line 3
    return-void
.end method

.method public static setLogSender(Lmiui/cloud/common/XLogger$LogSender;)V
    .registers 1

    .line 1
    sput-object p0, Lmiui/cloud/common/XLogger;->sLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 3
    return-void
.end method

.method public static setOutputLogLevel(I)V
    .registers 1

    .line 1
    sput p0, Lmiui/cloud/common/XLogger;->sOutputLogLevel:I

    .line 3
    return-void
.end method

.method public static varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 1
    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    aput-object p1, v1, p2

    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-static {p1, p0, v0, v1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public static varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 1
    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    aput-object p1, v1, p2

    .line 13
    const/4 p1, 0x5

    .line 14
    invoke-static {p1, p0, v0, v1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void
.end method
