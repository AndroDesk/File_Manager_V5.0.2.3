.class public Lorg/apache/commons/logging/LogSource;
.super Ljava/lang/Object;
.source "LogSource.java"


# static fields
.field public static jdk14IsAvailable:Z

.field public static log4jIsAvailable:Z

.field public static logImplctor:Ljava/lang/reflect/Constructor;

.field public static logs:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 6
    sput-object v0, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    .line 11
    sput-boolean v0, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    .line 13
    const/4 v1, 0x0

    .line 14
    sput-object v1, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    .line 16
    const/4 v2, 0x1

    .line 17
    :try_start_10
    const-string v3, "org.apache.log4j.Logger"

    .line 19
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    .line 24
    goto :goto_1a

    .line 25
    :catchall_18
    sput-boolean v0, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    .line 27
    :goto_1a
    :try_start_1a
    const-string v3, "java.util.logging.Logger"

    .line 29
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    const-string v3, "org.apache.commons.logging.impl.Jdk14Logger"

    .line 34
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 37
    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_27

    .line 39
    goto :goto_29

    .line 40
    :catchall_27
    sput-boolean v0, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    .line 42
    :goto_29
    :try_start_29
    const-string v0, "org.apache.commons.logging.log"

    .line 44
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    if-nez v1, :cond_37

    .line 50
    const-string v0, "org.apache.commons.logging.Log"

    .line 52
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v1
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_37

    .line 56
    :catchall_37
    :cond_37
    const-string v0, "org.apache.commons.logging.impl.NoOpLog"

    .line 58
    if-eqz v1, :cond_43

    .line 60
    :try_start_3b
    invoke-static {v1}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    .line 63
    goto :goto_5e

    .line 64
    :catchall_3f
    :try_start_3f
    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_5e

    .line 67
    goto :goto_5e

    .line 68
    :cond_43
    :try_start_43
    sget-boolean v1, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    .line 70
    if-eqz v1, :cond_4d

    .line 72
    const-string v1, "org.apache.commons.logging.impl.Log4JLogger"

    .line 74
    invoke-static {v1}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V

    .line 77
    goto :goto_5e

    .line 78
    :cond_4d
    sget-boolean v1, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    .line 80
    if-eqz v1, :cond_57

    .line 82
    const-string v1, "org.apache.commons.logging.impl.Jdk14Logger"

    .line 84
    invoke-static {v1}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V

    .line 87
    goto :goto_5e

    .line 88
    :cond_57
    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_5b

    .line 91
    goto :goto_5e

    .line 92
    :catchall_5b
    :try_start_5b
    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5e

    .line 95
    :catchall_5e
    :goto_5e
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .registers 1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/logging/LogSource;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 3

    .line 1
    sget-object v0, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/Log;

    if-nez v0, :cond_13

    .line 2
    invoke-static {p0}, Lorg/apache/commons/logging/LogSource;->makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-object v0
.end method

.method public static getLogNames()[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    .line 3
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    .line 9
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    .line 12
    move-result v1

    .line 13
    new-array v1, v1, [Ljava/lang/String;

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, [Ljava/lang/String;

    .line 21
    return-object v0
.end method

.method public static makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    sget-object v1, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/apache/commons/logging/Log;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    .line 15
    goto :goto_10

    .line 16
    :catchall_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    if-nez v0, :cond_17

    .line 19
    new-instance v0, Lorg/apache/commons/logging/impl/NoOpLog;

    .line 21
    invoke-direct {v0, p0}, Lorg/apache/commons/logging/impl/NoOpLog;-><init>(Ljava/lang/String;)V

    .line 24
    :cond_17
    return-object v0
.end method

.method public static setLogImplementation(Ljava/lang/Class;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, ""

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    sput-object p0, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public static setLogImplementation(Ljava/lang/String;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-string v2, ""

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    sput-object p0, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    goto :goto_1a

    :catchall_17
    const/4 p0, 0x0

    .line 4
    sput-object p0, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    :goto_1a
    return-void
.end method
