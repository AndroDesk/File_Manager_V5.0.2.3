.class public abstract Lorg/apache/commons/logging/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# static fields
.field public static final DIAGNOSTICS_DEST_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.diagnostics.dest"

.field public static final FACTORY_DEFAULT:Ljava/lang/String; = "org.apache.commons.logging.impl.LogFactoryImpl"

.field public static final FACTORY_PROPERTIES:Ljava/lang/String; = "commons-logging.properties"

.field public static final FACTORY_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.LogFactory"

.field public static final HASHTABLE_IMPLEMENTATION_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.LogFactory.HashtableImpl"

.field public static final PRIORITY_KEY:Ljava/lang/String; = "priority"

.field public static final SERVICE_ID:Ljava/lang/String; = "META-INF/services/org.apache.commons.logging.LogFactory"

.field public static final TCCL_KEY:Ljava/lang/String; = "use_tccl"

.field private static final WEAK_HASHTABLE_CLASSNAME:Ljava/lang/String; = "org.apache.commons.logging.impl.WeakHashtable"

.field public static synthetic class$java$lang$Thread:Ljava/lang/Class;

.field public static synthetic class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

.field private static diagnosticPrefix:Ljava/lang/String;

.field private static diagnosticsStream:Ljava/io/PrintStream;

.field public static factories:Ljava/util/Hashtable;

.field public static nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

