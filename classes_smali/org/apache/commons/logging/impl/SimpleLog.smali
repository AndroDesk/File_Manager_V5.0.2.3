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

    .line 1
    new-instance v0, Ljava/util/Properties;

    .line 3
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 6
    sput-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    .line 8
    const/4 v1, 0x0

    .line 9
    sput-boolean v1, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    .line 11
    const/4 v2, 0x1

    .line 12
    sput-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    .line 14
    sput-boolean v1, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    .line 16
    const-string v1, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    .line 18
    sput-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 20
    const/4 v2, 0x0

    .line 21
    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    .line 23
    const-string v2, "simplelog.properties"

    .line 25
    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_24

    .line 31
    :try_start_1e
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 34
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_24} :catch_24

    .line 37
    :catch_24
    :cond_24
    sget-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    .line 39
    const-string v2, "org.apache.commons.logging.simplelog.showlogname"

    .line 41
    invoke-static {v2, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    .line 44
    move-result v0

    .line 45
    sput-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    .line 47
    sget-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    .line 49
    const-string v2, "org.apache.commons.logging.simplelog.showShortLogname"

    .line 51
    invoke-static {v2, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    .line 54
    move-result v0

    .line 55
    sput-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    .line 57
    sget-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    .line 59
    const-string v2, "org.apache.commons.logging.simplelog.showdatetime"

    .line 61
    invoke-static {v2, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    .line 64
    move-result v0

    .line 65
    sput-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    .line 67
    if-eqz v0, :cond_63

    .line 69
    sget-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 71
    const-string v2, "org.apache.commons.logging.simplelog.dateTimeFormat"

    .line 73
    invoke-static {v2, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 79
    :try_start_4e
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 81
    sget-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 83
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 86
    sput-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;
    :try_end_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_57} :catch_58

    .line 88
    goto :goto_63

    .line 89
    :catch_58
    sput-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 93
    sget-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 95
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 98
    sput-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    .line 100
    :cond_63
    :goto_63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    .line 9
    const/4 v0, 0x3

    .line 10
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 13
    new-instance v1, Ljava/lang/StringBuffer;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    const-string v2, "org.apache.commons.logging.simplelog.log."

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    const-string v4, "."

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 45
    move-result v3

    .line 46
    :goto_2d
    const/4 v5, 0x0

    .line 47
    if-nez v1, :cond_53

    .line 49
    const/4 v6, -0x1

    .line 50
    if-le v3, v6, :cond_53

    .line 52
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    new-instance v1, Ljava/lang/StringBuffer;

    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 82
    move-result v3

    .line 83
    goto :goto_2d

    .line 84
    :cond_53
    if-nez v1, :cond_5b

    .line 86
    const-string p1, "org.apache.commons.logging.simplelog.defaultlog"

    .line 88
    invoke-static {p1}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    :cond_5b
    const-string p1, "all"

    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_67

    .line 100
    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 103
    goto :goto_c0

    .line 104
    :cond_67
    const-string p1, "trace"

    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_74

    .line 112
    const/4 p1, 0x1

    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 116
    goto :goto_c0

    .line 117
    :cond_74
    const-string p1, "debug"

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_81

    .line 125
    const/4 p1, 0x2

    .line 126
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 129
    goto :goto_c0

    .line 130
    :cond_81
    const-string p1, "info"

    .line 132
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_8d

    .line 138
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 141
    goto :goto_c0

    .line 142
    :cond_8d
    const-string p1, "warn"

    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_9a

    .line 150
    const/4 p1, 0x4

    .line 151
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 154
    goto :goto_c0

    .line 155
    :cond_9a
    const-string p1, "error"

    .line 157
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_a7

    .line 163
    const/4 p1, 0x5

    .line 164
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 167
    goto :goto_c0

    .line 168
    :cond_a7
    const-string p1, "fatal"

    .line 170
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_b4

    .line 176
    const/4 p1, 0x6

    .line 177
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 180
    goto :goto_c0

    .line 181
    :cond_b4
    const-string p1, "off"

    .line 183
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_c0

    .line 189
    const/4 p1, 0x7

    .line 190
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 193
    :cond_c0
    :goto_c0
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/ClassLoader;
    .registers 1

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/impl/SimpleLog;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p0

    .line 6
    :catch_5
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/NoClassDefFoundError;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 16
    throw v0
.end method

.method private static getBooleanProperty(Ljava/lang/String;Z)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_7

    .line 7
    goto :goto_d

    .line 8
    :cond_7
    const-string p1, "true"

    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    move-result p1

    .line 14
    :goto_d
    return p1
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->class$java$lang$Thread:Ljava/lang/Class;

    .line 4
    if-nez v1, :cond_d

    .line 6
    const-string v1, "java.lang.Thread"

    .line 8
    invoke-static {v1}, Lorg/apache/commons/logging/impl/SimpleLog;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->class$java$lang$Thread:Ljava/lang/Class;

    .line 14
    :cond_d
    const-string v2, "getContextClassLoader"

    .line 16
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    move-result-object v1
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_13} :catch_35

    .line 20
    :try_start_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/ClassLoader;
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_1d} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_1d} :catch_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_1d} :catch_35

    .line 30
    move-object v0, v1

    .line 31
    goto :goto_35

    .line 32
    :catch_1f
    move-exception v1

    .line 33
    :try_start_20
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 36
    move-result-object v2

    .line 37
    instance-of v2, v2, Ljava/lang/SecurityException;

    .line 39
    if-eqz v2, :cond_29

    .line 41
    goto :goto_35

    .line 42
    :cond_29
    new-instance v2, Lorg/apache/commons/logging/LogConfigurationException;

    .line 44
    const-string v3, "Unexpected InvocationTargetException"

    .line 46
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v2, v3, v1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    throw v2
    :try_end_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_35} :catch_35

    .line 54
    :catch_35
    :goto_35
    if-nez v0, :cond_47

    .line 56
    sget-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->class$org$apache$commons$logging$impl$SimpleLog:Ljava/lang/Class;

    .line 58
    if-nez v0, :cond_43

    .line 60
    const-string v0, "org.apache.commons.logging.impl.SimpleLog"

    .line 62
    invoke-static {v0}, Lorg/apache/commons/logging/impl/SimpleLog;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->class$org$apache$commons$logging$impl$SimpleLog:Ljava/lang/Class;

    .line 68
    :cond_43
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 71
    move-result-object v0

    .line 72
    :cond_47
    return-object v0
