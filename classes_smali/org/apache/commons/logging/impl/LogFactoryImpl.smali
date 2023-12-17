.class public Lorg/apache/commons/logging/impl/LogFactoryImpl;
.super Lorg/apache/commons/logging/LogFactory;
.source "LogFactoryImpl.java"


# static fields
.field public static final ALLOW_FLAWED_CONTEXT_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log.allowFlawedContext"

.field public static final ALLOW_FLAWED_DISCOVERY_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log.allowFlawedDiscovery"

.field public static final ALLOW_FLAWED_HIERARCHY_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log.allowFlawedHierarchy"

.field private static final LOGGING_IMPL_JDK14_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.Jdk14Logger"

.field private static final LOGGING_IMPL_LOG4J_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.Log4JLogger"

.field private static final LOGGING_IMPL_LUMBERJACK_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

.field private static final LOGGING_IMPL_SIMPLE_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.SimpleLog"

.field public static final LOG_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log"

.field public static final LOG_PROPERTY_OLD:Ljava/lang/String; = "org.apache.commons.logging.log"

.field private static final PKG_IMPL:Ljava/lang/String; = "org.apache.commons.logging.impl."

.field private static final PKG_LEN:I = 0x20

.field public static synthetic class$java$lang$String:Ljava/lang/Class;

.field public static synthetic class$org$apache$commons$logging$Log:Ljava/lang/Class;

.field public static synthetic class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

.field public static synthetic class$org$apache$commons$logging$impl$LogFactoryImpl:Ljava/lang/Class;