.field private static thisClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 3
    const-string v1, "org.apache.commons.logging.LogFactory"

    .line 5
    if-nez v0, :cond_c

    .line 7
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 13
    :cond_c
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 19
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->initDiagnostics()V

    .line 22
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 24
    if-nez v0, :cond_1f

    .line 26
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 32
    :cond_1f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logClassLoaderEnvironment(Ljava/lang/Class;)V

    .line 35
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->createFactoryStore()Ljava/util/Hashtable;

    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 41
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_33

    .line 47
    const-string v0, "BOOTSTRAP COMPLETED"

    .line 49
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 52
    :cond_33
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private static cacheFactory(Ljava/lang/ClassLoader;Lorg/apache/commons/logging/LogFactory;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_c

    .line 3
    if-nez p0, :cond_7

    .line 5
    sput-object p1, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    .line 7
    goto :goto_c

    .line 8
    :cond_7
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 10
    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_c
    :goto_c
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static createFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 7

    .line 1
    const-string v0, "org.apache.commons.logging.LogFactory"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_192

    .line 6
    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 12
    if-nez v2, :cond_13

    .line 14
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    move-result-object v2

    .line 18
    sput-object v2, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 20
    :cond_13
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_44

    .line 26
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_92

    .line 32
    new-instance v2, Ljava/lang/StringBuffer;

    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    const-string v3, "Loaded class "

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    const-string v3, " from classloader "

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 68
    goto :goto_92

    .line 69
    :cond_44
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_92

    .line 75
    new-instance v2, Ljava/lang/StringBuffer;

    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    const-string v3, "Factory class "

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v3, " loaded from classloader "

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 100
    move-result-object v3

    .line 101
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v3, " does not extend \'"

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    sget-object v3, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 115
    if-nez v3, :cond_7a

    .line 117
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 120
    move-result-object v3

    .line 121
    sput-object v3, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 123
    :cond_7a
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v3, "\' as loaded by this classloader."

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 138
    move-result-object v2

    .line 139
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 142
    const-string v2, "[BAD CL TREE] "

    .line 144
    invoke-static {v2, p1}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 147
    :cond_92
    :goto_92
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Lorg/apache/commons/logging/LogFactory;
    :try_end_98
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_98} :catch_166
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_98} :catch_12b
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_98} :catch_99
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_98} :catch_1c0

    .line 153
    return-object v2

    .line 154
    :catch_99
    :try_start_99
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 156
    if-ne p1, v2, :cond_192

    .line 158
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->implementsLogFactory(Ljava/lang/Class;)Z

    .line 161
    move-result p1

    .line 162
    new-instance v2, Ljava/lang/StringBuffer;

    .line 164
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    const-string v3, "The application has specified that a custom LogFactory implementation should be used but Class \'"

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string p0, "\' cannot be converted to \'"

    .line 177
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    sget-object p0, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 182
    if-nez p0, :cond_bd

    .line 184
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 187
    move-result-object p0

    .line 188
    sput-object p0, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 190
    :cond_bd
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const-string p0, "\'. "

    .line 199
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 205
    move-result-object p0

    .line 206
    if-eqz p1, :cond_fa

    .line 208
    new-instance p1, Ljava/lang/StringBuffer;

    .line 210
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 213
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    const-string p0, "The conflict is caused by the presence of multiple LogFactory classes in incompatible classloaders. "

    .line 218
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string p0, "Background can be found in http://commons.apache.org/logging/tech.html. "

    .line 223
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    const-string p0, "If you have not explicitly specified a custom LogFactory then it is likely that "

    .line 228
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string p0, "the container has set one without your knowledge. "

    .line 233
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    const-string p0, "In this case, consider using the commons-logging-adapters.jar file or "

    .line 238
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    const-string p0, "specifying the standard LogFactory from the command line. "

    .line 243
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 249
    move-result-object p0

    .line 250
    goto :goto_10b

    .line 251
    :cond_fa
    new-instance p1, Ljava/lang/StringBuffer;

    .line 253
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 256
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    const-string p0, "Please check the custom implementation. "

    .line 261
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 267
    move-result-object p0

    .line 268
    :goto_10b
    new-instance p1, Ljava/lang/StringBuffer;

    .line 270
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 273
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    const-string p0, "Help can be found @http://commons.apache.org/logging/troubleshooting.html."

    .line 278
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 284
    move-result-object p0

    .line 285
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 288
    move-result p1

    .line 289
    if-eqz p1, :cond_125

    .line 291
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 294
    :cond_125
    new-instance p1, Ljava/lang/ClassCastException;

    .line 296
    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 299
    throw p1

    .line 300
    :catch_12b
    move-exception v2

    .line 301
    sget-object v3, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 303
    if-ne p1, v3, :cond_192

    .line 305
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_165

    .line 311
    new-instance v3, Ljava/lang/StringBuffer;

    .line 313
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 316
    const-string v4, "Class \'"

    .line 318
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const-string p0, "\' cannot be loaded"

    .line 326
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    const-string p0, " via classloader "

    .line 331
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 337
    move-result-object p0

    .line 338
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    const-string p0, " - it depends on some other class that cannot"

    .line 343
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    const-string p0, " be found."

    .line 348
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 354
    move-result-object p0

    .line 355
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 358
    :cond_165
    throw v2

    .line 359
    :catch_166
    move-exception v2

    .line 360
    sget-object v3, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 362
    if-ne p1, v3, :cond_192

    .line 364
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 367
    move-result v3

    .line 368
    if-eqz v3, :cond_191

    .line 370
    new-instance v3, Ljava/lang/StringBuffer;

    .line 372
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 375
    const-string v4, "Unable to locate any class called \'"

    .line 377
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    const-string p0, "\' via classloader "

    .line 385
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 391
    move-result-object p0

    .line 392
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 398
    move-result-object p0

    .line 399
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 402
    :cond_191
    throw v2

    .line 403
    :cond_192
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 406
    move-result v2

    .line 407
    if-eqz v2, :cond_1b5

    .line 409
    new-instance v2, Ljava/lang/StringBuffer;

    .line 411
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 414
    const-string v3, "Unable to load factory class via classloader "

    .line 416
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 422
    move-result-object p1

    .line 423
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    const-string p1, " - trying the classloader associated with this LogFactory."

    .line 428
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 434
    move-result-object p1

    .line 435
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 438
    :cond_1b5
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 441
    move-result-object v1

    .line 442
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 445
    move-result-object p0

    .line 446
    check-cast p0, Lorg/apache/commons/logging/LogFactory;
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_1bf} :catch_1c0

    .line 448
    return-object p0

    .line 449
    :catch_1c0
    move-exception p0

    .line 450
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 453
    move-result p1

    .line 454
    if-eqz p1, :cond_1cc

    .line 456
    const-string p1, "Unable to create LogFactory instance."

    .line 458
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 461
    :cond_1cc
    if-eqz v1, :cond_1e6

    .line 463
    sget-object p1, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 465
    if-nez p1, :cond_1d8

    .line 467
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 470
    move-result-object p1

    .line 471
    sput-object p1, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 473
    :cond_1d8
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 476
    move-result p1

    .line 477
    if-nez p1, :cond_1e6

    .line 479
    new-instance p1, Lorg/apache/commons/logging/LogConfigurationException;

    .line 481
    const-string v0, "The chosen LogFactory implementation does not extend LogFactory. Please check your configuration."

    .line 483
    invoke-direct {p1, v0, p0}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 486
    return-object p1

    .line 487
    :cond_1e6
    new-instance p1, Lorg/apache/commons/logging/LogConfigurationException;

    .line 489
    invoke-direct {p1, p0}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    .line 492
    return-object p1
.end method