.end method

.method private static getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2

    .line 1
    new-instance v0, Lorg/apache/commons/logging/impl/SimpleLog$1;

    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/logging/impl/SimpleLog$1;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/io/InputStream;

    .line 12
    return-object p0
.end method

.method private static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
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

    .line 2
    sget-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method private static getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 3
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

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public final debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public final error(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public final error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x5

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public final fatal(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public final fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x6

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public getLevel()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    .line 3
    return v0
.end method

.method public final info(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public final info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public final isDebugEnabled()Z
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public final isErrorEnabled()Z
    .registers 2

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public final isFatalEnabled()Z
    .registers 2

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public final isInfoEnabled()Z
    .registers 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public isLevelEnabled(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    .line 3
    if-lt p1, v0, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    return p1
.end method

.method public final isTraceEnabled()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public final isWarnEnabled()Z
    .registers 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    sget-boolean v1, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    .line 8
    if-eqz v1, :cond_24

    .line 10
    new-instance v1, Ljava/util/Date;

    .line 12
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 15
    sget-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    .line 17
    monitor-enter v2

    .line 18
    :try_start_11
    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    .line 20
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_21

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    const-string v1, " "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    goto :goto_24

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    .line 36
    throw p1

    .line 37
    :cond_24
    :goto_24
    packed-switch p1, :pswitch_data_ca

    .line 40
    goto :goto_4b

    .line 41
    :pswitch_28  #0x6
    const-string p1, "[FATAL] "

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    goto :goto_4b

    .line 47
    :pswitch_2e  #0x5
    const-string p1, "[ERROR] "

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    goto :goto_4b

    .line 53
    :pswitch_34  #0x4
    const-string p1, "[WARN] "

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    goto :goto_4b

    .line 59
    :pswitch_3a  #0x3
    const-string p1, "[INFO] "

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    goto :goto_4b

    .line 65
    :pswitch_40  #0x2
    const-string p1, "[DEBUG] "

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    goto :goto_4b

    .line 71
    :pswitch_46  #0x1
    const-string p1, "[TRACE] "

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    :goto_4b
    sget-boolean p1, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    .line 78
    if-eqz p1, :cond_80

    .line 80
    iget-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 82
    if-nez p1, :cond_71

    .line 84
    iget-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    .line 86
    const-string v1, "."

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 91
    move-result v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 100
    const-string v1, "/"

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 105
    move-result v1

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 114
    :cond_71
    iget-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string p1, " - "

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    goto :goto_92

    .line 129
    :cond_80
    sget-boolean p1, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    .line 131
    if-eqz p1, :cond_92

    .line 133
    iget-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    .line 135
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string p1, " - "

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    :cond_92
    :goto_92
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    if-eqz p3, :cond_c5

    .line 156
    const-string p1, " <"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const-string p1, ">"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    new-instance p1, Ljava/io/StringWriter;

    .line 175
    const/16 p2, 0x400

    .line 177
    invoke-direct {p1, p2}, Ljava/io/StringWriter;-><init>(I)V

    .line 180
    new-instance p2, Ljava/io/PrintWriter;

    .line 182
    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 185
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 188
    invoke-virtual {p2}, Ljava/io/PrintWriter;->close()V

    .line 191
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_c5
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->write(Ljava/lang/StringBuffer;)V

    .line 201
    return-void

    .line 202
    nop

    .line 203
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

    .line 1
    iput p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    .line 3
    return-void
.end method

.method public final trace(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public final trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public final warn(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public final warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public write(Ljava/lang/StringBuffer;)V
    .registers 3

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 3
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 10
    return-void
.end method
