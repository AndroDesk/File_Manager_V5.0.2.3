.class public Lorg/apache/commons/logging/impl/ServletContextCleaner;
.super Ljava/lang/Object;
.source "ServletContextCleaner.java"

# interfaces
.implements Ljavax/servlet/ServletContextListener;


# static fields
.field public static synthetic class$java$lang$ClassLoader:Ljava/lang/Class;


# instance fields
.field private RELEASE_SIGNATURE:[Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Ljava/lang/Class;

    .line 7
    sget-object v1, Lorg/apache/commons/logging/impl/ServletContextCleaner;->class$java$lang$ClassLoader:Ljava/lang/Class;

    .line 9
    if-nez v1, :cond_12

    .line 11
    const-string v1, "java.lang.ClassLoader"

    .line 13
    invoke-static {v1}, Lorg/apache/commons/logging/impl/ServletContextCleaner;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lorg/apache/commons/logging/impl/ServletContextCleaner;->class$java$lang$ClassLoader:Ljava/lang/Class;

    .line 19
    :cond_12
    const/4 v2, 0x0

    .line 20
    aput-object v1, v0, v2

    .line 22
    iput-object v0, p0, Lorg/apache/commons/logging/impl/ServletContextCleaner;->RELEASE_SIGNATURE:[Ljava/lang/Class;

    .line 24
    return-void
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
.method public contextDestroyed(Ljavax/servlet/ServletContextEvent;)V
    .registers 7

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    const/4 v1, 0x0

    .line 13
    aput-object p1, v0, v1

    .line 15
    const/4 v1, 0x0

    .line 16
    move-object v2, p1

    .line 17
    :goto_10
    if-eqz v2, :cond_45

    .line 19
    :try_start_12
    const-string v3, "org.apache.commons.logging.LogFactory"

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    move-result-object v2

    .line 25
    const-string v3, "release"

    .line 27
    iget-object v4, p0, Lorg/apache/commons/logging/impl/ServletContextCleaner;->RELEASE_SIGNATURE:[Ljava/lang/Class;

    .line 29
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 43
    move-result-object v2
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_2b} :catch_43
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_2b} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_2b} :catch_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_2b} :catch_2c

    .line 44
    goto :goto_10

    .line 45
    :catch_2c
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 47
    const-string v3, "LogFactory instance release method failed!"

    .line 49
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    goto :goto_43

    .line 53
    :catch_34
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 55
    const-string v3, "LogFactory instance found which is not accessable!"

    .line 57
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    goto :goto_43

    .line 61
    :catch_3c
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 63
    const-string v3, "LogFactory instance found which does not support release method!"

    .line 65
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    :catch_43
    :goto_43
    move-object v2, v1

    .line 69
    goto :goto_10

    .line 70
    :cond_45
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->release(Ljava/lang/ClassLoader;)V

    .line 73
    return-void
.end method

.method public contextInitialized(Ljavax/servlet/ServletContextEvent;)V
    .registers 2

    return-void
.end method