.method private static final createFactoryStore()Ljava/util/Hashtable;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "org.apache.commons.logging.LogFactory.HashtableImpl"

    .line 4
    invoke-static {v1, v0}, Lorg/apache/commons/logging/LogFactory;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v1
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_7} :catch_8

    .line 8
    goto :goto_9

    .line 9
    :catch_8
    move-object v1, v0

    .line 10
    :goto_9
    const-string v2, "org.apache.commons.logging.impl.WeakHashtable"

    .line 12
    if-nez v1, :cond_e

    .line 14
    move-object v1, v2

    .line 15
    :cond_e
    :try_start_e
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/util/Hashtable;
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1a

    .line 25
    move-object v0, v3

    .line 26
    goto :goto_31

    .line 27
    :catchall_1a
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_31

    .line 33
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 36
    move-result v1

    .line 37
    const-string v2, "[ERROR] LogFactory: Load of custom hashtable failed"

    .line 39
    if-eqz v1, :cond_2c

    .line 41
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 44
    goto :goto_31

    .line 45
    :cond_2c
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 47
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    :cond_31
    :goto_31
    if-nez v0, :cond_38

    .line 52
    new-instance v0, Ljava/util/Hashtable;

    .line 54
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 57
    :cond_38
    return-object v0
.end method

.method public static directGetContextClassLoader()Ljava/lang/ClassLoader;
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->class$java$lang$Thread:Ljava/lang/Class;

    .line 3
    if-nez v0, :cond_c

    .line 5
    const-string v0, "java.lang.Thread"

    .line 7
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->class$java$lang$Thread:Ljava/lang/Class;

    .line 13
    :cond_c
    const-string v1, "getContextClassLoader"

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    move-result-object v0
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_13} :catch_3e

    .line 20
    :try_start_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_1d} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_1d} :catch_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_1d} :catch_3e

    .line 30
    move-object v2, v0

    .line 31
    goto :goto_4e

    .line 32
    :catch_1f
    move-exception v0

    .line 33
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 36
    move-result-object v1

    .line 37
    instance-of v1, v1, Ljava/lang/SecurityException;

    .line 39
    if-eqz v1, :cond_29

    .line 41
    goto :goto_4e

    .line 42
    :cond_29
    new-instance v1, Lorg/apache/commons/logging/LogConfigurationException;

    .line 44
    const-string v2, "Unexpected InvocationTargetException"

    .line 46
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 49
    move-result-object v0

    .line 50
    invoke-direct {v1, v2, v0}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    throw v1

    .line 54
    :catch_35
    move-exception v0

    .line 55
    new-instance v1, Lorg/apache/commons/logging/LogConfigurationException;

    .line 57
    const-string v2, "Unexpected IllegalAccessException"

    .line 59
    invoke-direct {v1, v2, v0}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    throw v1
    :try_end_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_3e} :catch_3e

    .line 63
    :catch_3e
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 65
    if-nez v0, :cond_4a

    .line 67
    const-string v0, "org.apache.commons.logging.LogFactory"

    .line 69
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    .line 75
    :cond_4a
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 78
    move-result-object v2

    .line 79
    :goto_4e
    return-object v2
.end method

