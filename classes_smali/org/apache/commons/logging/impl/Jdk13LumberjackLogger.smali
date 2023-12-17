.class public Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;
.super Ljava/lang/Object;
.source "Jdk13LumberjackLogger.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# static fields
.field public static final dummyLevel:Ljava/util/logging/Level;


# instance fields
.field private classAndMethodFound:Z

.field public transient logger:Ljava/util/logging/Logger;

.field public name:Ljava/lang/String;

.field private sourceClassName:Ljava/lang/String;

.field private sourceMethodName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 3
    sput-object v0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->dummyLevel:Ljava/util/logging/Level;

    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->logger:Ljava/util/logging/Logger;

    .line 7
    const-string v0, "unknown"

    .line 9
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceClassName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceMethodName:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->classAndMethodFound:Z

    .line 16
    iput-object p1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->name:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->logger:Ljava/util/logging/Logger;

    .line 24
    return-void
.end method

.method private getClassAndMethod()V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_1
    new-instance v1, Ljava/lang/Throwable;

    .line 4
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 7
    invoke-virtual {v1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 10
    new-instance v2, Ljava/io/StringWriter;

    .line 12
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 15
    new-instance v3, Ljava/io/PrintWriter;

    .line 17
    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 23
    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Ljava/util/StringTokenizer;

    .line 33
    const-string v3, "\n"

    .line 35
    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 41
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    :goto_2c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 56
    move-result v3

    .line 57
    const/4 v4, -0x1

    .line 58
    if-ne v3, v4, :cond_40

    .line 60
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    goto :goto_2c

    .line 65
    :cond_40
    :goto_40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 76
    move-result v3

    .line 77
    if-ltz v3, :cond_53

    .line 79
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    goto :goto_40

    .line 84
    :cond_53
    const-string v2, "at "

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 89
    move-result v2

    .line 90
    add-int/lit8 v2, v2, 0x3

    .line 92
    const/16 v3, 0x28

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 97
    move-result v3

    .line 98
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    const/16 v2, 0x2e

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 107
    move-result v2

    .line 108
    const/4 v3, 0x0

    .line 109
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 112
    move-result-object v3

    .line 113
    iput-object v3, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceClassName:Ljava/lang/String;

    .line 115
    add-int/2addr v2, v0

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    iput-object v1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceMethodName:Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_79} :catch_79

    .line 122
    :catch_79
    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->classAndMethodFound:Z

    .line 124
    return-void
.end method

.method private log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2c

    .line 11
    new-instance v0, Ljava/util/logging/LogRecord;

    .line 13
    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 16
    iget-boolean p1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->classAndMethodFound:Z

    .line 18
    if-nez p1, :cond_16

    .line 20
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getClassAndMethod()V

    .line 23
    :cond_16
    iget-object p1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceClassName:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceMethodName:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 33
    if-eqz p3, :cond_25

    .line 35
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 38
    :cond_25
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 45
    :cond_2c
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->logger:Ljava/util/logging/Logger;

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->name:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->logger:Ljava/util/logging/Logger;

    .line 13
    :cond_c
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->logger:Ljava/util/logging/Logger;

    .line 15
    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isErrorEnabled()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isFatalEnabled()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isInfoEnabled()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isTraceEnabled()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isWarnEnabled()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
