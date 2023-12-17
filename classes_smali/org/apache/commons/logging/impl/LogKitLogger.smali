.class public Lorg/apache/commons/logging/impl/LogKitLogger;
.super Ljava/lang/Object;
.source "LogKitLogger.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# instance fields
.field public transient logger:Lorg/apache/log/Logger;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogKitLogger;->logger:Lorg/apache/log/Logger;

    .line 7
    iput-object p1, p0, Lorg/apache/commons/logging/impl/LogKitLogger;->name:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/apache/commons/logging/impl/LogKitLogger;->logger:Lorg/apache/log/Logger;

    .line 15
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/log/Logger;->debug(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p1, :cond_d

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/log/Logger;->error(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p1, :cond_d

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/log/Logger;->fatalError(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p1, :cond_d

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/log/Logger;->fatalError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method public getLogger()Lorg/apache/log/Logger;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogKitLogger;->logger:Lorg/apache/log/Logger;

    .line 3
    if-nez v0, :cond_10

    .line 5
    invoke-static {}, Lorg/apache/log/Hierarchy;->getDefaultHierarchy()Lorg/apache/log/Hierarchy;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogKitLogger;->name:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lorg/apache/log/Hierarchy;->getLoggerFor(Ljava/lang/String;)Lorg/apache/log/Logger;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogKitLogger;->logger:Lorg/apache/log/Logger;

    .line 17
    :cond_10
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogKitLogger;->logger:Lorg/apache/log/Logger;

    .line 19
    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/log/Logger;->info(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p1, :cond_d

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/log/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/log/Logger;->isDebugEnabled()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isErrorEnabled()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/log/Logger;->isErrorEnabled()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isFatalEnabled()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/log/Logger;->isFatalErrorEnabled()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isInfoEnabled()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/log/Logger;->isInfoEnabled()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isTraceEnabled()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/log/Logger;->isDebugEnabled()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isWarnEnabled()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/log/Logger;->isWarnEnabled()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogKitLogger;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/logging/impl/LogKitLogger;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/log/Logger;->warn(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p1, :cond_d

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogKitLogger;->getLogger()Lorg/apache/log/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method
