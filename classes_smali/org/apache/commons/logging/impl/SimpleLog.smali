.class public Lorg/apache/commons/logging/impl/SimpleLog;
.super Ljava/lang/Object;
.source "SimpleLog.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_DATE_TIME_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm:ss:SSS zzz"

.field public static final LOG_LEVEL_ALL:I = 0x0

.field public static final LOG_LEVEL_DEBUG:I = 0x2

.field public static final LOG_LEVEL_ERROR:I = 0x5

.field public static final LOG_LEVEL_FATAL:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x3

.field public static final LOG_LEVEL_OFF:I = 0x7

.field public static final LOG_LEVEL_TRACE:I = 0x1

.field public static final LOG_LEVEL_WARN:I = 0x4

.field public static synthetic class$java$lang$Thread:Ljava/lang/Class; = null

.field public static synthetic class$org$apache$commons$logging$impl$SimpleLog:Ljava/lang/Class; = null

.field public static dateFormatter:Ljava/text/DateFormat; = null

.field public static dateTimeFormat:Ljava/lang/String; = null

.field public static showDateTime:Z = false

.field public static showLogName:Z = false

.field public static showShortName:Z = false

.field public static final simpleLogProps:Ljava/util/Properties;

.field public static final systemPrefix:Ljava/lang/String; = "org.apache.commons.logging.simplelog."


# instance fields
.field public currentLogLevel:I

.field public logName:Ljava/lang/String;

.field private shortLogName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    const/4 v1, 0x0

    sput-boolean v1, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    sput-boolean v1, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    const-string v1, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    sput-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    const-string v2, "simplelog.properties"

    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_24

    :try_start_1e
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_24} :catch_24

    :catch_24
    :cond_24
    sget-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    const-string v2, "org.apache.commons.logging.simplelog.showlogname"

    invoke-static {v2, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    sget-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    const-string v2, "org.apache.commons.logging.simplelog.showShortLogname"

    invoke-static {v2, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    sget-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    const-string v2, "org.apache.commons.logging.simplelog.showdatetime"

    invoke-static {v2, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    if-eqz v0, :cond_63

    sget-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    const-string v2, "org.apache.commons.logging.simplelog.dateTimeFormat"

    invoke-static {v2, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    :try_start_4e
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;
    :try_end_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_57} :catch_58

    goto :goto_63

    :catch_58
    sput-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    :cond_63
    :goto_63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "org.apache.commons.logging.simplelog.log."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    :goto_2d
    const/4 v5, 0x0

    if-nez v1, :cond_53

    const/4 v6, -0x1

    if-le v3, v6, :cond_53

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_2d

    :cond_53
    if-nez v1, :cond_5b

    const-string p1, "org.apache.commons.logging.simplelog.defaultlog"

    invoke-static {p1}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5b
    const-string p1, "all"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_67

    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_c0

    :cond_67
    const-string p1, "trace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_74

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_c0

    :cond_74
    const-string p1, "debug"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_81

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_c0

    :cond_81
    const-string p1, "info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8d

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_c0

    :cond_8d
    const-string p1, "warn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9a

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_c0

    :cond_9a
    const-string p1, "error"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_c0

    :cond_a7
    const-string p1, "fatal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b4

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_c0

    :cond_b4
    const-string p1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    :cond_c0
    :goto_c0
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/ClassLoader;
    .registers 1

    invoke-static {}, Lorg/apache/commons/logging/impl/SimpleLog;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getBooleanProperty(Ljava/lang/String;Z)Z
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_d

    :cond_7
    const-string p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :goto_d
    return p1
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->class$java$lang$Thread:Ljava/lang/Class;

    if-nez v1, :cond_d

    const-string v1, "java.lang.Thread"

    invoke-static {v1}, Lorg/apache/commons/logging/impl/SimpleLog;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->class$java$lang$Thread:Ljava/lang/Class;

    :cond_d
    const-string v2, "getContextClassLoader"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_13} :catch_35

    :try_start_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_1d} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_1d} :catch_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_1d} :catch_35

    move-object v0, v1

    goto :goto_35

    :catch_1f
    move-exception v1

    :try_start_20
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/SecurityException;

    if-eqz v2, :cond_29

    goto :goto_35

    :cond_29
    new-instance v2, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v3, "Unexpected InvocationTargetException"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_35} :catch_35

    :catch_35
    :goto_35
    if-nez v0, :cond_47

    sget-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->class$org$apache$commons$logging$impl$SimpleLog:Ljava/lang/Class;

    if-nez v0, :cond_43

    const-string v0, "org.apache.commons.logging.impl.SimpleLog"

    invoke-static {v0}, Lorg/apache/commons/logging/impl/SimpleLog;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->class$org$apache$commons$logging$impl$SimpleLog:Ljava/lang/Class;

    :cond_43
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_47
    return-object v0
.end method

.method private static getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2

    new-instance v0, Lorg/apache/commons/logging/impl/SimpleLog$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/logging/impl/SimpleLog$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method private static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_e

    sget-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method private static getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    move-object p1, p0

    :goto_8
    return-object p1
.end method


# virtual methods
.method public final debug(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public final debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public final error(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public final error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public final fatal(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public final fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public getLevel()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    return v0
.end method

.method public final info(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public final info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public final isDebugEnabled()Z
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isErrorEnabled()Z
    .registers 2

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isFatalEnabled()Z
    .registers 2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isInfoEnabled()Z
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isLevelEnabled(I)Z
    .registers 3

    iget v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    if-lt p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public final isTraceEnabled()Z
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isWarnEnabled()Z
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-boolean v1, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    if-eqz v1, :cond_24

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sget-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    monitor-enter v2

    :try_start_11
    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_24

    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1

    :cond_24
    :goto_24
    packed-switch p1, :pswitch_data_ca

    goto :goto_4b

    :pswitch_28  #0x6
    const-string p1, "[FATAL] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4b

    :pswitch_2e  #0x5
    const-string p1, "[ERROR] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4b

    :pswitch_34  #0x4
    const-string p1, "[WARN] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4b

    :pswitch_3a  #0x3
    const-string p1, "[INFO] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4b

    :pswitch_40  #0x2
    const-string p1, "[DEBUG] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4b

    :pswitch_46  #0x1
    const-string p1, "[TRACE] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4b
    sget-boolean p1, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    if-eqz p1, :cond_80

    iget-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    if-nez p1, :cond_71

    iget-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    :cond_71
    iget-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_92

    :cond_80
    sget-boolean p1, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    if-eqz p1, :cond_92

    iget-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_92
    :goto_92
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_c5

    const-string p1, " <"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p1, Ljava/io/StringWriter;

    const/16 p2, 0x400

    invoke-direct {p1, p2}, Ljava/io/StringWriter;-><init>(I)V

    new-instance p2, Ljava/io/PrintWriter;

    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c5
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->write(Ljava/lang/StringBuffer;)V

    return-void

    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_46  #00000001
        :pswitch_40  #00000002
        :pswitch_3a  #00000003
        :pswitch_34  #00000004
        :pswitch_2e  #00000005
        :pswitch_28  #00000006
    .end packed-switch
.end method

.method public setLevel(I)V
    .registers 2

    iput p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    return-void
.end method

.method public final trace(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public final trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public final warn(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public final warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public write(Ljava/lang/StringBuffer;)V
    .registers 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