.method private static getCachedFactory(Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    .registers 2

    .line 1
    if-nez p0, :cond_5

    .line 3
    sget-object p0, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    .line 5
    goto :goto_d

    .line 6
    :cond_5
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lorg/apache/commons/logging/LogFactory;

    .line 14
    :goto_d
    return-object p0
.end method

.method public static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p0

    .line 6
    :catch_5
    move-exception v0

    .line 7
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2c

    .line 13
    new-instance v1, Ljava/lang/StringBuffer;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    const-string v2, "Unable to get classloader for class \'"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 26
    const-string p0, "\' due to security restrictions - "

    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 45
    :cond_2c
    throw v0
.end method

.method private static final getConfigurationFile(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;
    .registers 16

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {p0, p1}, Lorg/apache/commons/logging/LogFactory;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;

    .line 5
    move-result-object p0
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_5} :catch_da

    .line 6
    if-nez p0, :cond_8

    .line 8
    return-object v0

    .line 9
    :cond_8
    const-wide/16 v1, 0x0

    .line 11
    move-object v3, v0

    .line 12
    move-wide v4, v1

    .line 13
    :cond_c
    :goto_c
    :try_start_c
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 16
    move-result v6

    .line 17
    if-eqz v6, :cond_e6

    .line 19
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Ljava/net/URL;

    .line 25
    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->getProperties(Ljava/net/URL;)Ljava/util/Properties;

    .line 28
    move-result-object v7
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_1c} :catch_db

    .line 29
    if-eqz v7, :cond_c

    .line 31
    const-string v8, "priority"

    .line 33
    const-string v9, " with priority "

    .line 35
    const-string v10, "\'"

    .line 37
    if-nez v0, :cond_5d

    .line 39
    :try_start_26
    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_32

    .line 45
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 48
    move-result-wide v3

    .line 49
    move-wide v4, v3

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move-wide v4, v1

    .line 52
    :goto_33
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_56

    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    const-string v3, "[LOOKUP] Properties file found at \'"

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_56} :catch_59

    .line 87
    :cond_56
    move-object v3, v6

    .line 88
    move-object v0, v7

    .line 89
    goto :goto_c

    .line 90
    :catch_59
    move-object v3, v6

    .line 91
    move-object v0, v7

    .line 92
    goto/16 :goto_db

    .line 94
    :cond_5d
    :try_start_5d
    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v8

    .line 98
    if-eqz v8, :cond_68

    .line 100
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 103
    move-result-wide v11
    :try_end_67
    .catch Ljava/lang/SecurityException; {:try_start_5d .. :try_end_67} :catch_db

    .line 104
    goto :goto_69

    .line 105
    :cond_68
    move-wide v11, v1

    .line 106
    :goto_69
    cmpl-double v8, v11, v4

    .line 108
    const-string v13, "[LOOKUP] Properties file at \'"

    .line 110
    if-lez v8, :cond_a6

    .line 112
    :try_start_6f
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 115
    move-result v8

    .line 116
    if-eqz v8, :cond_a1

    .line 118
    new-instance v8, Ljava/lang/StringBuffer;

    .line 120
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 138
    const-string v13, " overrides file at \'"

    .line 140
    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 158
    move-result-object v4

    .line 159
    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 162
    :cond_a1
    move-object v3, v6

    .line 163
    move-object v0, v7

    .line 164
    move-wide v4, v11

    .line 165
    goto/16 :goto_c

    .line 167
    :cond_a6
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_c

    .line 173
    new-instance v7, Ljava/lang/StringBuffer;

    .line 175
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 193
    const-string v6, " does not override file at \'"

    .line 195
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 213
    move-result-object v6

    .line 214
    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_d8
    .catch Ljava/lang/SecurityException; {:try_start_6f .. :try_end_d8} :catch_db

    .line 217
    goto/16 :goto_c

    .line 219
    :catch_da
    move-object v3, v0

    .line 220
    :catch_db
    :goto_db
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 223
    move-result p0

    .line 224
    if-eqz p0, :cond_e6

    .line 226
    const-string p0, "SecurityException thrown while trying to find/read config files."

    .line 228
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 231
    :cond_e6
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 234
    move-result p0

    .line 235
    if-eqz p0, :cond_129

    .line 237
    if-nez v0, :cond_108

    .line 239
    new-instance p0, Ljava/lang/StringBuffer;

    .line 241
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 244
    const-string v1, "[LOOKUP] No properties file of name \'"

    .line 246
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    const-string p1, "\' found."

    .line 254
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 260
    move-result-object p0

    .line 261
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 264
    goto :goto_129

    .line 265
    :cond_108
    new-instance p0, Ljava/lang/StringBuffer;

    .line 267
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    const-string v1, "[LOOKUP] Properties file of name \'"

    .line 272
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    const-string p1, "\' found at \'"

    .line 280
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 286
    const/16 p1, 0x22

    .line 288
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 291
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 294
    move-result-object p0

    .line 295
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 298
    :cond_129
    :goto_129
    return-object v0
.end method

.method public static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->directGetContextClassLoader()Ljava/lang/ClassLoader;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static getContextClassLoaderInternal()Ljava/lang/ClassLoader;
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/logging/LogFactory$1;

    .line 3
    invoke-direct {v0}, Lorg/apache/commons/logging/LogFactory$1;-><init>()V

    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/ClassLoader;

    .line 12
    return-object v0
.end method