.field private static final classesToDiscover:[Ljava/lang/String;


# instance fields
.field private allowFlawedContext:Z

.field private allowFlawedDiscovery:Z

.field private allowFlawedHierarchy:Z

.field public attributes:Ljava/util/Hashtable;

.field private diagnosticPrefix:Ljava/lang/String;

.field public instances:Ljava/util/Hashtable;

.field private logClassName:Ljava/lang/String;

.field public logConstructor:Ljava/lang/reflect/Constructor;

.field public logConstructorSignature:[Ljava/lang/Class;

.field public logMethod:Ljava/lang/reflect/Method;

.field public logMethodSignature:[Ljava/lang/Class;

.field private useTCCL:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "org.apache.commons.logging.impl.Log4JLogger"

    .line 3
    const-string v1, "org.apache.commons.logging.impl.Jdk14Logger"

    .line 5
    const-string v2, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

    .line 7
    const-string v3, "org.apache.commons.logging.impl.SimpleLog"

    .line 9
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->classesToDiscover:[Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/logging/LogFactory;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->useTCCL:Z

    .line 7
    new-instance v1, Ljava/util/Hashtable;

    .line 9
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 12
    iput-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    .line 14
    new-instance v1, Ljava/util/Hashtable;

    .line 16
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 19
    iput-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    .line 24
    new-array v2, v0, [Ljava/lang/Class;

    .line 26
    sget-object v3, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$java$lang$String:Ljava/lang/Class;

    .line 28
    if-nez v3, :cond_25

    .line 30
    const-string v3, "java.lang.String"

    .line 32
    invoke-static {v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    move-result-object v3

    .line 36
    sput-object v3, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$java$lang$String:Ljava/lang/Class;

    .line 38
    :cond_25
    const/4 v4, 0x0

    .line 39
    aput-object v3, v2, v4

    .line 41
    iput-object v2, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructorSignature:[Ljava/lang/Class;

    .line 43
    iput-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    .line 45
    new-array v0, v0, [Ljava/lang/Class;

    .line 47
    sget-object v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 49
    if-nez v1, :cond_3a

    .line 51
    const-string v1, "org.apache.commons.logging.LogFactory"

    .line 53
    invoke-static {v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 56
    move-result-object v1

    .line 57
    sput-object v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 59
    :cond_3a
    aput-object v1, v0, v4

    .line 61
    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethodSignature:[Ljava/lang/Class;

    .line 63
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->initDiagnostics()V

    .line 66
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4c

    .line 72
    const-string v0, "Instance created."

    .line 74
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 77
    :cond_4c
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/ClassLoader;
    .registers 1

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->directGetContextClassLoader()Ljava/lang/ClassLoader;

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

.method private createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;
    .registers 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    const-string v3, ".class"

    .line 7
    const-string v4, ": "

    .line 9
    const-string v5, "The log adapter \'"

    .line 11
    const-string v6, ""

    .line 13
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 16
    move-result v0

    .line 17
    const-string v7, "\'"

    .line 19
    if-eqz v0, :cond_2b

    .line 21
    new-instance v0, Ljava/lang/StringBuffer;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 26
    const-string v8, "Attempting to instantiate \'"

    .line 28
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 44
    :cond_2b
    const/4 v8, 0x1

    .line 45
    new-array v9, v8, [Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    .line 48
    aput-object p2, v9, v0

    .line 50
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBaseClassLoader()Ljava/lang/ClassLoader;

    .line 53
    move-result-object v0

    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v11, 0x0

    .line 56
    move-object v12, v11

    .line 57
    move-object v11, v10

    .line 58
    move-object v10, v0

    .line 59
    :goto_3a
    new-instance v0, Ljava/lang/StringBuffer;

    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    const-string v13, "Trying to load \'"

    .line 66
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v13, "\' from classloader "

    .line 74
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-static {v10}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object v14

    .line 81
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 91
    :try_start_5a
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_d2

    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    const/16 v14, 0x2e

    .line 104
    const/16 v15, 0x2f

    .line 106
    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 109
    move-result-object v14

    .line 110
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    if-eqz v10, :cond_7e

    .line 122
    invoke-virtual {v10, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 125
    move-result-object v14

    .line 126
    goto :goto_91

    .line 127
    :cond_7e
    new-instance v14, Ljava/lang/StringBuffer;

    .line 129
    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 141
    move-result-object v14

    .line 142
    invoke-static {v14}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    .line 145
    move-result-object v14
    :try_end_91
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5a .. :try_end_91} :catch_1b7
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_5a .. :try_end_91} :catch_17e
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_5a .. :try_end_91} :catch_17c
    .catchall {:try_start_5a .. :try_end_91} :catchall_16f

    .line 146
    :goto_91
    const-string v15, "Class \'"

    .line 148
    if-nez v14, :cond_b5

    .line 150
    :try_start_95
    new-instance v14, Ljava/lang/StringBuffer;

    .line 152
    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v15, "\' ["

    .line 163
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v0, "] cannot be found."

    .line 171
    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 181
    goto :goto_d2

    .line 182
    :cond_b5
    new-instance v0, Ljava/lang/StringBuffer;

    .line 184
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    const-string v15, "\' was found at \'"

    .line 195
    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_d2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_95 .. :try_end_d2} :catch_1b7
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_95 .. :try_end_d2} :catch_17e
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_95 .. :try_end_d2} :catch_17c
    .catchall {:try_start_95 .. :try_end_d2} :catchall_16f

    .line 211
    :cond_d2
    :goto_d2
    :try_start_d2
    invoke-static {v2, v8, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 214
    move-result-object v0
    :try_end_d6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d2 .. :try_end_d6} :catch_d8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_d2 .. :try_end_d6} :catch_1b7
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_d2 .. :try_end_d6} :catch_17e
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_d2 .. :try_end_d6} :catch_17c
    .catchall {:try_start_d2 .. :try_end_d6} :catchall_16f

    .line 215
    :goto_d6
    move-object v14, v0

    .line 216
    goto :goto_11a

    .line 217
    :catch_d8
    move-exception v0

    .line 218
    move-object v14, v0

    .line 219
    :try_start_da
    new-instance v0, Ljava/lang/StringBuffer;

    .line 221
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 230
    move-result-object v14

    .line 231
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 237
    move-result-object v0

    .line 238
    new-instance v14, Ljava/lang/StringBuffer;

    .line 240
    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 243
    invoke-virtual {v14, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    const-string v15, "\' is not available via classloader "

    .line 251
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    invoke-static {v10}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 257
    move-result-object v15

    .line 258
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {v14, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_115
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_da .. :try_end_115} :catch_1b7
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_da .. :try_end_115} :catch_17e
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_da .. :try_end_115} :catch_17c
    .catchall {:try_start_da .. :try_end_115} :catchall_16f

    .line 278
    :try_start_115
    invoke-static/range {p1 .. p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 281
    move-result-object v0
    :try_end_119
    .catch Ljava/lang/ClassNotFoundException; {:try_start_115 .. :try_end_119} :catch_13a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_115 .. :try_end_119} :catch_1b7
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_115 .. :try_end_119} :catch_17e
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_115 .. :try_end_119} :catch_17c
    .catchall {:try_start_115 .. :try_end_119} :catchall_16f

    .line 282
    goto :goto_d6

    .line 283
    :goto_11a
    :try_start_11a
    iget-object v0, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructorSignature:[Ljava/lang/Class;

    .line 285
    invoke-virtual {v14, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 288
    move-result-object v11

    .line 289
    invoke-virtual {v11, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    move-result-object v0

    .line 293
    instance-of v15, v0, Lorg/apache/commons/logging/Log;
    :try_end_126
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_11a .. :try_end_126} :catch_1b7
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_11a .. :try_end_126} :catch_17e
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_11a .. :try_end_126} :catch_17c
    .catchall {:try_start_11a .. :try_end_126} :catchall_16f

    .line 295
    if-eqz v15, :cond_136

    .line 297
    :try_start_128
    check-cast v0, Lorg/apache/commons/logging/Log;
    :try_end_12a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_128 .. :try_end_12a} :catch_132
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_128 .. :try_end_12a} :catch_12f
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_128 .. :try_end_12a} :catch_17c
    .catchall {:try_start_128 .. :try_end_12a} :catchall_12c

    .line 299
    goto/16 :goto_1f1

    .line 301
    :catchall_12c
    move-exception v0

    .line 302
    move-object v12, v14

    .line 303
    goto :goto_170

    .line 304
    :catch_12f
    move-exception v0

    .line 305
    move-object v12, v14

    .line 306
    goto :goto_17f

    .line 307
    :catch_132
    move-exception v0

    .line 308
    move-object v12, v14

    .line 309
    goto/16 :goto_1b8

    .line 311
    :cond_136
    :try_start_136
    invoke-direct {v1, v10, v14}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->handleFlawedHierarchy(Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 314
    goto :goto_173

    .line 315
    :catch_13a
    move-exception v0

    .line 316
    move-object v14, v0

    .line 317
    new-instance v0, Ljava/lang/StringBuffer;

    .line 319
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 322
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 328
    move-result-object v14

    .line 329
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 335
    move-result-object v0

    .line 336
    new-instance v14, Ljava/lang/StringBuffer;

    .line 338
    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 341
    invoke-virtual {v14, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    const-string v15, "\' is not available via the LogFactoryImpl class classloader: "

    .line 349
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_16d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_136 .. :try_end_16d} :catch_1b7
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_136 .. :try_end_16d} :catch_17e
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_136 .. :try_end_16d} :catch_17c
    .catchall {:try_start_136 .. :try_end_16d} :catchall_16f

    .line 366
    goto/16 :goto_1ef

    .line 368
    :catchall_16f
    move-exception v0

    .line 369
    :goto_170
    invoke-direct {v1, v2, v10, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->handleFlawedDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Throwable;)V

    .line 372
    :goto_173
    if-nez v10, :cond_176

    .line 374
    goto :goto_1ef

    .line 375
    :cond_176
    invoke-direct {v1, v10}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    .line 378
    move-result-object v10

    .line 379
    goto/16 :goto_3a

    .line 381
    :catch_17c
    move-exception v0

    .line 382
    throw v0

    .line 383
    :catch_17e
    move-exception v0

    .line 384
    :goto_17f
    invoke-static {v6}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    move-result-object v3

    .line 388
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 398
    move-result-object v0

    .line 399
    new-instance v3, Ljava/lang/StringBuffer;

    .line 401
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 404
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    const-string v5, "\' is unable to initialize itself when loaded via classloader "

    .line 412
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    invoke-static {v10}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 418
    move-result-object v5

    .line 419
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 428
    move-result-object v0

    .line 429
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 435
    move-result-object v0

    .line 436
    invoke-virtual {v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 439
    goto :goto_1ef

    .line 440
    :catch_1b7
    move-exception v0

    .line 441
    :goto_1b8
    invoke-static {v6}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    move-result-object v3

    .line 445
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 455
    move-result-object v0

    .line 456
    new-instance v3, Ljava/lang/StringBuffer;

    .line 458
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 461
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    const-string v5, "\' is missing dependencies when loaded via classloader "

    .line 469
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    invoke-static {v10}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 475
    move-result-object v5

    .line 476
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 485
    move-result-object v0

    .line 486
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 492
    move-result-object v0

    .line 493
    invoke-virtual {v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 496
    :goto_1ef
    const/4 v0, 0x0

    .line 497
    move-object v14, v12

    .line 498
    :goto_1f1
    if-eqz v0, :cond_26d

    .line 500
    if-eqz p3, :cond_26d

    .line 502
    iput-object v2, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logClassName:Ljava/lang/String;

    .line 504
    iput-object v11, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    .line 506
    :try_start_1f9
    const-string v3, "setLogFactory"

    .line 508
    iget-object v4, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethodSignature:[Ljava/lang/Class;

    .line 510
    invoke-virtual {v14, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 513
    move-result-object v3

    .line 514
    iput-object v3, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    .line 516
    new-instance v3, Ljava/lang/StringBuffer;

    .line 518
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 521
    const-string v4, "Found method setLogFactory(LogFactory) in \'"

    .line 523
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 535
    move-result-object v3

    .line 536
    invoke-virtual {v1, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_21a
    .catchall {:try_start_1f9 .. :try_end_21a} :catchall_21b

    .line 539
    goto :goto_246

    .line 540
    :catchall_21b
    const/4 v3, 0x0

    .line 541
    iput-object v3, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    .line 543
    new-instance v3, Ljava/lang/StringBuffer;

    .line 545
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 548
    const-string v4, "[INFO] \'"

    .line 550
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    invoke-static {v10}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 562
    move-result-object v4

    .line 563
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    const-string v4, " does not declare optional method "

    .line 568
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    const-string v4, "setLogFactory(LogFactory)"

    .line 573
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 576
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 579
    move-result-object v3

    .line 580
    invoke-virtual {v1, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 583
    :goto_246
    new-instance v3, Ljava/lang/StringBuffer;

    .line 585
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 588
    const-string v4, "Log adapter \'"

    .line 590
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 602
    move-result-object v2

    .line 603
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 606
    move-result-object v2

    .line 607
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    const-string v2, " has been selected for use."

    .line 612
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 618
    move-result-object v2

    .line 619
    invoke-virtual {v1, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 622
    :cond_26d
    return-object v0
.end method

.method private discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 7

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    const-string v0, "Discovering a Log implementation..."

    .line 9
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 12
    :cond_b
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->initConfiguration()V

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->findUserSpecifiedLogClassName()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v1, :cond_69

    .line 23
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_35

    .line 29
    new-instance v0, Ljava/lang/StringBuffer;

    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 34
    const-string v3, "Attempting to load user-specified log class \'"

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    const-string v3, "\'..."

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 54
    :cond_35
    invoke-direct {p0, v1, p1, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;

    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_3c

    .line 60
    return-object p1

    .line 61
    :cond_3c
    new-instance p1, Ljava/lang/StringBuffer;

    .line 63
    const-string v0, "User-specified log class \'"

    .line 65
    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v0, "\' cannot be found or is not useable."

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v0, "org.apache.commons.logging.impl.Log4JLogger"

    .line 78
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "org.apache.commons.logging.impl.Jdk14Logger"

    .line 83
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

    .line 88
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "org.apache.commons.logging.impl.SimpleLog"

    .line 93
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lorg/apache/commons/logging/LogConfigurationException;

    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    invoke-direct {v0, p1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    .line 105
    throw v0

    .line 106
    :cond_69
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_74

    .line 112
    const-string v1, "No user-specified Log implementation; performing discovery using the standard supported logging implementations..."

    .line 114
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 117
    :cond_74
    const/4 v1, 0x0

    .line 118
    :goto_75
    sget-object v3, Lorg/apache/commons/logging/impl/LogFactoryImpl;->classesToDiscover:[Ljava/lang/String;

    .line 120
    array-length v4, v3

    .line 121
    if-ge v1, v4, :cond_85

    .line 123
    if-nez v0, :cond_85

    .line 125
    aget-object v0, v3, v1

    .line 127
    invoke-direct {p0, v0, p1, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;

    .line 130
    move-result-object v0

    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 133
    goto :goto_75

    .line 134
    :cond_85
    if-eqz v0, :cond_88

    .line 136
    return-object v0

    .line 137
    :cond_88
    new-instance p1, Lorg/apache/commons/logging/LogConfigurationException;

    .line 139
    const-string v0, "No suitable Log implementation"

    .line 141
    invoke-direct {p1, v0}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    .line 144
    throw p1
.end method

.method private findUserSpecifiedLogClassName()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    const-string v0, "Trying to get log class from attribute \'org.apache.commons.logging.Log\'"

    .line 9
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 12
    :cond_b
    const-string v0, "org.apache.commons.logging.Log"

    .line 14
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;

    .line 20
    const-string v2, "org.apache.commons.logging.log"

    .line 22
    if-nez v1, :cond_28

    .line 24
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_22

    .line 30
    const-string v1, "Trying to get log class from attribute \'org.apache.commons.logging.log\'"

    .line 32
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 35
    :cond_22
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/String;

    .line 41
    :cond_28
    const/4 v3, 0x0

    .line 42
    if-nez v1, :cond_56

    .line 44
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_36

    .line 50
    const-string v4, "Trying to get log class from system property \'org.apache.commons.logging.Log\'"

    .line 52
    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 55
    :cond_36
    :try_start_36
    invoke-static {v0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v1
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_3a} :catch_3b

    .line 59
    goto :goto_56

    .line 60
    :catch_3b
    move-exception v0

    .line 61
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_56

    .line 67
    const-string v4, "No access allowed to system property \'org.apache.commons.logging.Log\' - "

    .line 69
    invoke-static {v4}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 87
    :cond_56
    :goto_56
    if-nez v1, :cond_83

    .line 89
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_63

    .line 95
    const-string v0, "Trying to get log class from system property \'org.apache.commons.logging.log\'"

    .line 97
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 100
    :cond_63
    :try_start_63
    invoke-static {v2, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object v1
    :try_end_67
    .catch Ljava/lang/SecurityException; {:try_start_63 .. :try_end_67} :catch_68

    .line 104
    goto :goto_83

    .line 105
    :catch_68
    move-exception v0

    .line 106
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_83

    .line 112
    const-string v2, "No access allowed to system property \'org.apache.commons.logging.log\' - "

    .line 114
    invoke-static {v2}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 132
    :cond_83
    :goto_83
    if-eqz v1, :cond_89

    .line 134
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 137
    move-result-object v1

    .line 138
    :cond_89
    return-object v1
.end method

.method private getBaseClassLoader()Ljava/lang/ClassLoader;
    .registers 4

    .line 1
    sget-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$impl$LogFactoryImpl:Ljava/lang/Class;

    .line 3
    if-nez v0, :cond_c

    .line 5
    const-string v0, "org.apache.commons.logging.impl.LogFactoryImpl"

    .line 7
    invoke-static {v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$impl$LogFactoryImpl:Ljava/lang/Class;

    .line 13
    :cond_c
    invoke-static {v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 16
    move-result-object v0

    .line 17
    iget-boolean v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->useTCCL:Z

    .line 19
    if-nez v1, :cond_15

    .line 21
    return-object v0

    .line 22
    :cond_15
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getContextClassLoaderInternal()Ljava/lang/ClassLoader;

    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getLowestClassLoader(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    .line 29
    move-result-object v0

    .line 30
    const-string v2, "Bad classloader hierarchy; LogFactoryImpl was loaded via a classloader that is not related to the current context classloader."

    .line 32
    if-nez v0, :cond_37

    .line 34
    iget-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedContext:Z

    .line 36
    if-eqz v0, :cond_31

    .line 38
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_30

    .line 44
    const-string v0, "[WARNING] the context classloader is not part of a parent-child relationship with the classloader that loaded LogFactoryImpl."

    .line 46
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 49
    :cond_30
    return-object v1

    .line 50
    :cond_31
    new-instance v0, Lorg/apache/commons/logging/LogConfigurationException;

    .line 52
    invoke-direct {v0, v2}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v0

    .line 56
    :cond_37
    if-eq v0, v1, :cond_4f

    .line 58
    iget-boolean v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedContext:Z

    .line 60
    if-eqz v1, :cond_49

    .line 62
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4f

    .line 68
    const-string v1, "Warning: the context classloader is an ancestor of the classloader that loaded LogFactoryImpl; it should be the same or a descendant. The application using commons-logging should ensure the context classloader is used correctly."

    .line 70
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 73
    goto :goto_4f

    .line 74
    :cond_49
    new-instance v0, Lorg/apache/commons/logging/LogConfigurationException;

    .line 76
    invoke-direct {v0, v2}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    .line 79
    throw v0

    .line 80
    :cond_4f
    :goto_4f
    return-object v0
.end method

.method private getBooleanConfiguration(Ljava/lang/String;Z)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getConfigurationValue(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return p2

    .line 8
    :cond_7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getConfigurationValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    const-string v1, "[ENV] Trying to get configuration for item "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 27
    :cond_1a
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "] for "

    .line 33
    if-eqz v0, :cond_47

    .line 35
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_42

    .line 41
    new-instance v2, Ljava/lang/StringBuffer;

    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    const-string v3, "[ENV] Found LogFactory attribute ["

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 67
    :cond_42
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_47
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_61

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    const-string v2, "[ENV] No LogFactory attribute found for "

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 98
    :cond_61
    const/4 v0, 0x0

    .line 99
    :try_start_62
    invoke-static {p1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    if-eqz v2, :cond_89

    .line 105
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_88

    .line 111
    new-instance v3, Ljava/lang/StringBuffer;

    .line 113
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    const-string v4, "[ENV] Found system property ["

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 137
    :cond_88
    return-object v2

    .line 138
    :cond_89
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_be

    .line 144
    new-instance v1, Ljava/lang/StringBuffer;

    .line 146
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    const-string v2, "[ENV] No system property found for property "

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/SecurityException; {:try_start_62 .. :try_end_a3} :catch_a4

    .line 164
    goto :goto_be

    .line 165
    :catch_a4
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_be

    .line 171
    new-instance v1, Ljava/lang/StringBuffer;

    .line 173
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 176
    const-string v2, "[ENV] Security prevented reading system property "

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 191
    :cond_be
    :goto_be
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_d8

    .line 197
    new-instance v1, Ljava/lang/StringBuffer;

    .line 199
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 202
    const-string v2, "[ENV] No configuration defined for item "

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 217
    :cond_d8
    return-object v0
.end method

.method public static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static getContextClassLoaderInternal()Ljava/lang/ClassLoader;
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/logging/impl/LogFactoryImpl$1;

    .line 3
    invoke-direct {v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl$1;-><init>()V

    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/ClassLoader;

    .line 12
    return-object v0
.end method

.method private getLowestClassLoader(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-object p2

    .line 4
    :cond_3
    if-nez p2, :cond_6

    .line 6
    return-object p1

    .line 7
    :cond_6
    move-object v0, p1

    .line 8
    :goto_7
    if-eqz v0, :cond_11

    .line 10
    if-ne v0, p2, :cond_c

    .line 12
    return-object p1

    .line 13
    :cond_c
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_7

    .line 18
    :cond_11
    move-object v0, p2

    .line 19
    :goto_12
    if-eqz v0, :cond_1c

    .line 21
    if-ne v0, p1, :cond_17

    .line 23
    return-object p2

    .line 24
    :cond_17
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_12

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method private getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/commons/logging/impl/LogFactoryImpl$3;

    .line 3
    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl$3;-><init>(Lorg/apache/commons/logging/impl/LogFactoryImpl;Ljava/lang/ClassLoader;)V

    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/ClassLoader;
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_b} :catch_c

    .line 12
    return-object p1

    .line 13
    :catch_c
    const-string p1, "[SECURITY] Unable to obtain parent classloader"

    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method private static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/logging/impl/LogFactoryImpl$2;

    .line 3
    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/String;

    .line 12
    return-object p0
.end method

.method private handleFlawedDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_93

    .line 7
    new-instance p2, Ljava/lang/StringBuffer;

    .line 9
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    const-string v0, "Could not instantiate Log \'"

    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    const-string p1, "\' -- "

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    const-string p1, ": "

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p0, p2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 55
    instance-of p2, p3, Ljava/lang/reflect/InvocationTargetException;

    .line 57
    if-eqz p2, :cond_93

    .line 59
    move-object p2, p3

    .line 60
    check-cast p2, Ljava/lang/reflect/InvocationTargetException;

    .line 62
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 65
    move-result-object p2

    .line 66
    if-eqz p2, :cond_93

    .line 68
    const-string v0, "... InvocationTargetException: "

    .line 70
    invoke-static {v0}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 102
    instance-of v0, p2, Ljava/lang/ExceptionInInitializerError;

    .line 104
    if-eqz v0, :cond_93

    .line 106
    check-cast p2, Ljava/lang/ExceptionInInitializerError;

    .line 108
    invoke-virtual {p2}, Ljava/lang/ExceptionInInitializerError;->getException()Ljava/lang/Throwable;

    .line 111
    move-result-object p2

    .line 112
    if-eqz p2, :cond_93

    .line 114
    const-string v0, "... ExceptionInInitializerError: "

    .line 116
    invoke-static {v0}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 148
    :cond_93
    iget-boolean p1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedDiscovery:Z

    .line 150
    if-eqz p1, :cond_98

    .line 152
    return-void

    .line 153
    :cond_98
    new-instance p1, Lorg/apache/commons/logging/LogConfigurationException;

    .line 155
    invoke-direct {p1, p3}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    .line 158
    throw p1
.end method

.method private handleFlawedHierarchy(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .registers 9

    .line 1
    sget-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    .line 3
    const-string v1, "org.apache.commons.logging.Log"

    .line 5
    if-nez v0, :cond_c

    .line 7
    invoke-static {v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    .line 13
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    :goto_16
    array-length v5, v2

    .line 24
    if-ge v4, v5, :cond_2a

    .line 26
    aget-object v5, v2, v4

    .line 28
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_27

    .line 38
    const/4 v3, 0x1

    .line 39
    goto :goto_2a

    .line 40
    :cond_27
    add-int/lit8 v4, v4, 0x1

    .line 42
    goto :goto_16

    .line 43
    :cond_2a
    :goto_2a
    if-eqz v3, :cond_103

    .line 45
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_8f

    .line 51
    :try_start_32
    sget-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    .line 53
    if-nez v0, :cond_3c

    .line 55
    invoke-static {v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    .line 61
    :cond_3c
    invoke-static {v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 64
    move-result-object v0

    .line 65
    new-instance v2, Ljava/lang/StringBuffer;

    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    const-string v3, "Class \'"

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v3, "\' was found in classloader "

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string p1, ". It is bound to a Log interface which is not"

    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string p1, " the one loaded from classloader "

    .line 101
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_32 .. :try_end_75} :catchall_76

    .line 118
    goto :goto_8f

    .line 119
    :catchall_76
    new-instance p1, Ljava/lang/StringBuffer;

    .line 121
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    const-string v0, "Error while trying to output diagnostics about bad class \'"

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 132
    const-string p2, "\'"

    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 144
    :cond_8f
    :goto_8f
    iget-boolean p1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedHierarchy:Z

    .line 146
    const-string p2, "\' visible."

    .line 148
    const-string v0, "You have more than one version of \'"

    .line 150
    if-nez p1, :cond_d4

    .line 152
    new-instance p1, Ljava/lang/StringBuffer;

    .line 154
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    const-string v2, "Terminating logging for this context "

    .line 159
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string v2, "due to bad log hierarchy. "

    .line 164
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    sget-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    .line 172
    if-nez v0, :cond_b3

    .line 174
    invoke-static {v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 177
    move-result-object v0

    .line 178
    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    .line 180
    :cond_b3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 193
    move-result p2

    .line 194
    if-eqz p2, :cond_ca

    .line 196
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {p0, p2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 203
    :cond_ca
    new-instance p2, Lorg/apache/commons/logging/LogConfigurationException;

    .line 205
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 208
    move-result-object p1

    .line 209
    invoke-direct {p2, p1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    .line 212
    throw p2

    .line 213
    :cond_d4
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 216
    move-result p1

    .line 217
    if-eqz p1, :cond_156

    .line 219
    new-instance p1, Ljava/lang/StringBuffer;

    .line 221
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    const-string v2, "Warning: bad log hierarchy. "

    .line 226
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    sget-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    .line 234
    if-nez v0, :cond_f1

    .line 236
    invoke-static {v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 239
    move-result-object v0

    .line 240
    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    .line 242
    :cond_f1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 259
    goto :goto_156

    .line 260
    :cond_103
    iget-boolean p1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedDiscovery:Z

    .line 262
    const-string v0, "\' does not implement the Log interface."

    .line 264
    if-nez p1, :cond_139

    .line 266
    new-instance p1, Ljava/lang/StringBuffer;

    .line 268
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    const-string v1, "Terminating logging for this context. "

    .line 273
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    const-string v1, "Log class \'"

    .line 278
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 284
    move-result-object p2

    .line 285
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 294
    move-result p2

    .line 295
    if-eqz p2, :cond_12f

    .line 297
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 300
    move-result-object p2

    .line 301
    invoke-virtual {p0, p2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 304
    :cond_12f
    new-instance p2, Lorg/apache/commons/logging/LogConfigurationException;

    .line 306
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 309
    move-result-object p1

    .line 310
    invoke-direct {p2, p1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    .line 313
    throw p2

    .line 314
    :cond_139
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 317
    move-result p1

    .line 318
    if-eqz p1, :cond_156

    .line 320
    const-string p1, "[WARNING] Log class \'"

    .line 322
    invoke-static {p1}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    move-result-object p1

    .line 326
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 329
    move-result-object p2

    .line 330
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 339
    move-result-object p1

    .line 340
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 343
    :cond_156
    :goto_156
    return-void
.end method

.method private informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    sget v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->PKG_LEN:I

    .line 13
    add-int/lit8 v6, v0, 0x5

    .line 15
    move-object v1, p2

    .line 16
    move-object v4, p3

    .line 17
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_23

    .line 23
    const-string p2, " Did you mean \'"

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    const-string p2, "\'?"

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    :cond_23
    return-void
.end method

.method private initConfiguration()V
    .registers 3

    .line 1
    const-string v0, "org.apache.commons.logging.Log.allowFlawedContext"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBooleanConfiguration(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedContext:Z

    .line 10
    const-string v0, "org.apache.commons.logging.Log.allowFlawedDiscovery"

    .line 12
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBooleanConfiguration(Ljava/lang/String;Z)Z

    .line 15
    move-result v0

    .line 16
    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedDiscovery:Z

    .line 18
    const-string v0, "org.apache.commons.logging.Log.allowFlawedHierarchy"

    .line 20
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBooleanConfiguration(Ljava/lang/String;Z)Z

    .line 23
    move-result v0

    .line 24
    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedHierarchy:Z

    .line 26
    return-void
.end method

.method private initDiagnostics()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_d

    .line 11
    :try_start_a
    const-string v0, "BOOTLOADER"

    .line 13
    goto :goto_14

    .line 14
    :cond_d
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object v0
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_11} :catch_12

    .line 18
    goto :goto_14

    .line 19
    :catch_12
    const-string v0, "UNKNOWN"

    .line 21
    :goto_14
    const-string v1, "[LogFactoryImpl@"

    .line 23
    invoke-static {v1}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 34
    const-string v2, " from "

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    const-string v0, "] "

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->diagnosticPrefix:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static isDiagnosticsEnabled()Z
    .registers 1

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "\'."

    .line 7
    if-eqz v0, :cond_1f

    .line 9
    new-instance v0, Ljava/lang/StringBuffer;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 14
    const-string v2, "Checking for \'"

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 32
    :cond_1f
    const/4 v0, 0x0

    .line 33
    :try_start_20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-direct {p0, p2, v2, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;

    .line 44
    move-result-object p2

    .line 45
    if-nez p2, :cond_4c

    .line 47
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_4b

    .line 53
    new-instance p2, Ljava/lang/StringBuffer;

    .line 55
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    const-string v2, "Did not find \'"

    .line 60
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p0, p2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 76
    :cond_4b
    return v0

    .line 77
    :cond_4c
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_69

    .line 83
    new-instance p2, Ljava/lang/StringBuffer;

    .line 85
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    const-string v2, "Found \'"

    .line 90
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p0, p2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_69
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_20 .. :try_end_69} :catch_6b

    .line 106
    :cond_69
    const/4 p1, 0x1

    .line 107
    return p1

    .line 108
    :catch_6b
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 111
    move-result p2

    .line 112
    if-eqz p2, :cond_8a

    .line 114
    new-instance p2, Ljava/lang/StringBuffer;

    .line 116
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    const-string v1, "Logging system \'"

    .line 121
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string p1, "\' is available but not useable."

    .line 129
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 139
    :cond_8a
    return v0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    .line 8
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    .line 11
    move-result-object v1

    .line 12
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1b

    .line 18
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 27
    goto :goto_b

    .line 28
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 31
    move-result v1

    .line 32
    new-array v2, v1, [Ljava/lang/String;

    .line 34
    const/4 v3, 0x0

    .line 35
    :goto_22
    if-ge v3, v1, :cond_2f

    .line 37
    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/lang/String;

    .line 43
    aput-object v4, v2, v3

    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_22

    .line 48
    :cond_2f
    return-object v2
.end method

.method public getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    return-object p1
.end method

.method public getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 4

    .line 2
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/Log;

    if-nez v0, :cond_13

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->newInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-object v0
.end method

.method public getLogClassName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logClassName:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_f

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 16
    :cond_f
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logClassName:Ljava/lang/String;

    .line 18
    return-object v0
.end method

.method public getLogConstructor()Ljava/lang/reflect/Constructor;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    .line 3
    if-nez v0, :cond_f

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 16
    :cond_f
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    .line 18
    return-object v0
.end method

.method public isJdk13LumberjackAvailable()Z
    .registers 3

    .line 1
    const-string v0, "Jdk13Lumberjack"

    .line 3
    const-string v1, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

    .line 5
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isJdk14Available()Z
    .registers 3

    .line 1
    const-string v0, "Jdk14"

    .line 3
    const-string v1, "org.apache.commons.logging.impl.Jdk14Logger"

    .line 5
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isLog4JAvailable()Z
    .registers 3

    .line 1
    const-string v0, "Log4J"

    .line 3
    const-string v1, "org.apache.commons.logging.impl.Log4JLogger"

    .line 5
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public logDiagnostic(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->diagnosticPrefix:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->logRawDiagnostic(Ljava/lang/String;)V

    .line 27
    :cond_1a
    return-void
.end method

.method public newInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_b

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_15

    .line 12
    :cond_b
    new-array v3, v2, [Ljava/lang/Object;

    .line 14
    aput-object p1, v3, v1

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lorg/apache/commons/logging/Log;

    .line 22
    :goto_15
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    .line 24
    if-eqz v0, :cond_20

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    aput-object p0, v2, v1

    .line 30
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_0 .. :try_end_20} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_20} :catch_28
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    .line 33
    :cond_20
    return-object p1

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    new-instance v0, Lorg/apache/commons/logging/LogConfigurationException;

    .line 37
    invoke-direct {v0, p1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    throw v0

    .line 41
    :catch_28
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_35

    .line 48
    new-instance p1, Lorg/apache/commons/logging/LogConfigurationException;

    .line 50
    invoke-direct {p1, v0}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    .line 53
    throw p1

    .line 54
    :cond_35
    new-instance v0, Lorg/apache/commons/logging/LogConfigurationException;

    .line 56
    invoke-direct {v0, p1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    .line 59
    throw v0

    .line 60
    :catch_3b
    move-exception p1

    .line 61
    throw p1
.end method

.method public release()V
    .registers 2

    .line 1
    const-string v0, "Releasing all known loggers"

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    .line 8
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 11
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    const-string v0, "setAttribute: call too late; configuration already performed."

    .line 7
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 10
    :cond_9
    if-nez p2, :cond_11

    .line 12
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    goto :goto_16

    .line 18
    :cond_11
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    .line 20
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :goto_16
    const-string v0, "use_tccl"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2c

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    move-result p1

    .line 43
    iput-boolean p1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->useTCCL:Z

    .line 45
    :cond_2c
    return-void
.end method
