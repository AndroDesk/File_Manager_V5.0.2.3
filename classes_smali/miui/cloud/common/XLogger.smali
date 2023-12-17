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

    new-instance v0, Lmiui/cloud/common/XLogger$1;

    invoke-direct {v0}, Lmiui/cloud/common/XLogger$1;-><init>()V

    sput-object v0, Lmiui/cloud/common/XLogger;->sLogSender:Lmiui/cloud/common/XLogger$LogSender;

    const/4 v0, 0x4

    sput v0, Lmiui/cloud/common/XLogger;->sDefLogLevel:I

    const/4 v0, 0x2

    sput v0, Lmiui/cloud/common/XLogger;->sOutputLogLevel:I

    const/4 v0, 0x1

    sput-boolean v0, Lmiui/cloud/common/XLogger;->sEnableCallStacktrace:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const/4 p1, 0x3

    invoke-static {p1, p0, v0, v1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static enableStackTrace(Z)V
    .registers 1

    sput-boolean p0, Lmiui/cloud/common/XLogger;->sEnableCallStacktrace:Z

    return-void
.end method

.method public static varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const/4 p1, 0x6

    invoke-static {p1, p0, v0, v1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_29

    array-length v1, p1

    if-eqz v1, :cond_29

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_29} :catch_2a

    :cond_29
    return-object v0

    :catch_2a
    move-exception v0

    const-string v1, " "

    invoke-static {p0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCallerInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    if-ge v3, v1, :cond_59

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1d

    move v4, v7

    goto :goto_1f

    :cond_1d
    if-nez v4, :cond_22

    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_22
    const/4 p0, 0x5

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v7

    const/4 v0, 0x2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p0, v0

    const-string v0, "%s::%s@%s:%s, thread:%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_59
    const-string p0, ""

    return-object p0
.end method

.method public static getLogSender()Lmiui/cloud/common/XLogger$LogSender;
    .registers 1

    sget-object v0, Lmiui/cloud/common/XLogger;->sLogSender:Lmiui/cloud/common/XLogger$LogSender;

    return-object v0
.end method

.method private static getObjectString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, "NULL"

    return-object p0

    :cond_5
    instance-of v0, p0, Ljava/lang/Throwable;

    if-eqz v0, :cond_10

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0xa

    if-ge v1, v2, :cond_26

    if-nez p0, :cond_d

    goto :goto_26

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, " *Caused by* "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    :goto_26
    if-eqz p0, :cond_2d

    const-string p0, " *and more...*"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs group(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_22
    if-ge v3, p0, :cond_38

    aget-object v4, p1, v3

    if-nez v2, :cond_2d

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    invoke-static {v4}, Lmiui/cloud/common/XLogger;->getObjectString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_22

    :cond_38
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const/4 p1, 0x4

    invoke-static {p1, p0, v0, v1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs log([Ljava/lang/Object;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lmiui/cloud/common/XLogger;->sDefLogLevel:I

    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logAtLevel(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logAtLevel(I[Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10

    sget v0, Lmiui/cloud/common/XLogger;->sOutputLogLevel:I

    if-ge p0, v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lmiui/cloud/common/XLogger;->sLogSender:Lmiui/cloud/common/XLogger$LogSender;

    if-nez v0, :cond_a

    return-void

    :cond_a
    sget-boolean v1, Lmiui/cloud/common/XLogger;->sEnableCallStacktrace:Z

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->getCallerInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "--"

    invoke-static {v1, p2, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_20

    :cond_1e
    const-string p2, ""

    :goto_20
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2c

    aget-object p3, p3, v2

    invoke-static {p3}, Lmiui/cloud/common/XLogger;->getObjectString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_4c

    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p3

    :goto_32
    if-ge v2, v3, :cond_4b

    aget-object v4, p3, v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_41

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    invoke-static {v4}, Lmiui/cloud/common/XLogger;->getObjectString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_4b
    move-object p3, v1

    :goto_4c
    if-nez p1, :cond_50

    const-string p1, "##XLogger##"

    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs logd([Ljava/lang/Object;)V
    .registers 2

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs loge([Ljava/lang/Object;)V
    .registers 2

    const/4 v0, 0x6

    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logi([Ljava/lang/Object;)V
    .registers 2

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logv([Ljava/lang/Object;)V
    .registers 2

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logw([Ljava/lang/Object;)V
    .registers 2

    const/4 v0, 0x5

    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static setDefLogLevel(I)V
    .registers 1

    sput p0, Lmiui/cloud/common/XLogger;->sDefLogLevel:I

    return-void
.end method

.method public static setLogSender(Lmiui/cloud/common/XLogger$LogSender;)V
    .registers 1

    sput-object p0, Lmiui/cloud/common/XLogger;->sLogSender:Lmiui/cloud/common/XLogger$LogSender;

    return-void
.end method

.method public static setOutputLogLevel(I)V
    .registers 1

    sput p0, Lmiui/cloud/common/XLogger;->sOutputLogLevel:I

    return-void
.end method

.method public static varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const/4 p1, 0x2

    invoke-static {p1, p0, v0, v1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const/4 p1, 0x5

    invoke-static {p1, p0, v0, v1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