.method public static getFactory()Lorg/apache/commons/logging/LogFactory;
    .registers 12

    .line 1
    const-string v0, "META-INF/services/org.apache.commons.logging.LogFactory"

    .line 3
    const-string v1, "]. Trying alternative implementations..."

    .line 5
    const-string v2, "[LOOKUP] A security exception occurred while trying to create an instance of the custom factory class: ["

    .line 7
    const-string v3, "org.apache.commons.logging.LogFactory"

    .line 9
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->getContextClassLoaderInternal()Ljava/lang/ClassLoader;

    .line 12
    move-result-object v4

    .line 13
    if-nez v4, :cond_19

    .line 15
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_19

    .line 21
    const-string v5, "Context classloader is null."

    .line 23
    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 26
    :cond_19
    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->getCachedFactory(Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    .line 29
    move-result-object v5

    .line 30
    if-eqz v5, :cond_20

    .line 32
    return-object v5

    .line 33
    :cond_20
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_3f

    .line 39
    const-string v6, "[LOOKUP] LogFactory implementation requested for the first time for context classloader "

    .line 41
    invoke-static {v6}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    move-result-object v6

    .line 45
    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 55
    move-result-object v6

    .line 56
    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 59
    const-string v6, "[LOOKUP] "

    .line 61
    invoke-static {v6, v4}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 64
    :cond_3f
    const-string v6, "commons-logging.properties"

    .line 66
    invoke-static {v4, v6}, Lorg/apache/commons/logging/LogFactory;->getConfigurationFile(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;

    .line 69
    move-result-object v6

    .line 70
    if-eqz v6, :cond_5c

    .line 72
    const-string v7, "use_tccl"

    .line 74
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v7

    .line 78
    if-eqz v7, :cond_5c

    .line 80
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    move-result v7

    .line 88
    if-nez v7, :cond_5c

    .line 90
    sget-object v7, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    move-object v7, v4

    .line 94
    :goto_5d
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 97
    move-result v8

    .line 98
    if-eqz v8, :cond_68

    .line 100
    const-string v8, "[LOOKUP] Looking for system property [org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    .line 102
    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 105
    :cond_68
    const/4 v8, 0x0

    .line 106
    :try_start_69
    invoke-static {v3, v8}, Lorg/apache/commons/logging/LogFactory;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v8

    .line 110
    if-eqz v8, :cond_96

    .line 112
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 115
    move-result v9

    .line 116
    if-eqz v9, :cond_91

    .line 118
    new-instance v9, Ljava/lang/StringBuffer;

    .line 120
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    const-string v10, "[LOOKUP] Creating an instance of LogFactory class \'"

    .line 125
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v10, "\' as specified by system property "

    .line 133
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 142
    move-result-object v9

    .line 143
    invoke-static {v9}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 146
    :cond_91
    invoke-static {v8, v7, v4}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    .line 149
    move-result-object v5

    .line 150
    goto :goto_e7

    .line 151
    :cond_96
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 154
    move-result v8

    .line 155
    if-eqz v8, :cond_e7

    .line 157
    const-string v8, "[LOOKUP] No system property [org.apache.commons.logging.LogFactory] defined."

    .line 159
    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/SecurityException; {:try_start_69 .. :try_end_a1} :catch_c7
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_a1} :catch_a2

    .line 162
    goto :goto_e7

    .line 163
    :catch_a2
    move-exception v0

    .line 164
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_c6

    .line 170
    const-string v1, "[LOOKUP] An exception occurred while trying to create an instance of the custom factory class: ["

    .line 172
    invoke-static {v1}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    move-result-object v2

    .line 180
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->trim(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    const-string v2, "] as specified by a system property."

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 195
    move-result-object v1

    .line 196
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 199
    :cond_c6
    throw v0

    .line 200
    :catch_c7
    move-exception v8

    .line 201
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 204
    move-result v9

    .line 205
    if-eqz v9, :cond_e7

    .line 207
    invoke-static {v2}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    move-result-object v9

    .line 211
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 214
    move-result-object v8

    .line 215
    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->trim(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-result-object v8

    .line 219
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 228
    move-result-object v8

    .line 229
    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 232
    :cond_e7
    :goto_e7
    if-nez v5, :cond_17f

    .line 234
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 237
    move-result v8

    .line 238
    if-eqz v8, :cond_f4

    .line 240
    const-string v8, "[LOOKUP] Looking for a resource file of name [META-INF/services/org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    .line 242
    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 245
    :cond_f4
    :try_start_f4
    invoke-static {v4, v0}, Lorg/apache/commons/logging/LogFactory;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    .line 248
    move-result-object v8
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_f8} :catch_15f

    .line 249
    if-eqz v8, :cond_153

    .line 251
    :try_start_fa
    new-instance v9, Ljava/io/BufferedReader;

    .line 253
    new-instance v10, Ljava/io/InputStreamReader;

    .line 255
    const-string v11, "UTF-8"

    .line 257
    invoke-direct {v10, v8, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 260
    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_106
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_fa .. :try_end_106} :catch_107
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_106} :catch_15f

    .line 263
    goto :goto_111

    .line 264
    :catch_107
    :try_start_107
    new-instance v9, Ljava/io/BufferedReader;

    .line 266
    new-instance v10, Ljava/io/InputStreamReader;

    .line 268
    invoke-direct {v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 271
    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 274
    :goto_111
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 277
    move-result-object v8

    .line 278
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 281
    if-eqz v8, :cond_17f

    .line 283
    const-string v9, ""

    .line 285
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    move-result v9

    .line 289
    if-nez v9, :cond_17f

    .line 291
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 294
    move-result v9

    .line 295
    if-eqz v9, :cond_14e

    .line 297
    new-instance v9, Ljava/lang/StringBuffer;

    .line 299
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 302
    const-string v10, "[LOOKUP]  Creating an instance of LogFactory class "

    .line 304
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string v10, " as specified by file \'"

    .line 312
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    const-string v0, "\' which was present in the path of the context"

    .line 320
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const-string v0, " classloader."

    .line 325
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 331
    move-result-object v0

    .line 332
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 335
    :cond_14e
    invoke-static {v8, v7, v4}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    .line 338
    move-result-object v5

    .line 339
    goto :goto_17f

    .line 340
    :cond_153
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 343
    move-result v0

    .line 344
    if-eqz v0, :cond_17f

    .line 346
    const-string v0, "[LOOKUP] No resource file with name \'META-INF/services/org.apache.commons.logging.LogFactory\' found."

    .line 348
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_15e} :catch_15f

    .line 351
    goto :goto_17f

    .line 352
    :catch_15f
    move-exception v0

    .line 353
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 356
    move-result v8

    .line 357
    if-eqz v8, :cond_17f

    .line 359
    invoke-static {v2}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 366
    move-result-object v0

    .line 367
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->trim(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 380
    move-result-object v0

    .line 381
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 384
    :cond_17f
    :goto_17f
    if-nez v5, :cond_1cf

    .line 386
    if-eqz v6, :cond_1c4

    .line 388
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_18e

    .line 394
    const-string v0, "[LOOKUP] Looking in properties file for entry with key \'org.apache.commons.logging.LogFactory\' to define the LogFactory subclass to use..."

    .line 396
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 399
    :cond_18e
    invoke-virtual {v6, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    move-result-object v0

    .line 403
    if-eqz v0, :cond_1b8

    .line 405
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 408
    move-result v1

    .line 409
    if-eqz v1, :cond_1b3

    .line 411
    new-instance v1, Ljava/lang/StringBuffer;

    .line 413
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 416
    const-string v2, "[LOOKUP] Properties file specifies LogFactory subclass \'"

    .line 418
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    const-string v2, "\'"

    .line 426
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 432
    move-result-object v1

    .line 433
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 436
    :cond_1b3
    invoke-static {v0, v7, v4}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    .line 439
    move-result-object v5

    .line 440
    goto :goto_1cf

    .line 441
    :cond_1b8
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 444
    move-result v0

    .line 445
    if-eqz v0, :cond_1cf

    .line 447
    const-string v0, "[LOOKUP] Properties file has no entry specifying LogFactory subclass."

    .line 449
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 452
    goto :goto_1cf

    .line 453
    :cond_1c4
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 456
    move-result v0

    .line 457
    if-eqz v0, :cond_1cf

    .line 459
    const-string v0, "[LOOKUP] No properties file available to determine LogFactory subclass from.."

    .line 461
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 464
    :cond_1cf
    :goto_1cf
    if-nez v5, :cond_1e4

    .line 466
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 469
    move-result v0

    .line 470
    if-eqz v0, :cond_1dc

    .line 472
    const-string v0, "[LOOKUP] Loading the default LogFactory implementation \'org.apache.commons.logging.impl.LogFactoryImpl\' via the same classloader that loaded this LogFactory class (ie not looking in the context classloader)."

    .line 474
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 477
    :cond_1dc
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 479
    const-string v1, "org.apache.commons.logging.impl.LogFactoryImpl"

    .line 481
    invoke-static {v1, v0, v4}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    .line 484
    move-result-object v5

    .line 485
    :cond_1e4
    if-eqz v5, :cond_203

    .line 487
    invoke-static {v4, v5}, Lorg/apache/commons/logging/LogFactory;->cacheFactory(Ljava/lang/ClassLoader;Lorg/apache/commons/logging/LogFactory;)V

    .line 490
    if-eqz v6, :cond_203

    .line 492
    invoke-virtual {v6}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    .line 495
    move-result-object v0

    .line 496
    :goto_1ef
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 499
    move-result v1

    .line 500
    if-eqz v1, :cond_203

    .line 502
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 505
    move-result-object v1

    .line 506
    check-cast v1, Ljava/lang/String;

    .line 508
    invoke-virtual {v6, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 511
    move-result-object v2

    .line 512
    invoke-virtual {v5, v1, v2}, Lorg/apache/commons/logging/LogFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 515
    goto :goto_1ef

    .line 516
    :cond_203
    return-object v5
.end method

.method public static getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .registers 2

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->getFactory()Lorg/apache/commons/logging/LogFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/logging/LogFactory;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p0

    return-object p0
.end method

.method public static getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 2

    .line 2
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->getFactory()Lorg/apache/commons/logging/LogFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/logging/LogFactory;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object p0

    return-object p0
.end method

.method private static getProperties(Ljava/net/URL;)Ljava/util/Properties;
    .registers 2

    .line 1
    new-instance v0, Lorg/apache/commons/logging/LogFactory$5;

    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/logging/LogFactory$5;-><init>(Ljava/net/URL;)V

    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/Properties;

    .line 12
    return-object p0
.end method

.method private static getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/logging/LogFactory$3;

    .line 3
    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/LogFactory$3;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/io/InputStream;

    .line 12
    return-object p0
.end method

.method private static getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/logging/LogFactory$4;

    .line 3
    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/LogFactory$4;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/Enumeration;

    .line 12
    return-object p0
.end method

.method private static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/logging/LogFactory$6;

    .line 3
    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/LogFactory$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/String;

    .line 12
    return-object p0
.end method

.method private static implementsLogFactory(Ljava/lang/Class;)Z
    .registers 5

    .line 1
    const-string v0, "[CUSTOM LOG FACTORY] "

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_8a

    .line 6
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 9
    move-result-object v2

    .line 10
    if-nez v2, :cond_12

    .line 12
    const-string p0, "[CUSTOM LOG FACTORY] was loaded by the boot classloader"

    .line 14
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 17
    goto/16 :goto_8a

    .line 19
    :cond_12
    invoke-static {v0, v2}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 22
    const-string v3, "org.apache.commons.logging.LogFactory"

    .line 24
    invoke-static {v3, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3d

    .line 34
    new-instance v2, Ljava/lang/StringBuffer;

    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    const-string p0, " implements LogFactory but was loaded by an incompatible classloader."

    .line 51
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 61
    goto :goto_8a

    .line 62
    :cond_3d
    new-instance v2, Ljava/lang/StringBuffer;

    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string p0, " does not implement LogFactory."

    .line 79
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_58} :catch_75
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_58} :catch_5f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_58} :catch_59

    .line 89
    goto :goto_8a

    .line 90
    :catch_59
    const-string p0, "[CUSTOM LOG FACTORY] LogFactory class cannot be loaded by classloader which loaded the custom LogFactory implementation. Is the custom factory in the right classloader?"

    .line 92
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 95
    goto :goto_8a

    .line 96
    :catch_5f
    move-exception p0

    .line 97
    const-string v0, "[CUSTOM LOG FACTORY] LinkageError thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    .line 99
    invoke-static {v0}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 117
    goto :goto_8a

    .line 118
    :catch_75
    move-exception p0

    .line 119
    const-string v0, "[CUSTOM LOG FACTORY] SecurityException thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    .line 121
    invoke-static {v0}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 135
    move-result-object p0

    .line 136
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 139
    :cond_8a
    :goto_8a
    return v1
.end method

.method private static initDiagnostics()V
    .registers 3

    .line 1
    :try_start_0
    const-string v0, "org.apache.commons.logging.diagnostics.dest"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lorg/apache/commons/logging/LogFactory;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_57

    .line 8
    if-nez v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    const-string v1, "STDOUT"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_17

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 21
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    .line 23
    goto :goto_31

    .line 24
    :cond_17
    const-string v1, "STDERR"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_24

    .line 32
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 34
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    .line 36
    goto :goto_31

    .line 37
    :cond_24
    :try_start_24
    new-instance v1, Ljava/io/FileOutputStream;

    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 43
    new-instance v0, Ljava/io/PrintStream;

    .line 45
    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_31} :catch_57

    .line 50
    :goto_31
    :try_start_31
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 52
    if-nez v0, :cond_38

    .line 54
    const-string v0, "BOOTLOADER"

    .line 56
    goto :goto_3f

    .line 57
    :cond_38
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object v0
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_31 .. :try_end_3c} :catch_3d

    .line 61
    goto :goto_3f

    .line 62
    :catch_3d
    const-string v0, "UNKNOWN"

    .line 64
    :goto_3f
    new-instance v1, Ljava/lang/StringBuffer;

    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    const-string v2, "[LogFactory from "

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v0, "] "

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticPrefix:Ljava/lang/String;

    .line 88
    :catch_57
    return-void
