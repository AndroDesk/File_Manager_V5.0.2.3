.class public final Lorg/slf4j/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static final API_COMPATIBILITY_LIST:[Ljava/lang/String;

.field public static final CODES_PREFIX:Ljava/lang/String; = "http://www.slf4j.org/codes.html"

.field public static DETECT_LOGGER_NAME_MISMATCH:Z = false

.field public static final DETECT_LOGGER_NAME_MISMATCH_PROPERTY:Ljava/lang/String; = "slf4j.detectLoggerNameMismatch"

.field public static final FAILED_INITIALIZATION:I = 0x2

.field public static volatile INITIALIZATION_STATE:I = 0x0

.field public static final JAVA_VENDOR_PROPERTY:Ljava/lang/String; = "java.vendor.url"

.field public static final LOGGER_NAME_MISMATCH_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#loggerNameMismatch"

.field public static final MULTIPLE_BINDINGS_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#multiple_bindings"

.field public static NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/NOPLoggerFactory; = null

.field public static final NOP_FALLBACK_INITIALIZATION:I = 0x4

.field public static final NO_STATICLOGGERBINDER_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#StaticLoggerBinder"

.field public static final NULL_LF_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#null_LF"

.field public static final ONGOING_INITIALIZATION:I = 0x1

.field public static final REPLAY_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#replay"

.field private static STATIC_LOGGER_BINDER_PATH:Ljava/lang/String; = null

.field public static final SUBSTITUTE_LOGGER_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#substituteLogger"

.field public static SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory; = null

.field public static final SUCCESSFUL_INITIALIZATION:I = 0x3

.field public static final UNINITIALIZED:I = 0x0

.field public static final UNSUCCESSFUL_INIT_MSG:Ljava/lang/String; = "org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

.field public static final UNSUCCESSFUL_INIT_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#unsuccessfulInit"

.field public static final VERSION_MISMATCH:Ljava/lang/String; = "http://www.slf4j.org/codes.html#version_mismatch"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 3
    invoke-direct {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;-><init>()V

    .line 6
    sput-object v0, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 8
    new-instance v0, Lorg/slf4j/helpers/NOPLoggerFactory;

    .line 10
    invoke-direct {v0}, Lorg/slf4j/helpers/NOPLoggerFactory;-><init>()V

    .line 13
    sput-object v0, Lorg/slf4j/LoggerFactory;->NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/NOPLoggerFactory;

    .line 15
    const-string v0, "slf4j.detectLoggerNameMismatch"

    .line 17
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->safeGetBooleanSystemProperty(Ljava/lang/String;)Z

    .line 20
    move-result v0

    .line 21
    sput-boolean v0, Lorg/slf4j/LoggerFactory;->DETECT_LOGGER_NAME_MISMATCH:Z

    .line 23
    const-string v0, "1.6"

    .line 25
    const-string v1, "1.7"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    .line 33
    const-string v0, "org/slf4j/impl/StaticLoggerBinder.class"

    .line 35
    sput-object v0, Lorg/slf4j/LoggerFactory;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static final bind()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {}, Lorg/slf4j/LoggerFactory;->isAndroid()Z

    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_e

    .line 8
    invoke-static {}, Lorg/slf4j/LoggerFactory;->findPossibleStaticLoggerBinderPathSet()Ljava/util/Set;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->reportMultipleBindingAmbiguity(Ljava/util/Set;)V

    .line 15
    :cond_e
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    .line 18
    const/4 v1, 0x3

    .line 19
    sput v1, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 21
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->reportActualBinding(Ljava/util/Set;)V

    .line 24
    invoke-static {}, Lorg/slf4j/LoggerFactory;->fixSubstituteLoggers()V

    .line 27
    invoke-static {}, Lorg/slf4j/LoggerFactory;->replayEvents()V

    .line 30
    sget-object v0, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 32
    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->clear()V
    :try_end_22
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_22} :catch_51
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_22} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    .line 35
    goto :goto_6e

    .line 36
    :catch_23
    move-exception v0

    .line 37
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->failedBinding(Ljava/lang/Throwable;)V

    .line 40
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 42
    const-string v2, "Unexpected initialization failure"

    .line 44
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    throw v1

    .line 48
    :catch_2f
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_50

    .line 55
    const-string v2, "org.slf4j.impl.StaticLoggerBinder.getSingleton()"

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_50

    .line 63
    const/4 v1, 0x2

    .line 64
    sput v1, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 66
    const-string v1, "slf4j-api 1.6.x (or later) is incompatible with this binding."

    .line 68
    invoke-static {v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 71
    const-string v1, "Your binding is version 1.5.5 or earlier."

    .line 73
    invoke-static {v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 76
    const-string v1, "Upgrade your binding to version 1.6.x."

    .line 78
    invoke-static {v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 81
    :cond_50
    throw v0

    .line 82
    :catch_51
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->messageContainsOrgSlf4jImplStaticLoggerBinder(Ljava/lang/String;)Z

    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_6f

    .line 93
    const/4 v0, 0x4

    .line 94
    sput v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 96
    const-string v0, "Failed to load class \"org.slf4j.impl.StaticLoggerBinder\"."

    .line 98
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 101
    const-string v0, "Defaulting to no-operation (NOP) logger implementation"

    .line 103
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 106
    const-string v0, "See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details."

    .line 108
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 111
    :goto_6e
    return-void

    .line 112
    :cond_6f
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->failedBinding(Ljava/lang/Throwable;)V

    .line 115
    throw v0
.end method

.method private static emitReplayOrSubstituionWarning(Lorg/slf4j/event/SubstituteLoggingEvent;I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/event/SubstituteLoggingEvent;->getLogger()Lorg/slf4j/helpers/SubstituteLogger;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateEventAware()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_e

    .line 11
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->emitReplayWarning(I)V

    .line 14
    goto :goto_1c

    .line 15
    :cond_e
    invoke-virtual {p0}, Lorg/slf4j/event/SubstituteLoggingEvent;->getLogger()Lorg/slf4j/helpers/SubstituteLogger;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateNOP()Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_19

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    invoke-static {}, Lorg/slf4j/LoggerFactory;->emitSubstitutionWarning()V

    .line 29
    :goto_1c
    return-void
.end method

.method private static emitReplayWarning(I)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "A number ("

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string p0, ") of logging calls during the initialization phase have been intercepted and are"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 26
    const-string p0, "now being replayed. These are subject to the filtering rules of the underlying logging system."

    .line 28
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 31
    const-string p0, "See also http://www.slf4j.org/codes.html#replay"

    .line 33
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private static emitSubstitutionWarning()V
    .registers 1

    .line 1
    const-string v0, "The following set of substitute loggers may have been accessed"

    .line 3
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 6
    const-string v0, "during the initialization phase. Logging calls during this"

    .line 8
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 11
    const-string v0, "phase were not honored. However, subsequent logging calls to these"

    .line 13
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 16
    const-string v0, "loggers will work as normally expected."

    .line 18
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 21
    const-string v0, "See also http://www.slf4j.org/codes.html#substituteLogger"

    .line 23
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static failedBinding(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    sput v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 4
    const-string v0, "Failed to instantiate SLF4J LoggerFactory"

    .line 6
    invoke-static {v0, p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    return-void
.end method

.method public static findPossibleStaticLoggerBinderPathSet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6
    :try_start_5
    const-class v1, Lorg/slf4j/LoggerFactory;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_14

    .line 14
    sget-object v1, Lorg/slf4j/LoggerFactory;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    .line 16
    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 19
    move-result-object v1

    .line 20
    goto :goto_1a

    .line 21
    :cond_14
    sget-object v2, Lorg/slf4j/LoggerFactory;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 26
    move-result-object v1

    .line 27
    :goto_1a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_30

    .line 33
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/net/URL;

    .line 39
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_29} :catch_2a

    .line 42
    goto :goto_1a

    .line 43
    :catch_2a
    move-exception v1

    .line 44
    const-string v2, "Error getting resources from path"

    .line 46
    invoke-static {v2, v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :cond_30
    return-object v0
.end method

.method private static fixSubstituteLoggers()V
    .registers 4

    .line 1
    sget-object v0, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 6
    invoke-virtual {v1}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->postInitialization()V

    .line 9
    sget-object v1, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 11
    invoke-virtual {v1}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->getLoggers()Ljava/util/List;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2a

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lorg/slf4j/helpers/SubstituteLogger;

    .line 31
    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->getName()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Lorg/slf4j/helpers/SubstituteLogger;->setDelegate(Lorg/slf4j/Logger;)V

    .line 42
    goto :goto_12

    .line 43
    :cond_2a
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_2c
    move-exception v1

    .line 46
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    .line 47
    throw v1
.end method

.method public static getILoggerFactory()Lorg/slf4j/ILoggerFactory;
    .registers 3

    .line 1
    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_16

    .line 6
    const-class v0, Lorg/slf4j/LoggerFactory;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    sget v2, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 11
    if-nez v2, :cond_11

    .line 13
    sput v1, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 15
    invoke-static {}, Lorg/slf4j/LoggerFactory;->performInitialization()V

    .line 18
    :cond_11
    monitor-exit v0

    .line 19
    goto :goto_16

    .line 20
    :catchall_13
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    .line 22
    throw v1

    .line 23
    :cond_16
    :goto_16
    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 25
    if-eq v0, v1, :cond_3f

    .line 27
    const/4 v1, 0x2

    .line 28
    if-eq v0, v1, :cond_37

    .line 30
    const/4 v1, 0x3

    .line 31
    if-eq v0, v1, :cond_2e

    .line 33
    const/4 v1, 0x4

    .line 34
    if-ne v0, v1, :cond_26

    .line 36
    sget-object v0, Lorg/slf4j/LoggerFactory;->NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/NOPLoggerFactory;

    .line 38
    return-object v0

    .line 39
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    const-string v1, "Unreachable code"

    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0

    .line 47
    :cond_2e
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactory()Lorg/slf4j/ILoggerFactory;

    .line 54
    move-result-object v0

    .line 55
    return-object v0

    .line 56
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    const-string v1, "org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v0

    .line 64
    :cond_3f
    sget-object v0, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 66
    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/slf4j/Logger;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 4
    sget-boolean v1, Lorg/slf4j/LoggerFactory;->DETECT_LOGGER_NAME_MISMATCH:Z

    if-eqz v1, :cond_37

    .line 5
    invoke-static {}, Lorg/slf4j/helpers/Util;->getCallingClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 6
    invoke-static {p0, v1}, Lorg/slf4j/LoggerFactory;->nonMatchingClasses(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_37

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 7
    invoke-interface {v0}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v2

    const-string v1, "Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\"."

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string p0, "See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation"

    .line 8
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    :cond_37
    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .registers 2

    .line 1
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    .line 2
    invoke-interface {v0, p0}, Lorg/slf4j/ILoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p0

    return-object p0
.end method

.method private static isAmbiguousStaticLoggerBinderPathSet(Ljava/util/Set;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-le p0, v0, :cond_8

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private static isAndroid()Z
    .registers 2

    .line 1
    const-string v0, "java.vendor.url"

    .line 3
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->safeGetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "android"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method private static messageContainsOrgSlf4jImplStaticLoggerBinder(Ljava/lang/String;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const-string v1, "org/slf4j/impl/StaticLoggerBinder"

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_e

    .line 14
    return v2

    .line 15
    :cond_e
    const-string v1, "org.slf4j.impl.StaticLoggerBinder"

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_17

    .line 23
    return v2

    .line 24
    :cond_17
    return v0
.end method

.method private static nonMatchingClasses(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 7
    return p0
.end method

.method private static final performInitialization()V
    .registers 2

    .line 1
    invoke-static {}, Lorg/slf4j/LoggerFactory;->bind()V

    .line 4
    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_b

    .line 9
    invoke-static {}, Lorg/slf4j/LoggerFactory;->versionSanityCheck()V

    .line 12
    :cond_b
    return-void
.end method

.method private static replayEvents()V
    .registers 8

    .line 1
    sget-object v0, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 3
    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->getEventQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    .line 10
    move-result v1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    const/16 v3, 0x80

    .line 15
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_12
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_19

    .line 25
    return-void

    .line 26
    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v5

    .line 30
    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_35

    .line 36
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Lorg/slf4j/event/SubstituteLoggingEvent;

    .line 42
    invoke-static {v6}, Lorg/slf4j/LoggerFactory;->replaySingleEvent(Lorg/slf4j/event/SubstituteLoggingEvent;)V

    .line 45
    add-int/lit8 v7, v4, 0x1

    .line 47
    if-nez v4, :cond_33

    .line 49
    invoke-static {v6, v1}, Lorg/slf4j/LoggerFactory;->emitReplayOrSubstituionWarning(Lorg/slf4j/event/SubstituteLoggingEvent;I)V

    .line 52
    :cond_33
    move v4, v7

    .line 53
    goto :goto_1d

    .line 54
    :cond_35
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 57
    goto :goto_12
.end method

.method private static replaySingleEvent(Lorg/slf4j/event/SubstituteLoggingEvent;)V
    .registers 4

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Lorg/slf4j/event/SubstituteLoggingEvent;->getLogger()Lorg/slf4j/helpers/SubstituteLogger;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLogger;->getName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateNull()Z

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_26

    .line 18
    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateNOP()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_18

    .line 24
    goto :goto_25

    .line 25
    :cond_18
    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateEventAware()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_22

    .line 31
    invoke-virtual {v0, p0}, Lorg/slf4j/helpers/SubstituteLogger;->log(Lorg/slf4j/event/LoggingEvent;)V

    .line 34
    goto :goto_25

    .line 35
    :cond_22
    invoke-static {v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 38
    :goto_25
    return-void

    .line 39
    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    const-string v0, "Delegate logger cannot be null at this state."

    .line 43
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0
.end method

.method private static reportActualBinding(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_25

    .line 3
    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->isAmbiguousStaticLoggerBinderPathSet(Ljava/util/Set;)Z

    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_25

    .line 9
    const-string p0, "Actual binding is of type ["

    .line 11
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object p0

    .line 15
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactoryClassStr()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v0, "]"

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 38
    :cond_25
    return-void
.end method

.method private static reportMultipleBindingAmbiguity(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->isAmbiguousStaticLoggerBinderPathSet(Ljava/util/Set;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3a

    .line 7
    const-string v0, "Class path contains multiple SLF4J bindings."

    .line 9
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 16
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_35

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/net/URL;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v2, "Found binding in ["

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v0, "]"

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 53
    goto :goto_f

    .line 54
    :cond_35
    const-string p0, "See http://www.slf4j.org/codes.html#multiple_bindings for an explanation."

    .line 56
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 59
    :cond_3a
    return-void
.end method

.method public static reset()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 4
    return-void
.end method

.method private static final versionSanityCheck()V
    .registers 6

    .line 1
    :try_start_0
    sget-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->REQUESTED_API_VERSION:Ljava/lang/String;

    .line 3
    sget-object v1, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    :goto_7
    if-ge v3, v2, :cond_15

    .line 10
    aget-object v5, v1, v3

    .line 12
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_12

    .line 18
    const/4 v4, 0x1

    .line 19
    :cond_12
    add-int/lit8 v3, v3, 0x1

    .line 21
    goto :goto_7

    .line 22
    :cond_15
    if-nez v4, :cond_49

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    const-string v2, "The requested version "

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v0, " by your slf4j binding is not compatible with "

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    sget-object v0, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    .line 44
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 62
    const-string v0, "See http://www.slf4j.org/codes.html#version_mismatch for further details."

    .line 64
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_42} :catch_49
    .catchall {:try_start_0 .. :try_end_42} :catchall_43

    .line 67
    goto :goto_49

    .line 68
    :catchall_43
    move-exception v0

    .line 69
    const-string v1, "Unexpected problem occured during version sanity check"

    .line 71
    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :catch_49
    :cond_49
    :goto_49
    return-void
.end method
