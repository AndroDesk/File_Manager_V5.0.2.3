.class public Lorg/apache/commons/logging/impl/Log4JLogger;
.super Ljava/lang/Object;
.source "Log4JLogger.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# static fields
.field private static final FQCN:Ljava/lang/String;

.field public static synthetic class$org$apache$commons$logging$impl$Log4JLogger:Ljava/lang/Class;

.field public static synthetic class$org$apache$log4j$Level:Ljava/lang/Class;

.field public static synthetic class$org$apache$log4j$Priority:Ljava/lang/Class;

.field private static traceLevel:Lorg/apache/log4j/Priority;


# instance fields
.field private transient logger:Lorg/apache/log4j/Logger;

.field private name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$commons$logging$impl$Log4JLogger:Ljava/lang/Class;

    .line 3
    if-nez v0, :cond_c

    .line 5
    const-string v0, "org.apache.commons.logging.impl.Log4JLogger"

    .line 7
    invoke-static {v0}, Lorg/apache/commons/logging/impl/Log4JLogger;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$commons$logging$impl$Log4JLogger:Ljava/lang/Class;

    .line 13
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    .line 19
    sget-object v0, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    .line 21
    if-nez v0, :cond_1e

    .line 23
    const-string v0, "org.apache.log4j.Priority"

    .line 25
    invoke-static {v0}, Lorg/apache/commons/logging/impl/Log4JLogger;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    .line 31
    :cond_1e
    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$log4j$Level:Ljava/lang/Class;

    .line 33
    const-string v2, "org.apache.log4j.Level"

    .line 35
    if-nez v1, :cond_2a

    .line 37
    invoke-static {v2}, Lorg/apache/commons/logging/impl/Log4JLogger;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 40
    move-result-object v1

    .line 41
    sput-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$log4j$Level:Ljava/lang/Class;

    .line 43
    :cond_2a
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_4f

    .line 49
    :try_start_30
    sget-object v0, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$log4j$Level:Ljava/lang/Class;

    .line 51
    if-nez v0, :cond_3a

    .line 53
    invoke-static {v2}, Lorg/apache/commons/logging/impl/Log4JLogger;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$log4j$Level:Ljava/lang/Class;

    .line 59
    :cond_3a
    const-string v1, "TRACE"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 64
    move-result-object v0

    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lorg/apache/log4j/Priority;

    .line 72
    sput-object v0, Lorg/apache/commons/logging/impl/Log4JLogger;->traceLevel:Lorg/apache/log4j/Priority;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_49} :catch_4a

    .line 74
    goto :goto_4e

    .line 75
    :catch_4a
    sget-object v0, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    .line 77
    sput-object v0, Lorg/apache/commons/logging/impl/Log4JLogger;->traceLevel:Lorg/apache/log4j/Priority;

    .line 79
    :goto_4e
    return-void

    .line 80
    :cond_4f
    new-instance v0, Ljava/lang/InstantiationError;

    .line 82
    const-string v1, "Log4J 1.2 not available"

    .line 84
    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    .line 87
    throw v0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    .line 3
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    .line 6
    iput-object p1, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->name:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Logger;)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    .line 10
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->name:Ljava/lang/String;

    if-eqz p1, :cond_13

    .line 11
    invoke-virtual {p1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->name:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    return-void

    .line 13
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Warning - null logger in constructor; possible log4j misconfiguration."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->ERROR:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->ERROR:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->FATAL:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->FATAL:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getLogger()Lorg/apache/log4j/Logger;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->name:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    .line 13
    :cond_c
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    .line 15
    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->INFO:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->INFO:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/log4j/Category;->isDebugEnabled()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isErrorEnabled()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/apache/log4j/Priority;->ERROR:Lorg/apache/log4j/Priority;

    .line 7
    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isFatalEnabled()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/apache/log4j/Priority;->FATAL:Lorg/apache/log4j/Priority;

    .line 7
    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isInfoEnabled()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/log4j/Category;->isInfoEnabled()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isTraceEnabled()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->traceLevel:Lorg/apache/log4j/Priority;

    .line 7
    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isWarnEnabled()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/apache/log4j/Priority;->WARN:Lorg/apache/log4j/Priority;

    .line 7
    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/logging/impl/Log4JLogger;->traceLevel:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/logging/impl/Log4JLogger;->traceLevel:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->WARN:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->WARN:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