.end method

.method public static isDiagnosticsEnabled()Z
    .registers 1

    .line 1
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method private static logClassLoaderEnvironment(Ljava/lang/Class;)V
    .registers 4

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/StringBuffer;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 13
    const-string v1, "[ENV] Extension directories (java.ext.dir): "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    const-string v1, "java.ext.dir"

    .line 20
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    const-string v1, "[ENV] Application classpath (java.class.path): "

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    const-string v1, "java.class.path"

    .line 46
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_3b} :catch_3c

    .line 60
    goto :goto_41

    .line 61
    :catch_3c
    const-string v0, "[ENV] Security setting prevent interrogation of system classpaths."

    .line 63
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 66
    :goto_41
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    :try_start_45
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 73
    move-result-object p0
    :try_end_49
    .catch Ljava/lang/SecurityException; {:try_start_45 .. :try_end_49} :catch_83

    .line 74
    new-instance v1, Ljava/lang/StringBuffer;

    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    const-string v2, "[ENV] Class "

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v2, " was loaded via classloader "

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuffer;

    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    const-string v2, "[ENV] Ancestry of classloader which loaded "

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const-string v0, " is "

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0, p0}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 131
    return-void

    .line 132
    :catch_83
    new-instance p0, Ljava/lang/StringBuffer;

    .line 134
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    const-string v1, "[ENV] Security forbids determining the classloader for "

    .line 139
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 148
    move-result-object p0

    .line 149
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private static final logDiagnostic(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->diagnosticPrefix:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    .line 12
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    sget-object p0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    .line 17
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 20
    :cond_13
    return-void
.end method

.method private static logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    if-eqz p1, :cond_2c

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    const-string v2, " == \'"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    const-string v0, "\'"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 45
    :cond_2c
    :try_start_2c
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 48
    move-result-object v0
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_30} :catch_74

    .line 49
    if-eqz p1, :cond_73

    .line 51
    new-instance v1, Ljava/lang/StringBuffer;

    .line 53
    new-instance v2, Ljava/lang/StringBuffer;

    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string p0, "ClassLoader tree:"

    .line 63
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 73
    :cond_48
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    if-ne p1, v0, :cond_56

    .line 82
    const-string p0, " (SYSTEM) "

    .line 84
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_56
    :try_start_56
    invoke-virtual {p1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 90
    move-result-object p1
    :try_end_5a
    .catch Ljava/lang/SecurityException; {:try_start_56 .. :try_end_5a} :catch_67

    .line 91
    const-string p0, " --> "

    .line 93
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    if-nez p1, :cond_48

    .line 98
    const-string p0, "BOOT"

    .line 100
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    goto :goto_6c

    .line 104
    :catch_67
    const-string p0, " --> SECRET"

    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    :goto_6c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 113
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 116
    :cond_73
    return-void

    .line 117
    :catch_74
    new-instance p1, Ljava/lang/StringBuffer;

    .line 119
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string p0, "Security forbids determining the system classloader."

    .line 127
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static final logRawDiagnostic(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    sget-object p0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    .line 10
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 13
    :cond_c
    return-void
.end method

.method public static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    .registers 3

    const/4 v0, 0x0

    .line 18
    invoke-static {p0, p1, v0}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    move-result-object p0

    return-object p0
.end method

.method public static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    .registers 4

    .line 1
    new-instance v0, Lorg/apache/commons/logging/LogFactory$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/LogFactory$2;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of p1, p0, Lorg/apache/commons/logging/LogConfigurationException;

    if-eqz p1, :cond_2a

    .line 3
    check-cast p0, Lorg/apache/commons/logging/LogConfigurationException;

    .line 4
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result p1

    if-eqz p1, :cond_29

    const-string p1, "An error occurred while loading the factory class:"

    .line 5
    invoke-static {p1}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 7
    :cond_29
    throw p0

    .line 8
    :cond_2a
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result p1

    if-eqz p1, :cond_50

    const-string p1, "Created object "

    .line 9
    invoke-static {p1}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 10
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " to manage classloader "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p2}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 11
    :cond_50
    check-cast p0, Lorg/apache/commons/logging/LogFactory;

    return-object p0
.end method

.method public static objectId(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 1
    if-nez p0, :cond_5

    .line 3
    const-string p0, "null"

    .line 5
    return-object p0

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    const-string v1, "@"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 30
    move-result p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static release(Ljava/lang/ClassLoader;)V
    .registers 3

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    const-string v0, "Releasing factory for classloader "

    .line 9
    invoke-static {v0}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 27
    :cond_1a
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 29
    monitor-enter v0

    .line 30
    if-nez p0, :cond_2a

    .line 32
    :try_start_1f
    sget-object p0, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    .line 34
    if-eqz p0, :cond_3c

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/logging/LogFactory;->release()V

    .line 39
    const/4 p0, 0x0

    .line 40
    sput-object p0, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    .line 42
    goto :goto_3c

    .line 43
    :cond_2a
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 45
    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lorg/apache/commons/logging/LogFactory;

    .line 51
    if-eqz v1, :cond_3c

    .line 53
    invoke-virtual {v1}, Lorg/apache/commons/logging/LogFactory;->release()V

    .line 56
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 58
    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_3c
    :goto_3c
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :catchall_3e
    move-exception p0

    .line 64
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_1f .. :try_end_40} :catchall_3e

    .line 65
    throw p0
.end method

.method public static releaseAll()V
    .registers 3

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    const-string v0, "Releasing factory for all classloaders."

    .line 9
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 12
    :cond_b
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 14
    monitor-enter v0

    .line 15
    :try_start_e
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 17
    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    .line 20
    move-result-object v1

    .line 21
    :goto_14
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_24

    .line 27
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lorg/apache/commons/logging/LogFactory;

    .line 33
    invoke-virtual {v2}, Lorg/apache/commons/logging/LogFactory;->release()V

    .line 36
    goto :goto_14

    .line 37
    :cond_24
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 39
    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 42
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    .line 44
    if-eqz v1, :cond_33

    .line 46
    invoke-virtual {v1}, Lorg/apache/commons/logging/LogFactory;->release()V

    .line 49
    const/4 v1, 0x0

    .line 50
    sput-object v1, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    .line 52
    :cond_33
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :catchall_35
    move-exception v1

    .line 55
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_35

    .line 56
    throw v1
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAttributeNames()[Ljava/lang/String;
.end method

.method public abstract getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
.end method

.method public abstract getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
.end method

.method public abstract release()V
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method
