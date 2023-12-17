.class public Leu/medsea/mimeutil/detector/ExtensionMimeDetector;
.super Leu/medsea/mimeutil/detector/MimeDetector;
.source "ExtensionMimeDetector.java"


# static fields
.field public static synthetic class$0:Ljava/lang/Class;

.field public static synthetic class$1:Ljava/lang/Class;

.field private static extMimeTypes:Ljava/util/Map;

.field private static log:Lorg/slf4j/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->class$0:Ljava/lang/Class;

    .line 3
    if-nez v0, :cond_14

    .line 5
    :try_start_4
    const-class v0, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_6} :catch_9

    .line 7
    sput-object v0, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->class$0:Ljava/lang/Class;

    .line 9
    goto :goto_14

    .line 10
    :catch_9
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 20
    throw v1

    .line 21
    :cond_14
    :goto_14
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MimeDetector;-><init>()V

    .line 4
    invoke-static {}, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->initMimeTypes()V

    .line 7
    return-void
.end method

.method private static initMimeTypes()V
    .registers 10

    .line 1
    const-string v0, ","

    .line 3
    const-class v1, Leu/medsea/mimeutil/MimeUtil;

    .line 5
    const-string v2, "]."

    .line 7
    const-string v3, "mime-mappings"

    .line 9
    new-instance v4, Ljava/util/Properties;

    .line 11
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 14
    sput-object v4, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    :try_start_11
    sget-object v6, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->class$1:Ljava/lang/Class;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_13} :catch_41
    .catchall {:try_start_11 .. :try_end_13} :catchall_3e

    .line 20
    if-nez v6, :cond_26

    .line 22
    :try_start_15
    sget v6, Leu/medsea/mimeutil/MimeUtil;->a:I
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_17} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_17} :catch_41
    .catchall {:try_start_15 .. :try_end_17} :catchall_3e

    .line 24
    :try_start_17
    sput-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->class$1:Ljava/lang/Class;

    .line 26
    move-object v6, v1

    .line 27
    goto :goto_26

    .line 28
    :catch_1b
    move-exception v6

    .line 29
    new-instance v7, Ljava/lang/NoClassDefFoundError;

    .line 31
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    move-result-object v6

    .line 35
    invoke-direct {v7, v6}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 38
    throw v7

    .line 39
    :cond_26
    :goto_26
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 42
    move-result-object v6

    .line 43
    const-string v7, "eu/medsea/mimeutil/mime-types.properties"

    .line 45
    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 48
    move-result-object v5

    .line 49
    if-eqz v5, :cond_39

    .line 51
    sget-object v6, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    .line 53
    check-cast v6, Ljava/util/Properties;

    .line 55
    invoke-virtual {v6, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_39} :catch_41
    .catchall {:try_start_17 .. :try_end_39} :catchall_3e

    .line 58
    :cond_39
    :goto_39
    :try_start_39
    invoke-static {v5}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 61
    move-result-object v5
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_225

    .line 62
    goto :goto_4a

    .line 63
    :catchall_3e
    move-exception v1

    .line 64
    goto/16 :goto_221

    .line 66
    :catch_41
    move-exception v6

    .line 67
    :try_start_42
    sget-object v7, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    .line 69
    const-string v8, "Error loading internal mime-types.properties"

    .line 71
    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_3e

    .line 74
    goto :goto_39

    .line 75
    :goto_4a
    :try_start_4a
    new-instance v6, Ljava/io/File;

    .line 77
    new-instance v7, Ljava/lang/StringBuffer;

    .line 79
    const-string v8, "user.home"

    .line 81
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v8

    .line 85
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object v8

    .line 89
    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 92
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    .line 94
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string v8, ".mime-types.properties"

    .line 99
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 105
    move-result-object v7

    .line 106
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 112
    move-result v7

    .line 113
    if-eqz v7, :cond_9c

    .line 115
    new-instance v7, Ljava/io/FileInputStream;

    .line 117
    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_77} :catch_a4
    .catchall {:try_start_4a .. :try_end_77} :catchall_a1

    .line 120
    :try_start_77
    sget-object v5, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    .line 122
    const-string v6, "Found a custom .mime-types.properties file in the users home directory."

    .line 124
    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 127
    new-instance v5, Ljava/util/Properties;

    .line 129
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 132
    invoke-virtual {v5, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 135
    invoke-virtual {v5}, Ljava/util/Dictionary;->size()I

    .line 138
    move-result v6

    .line 139
    if-lez v6, :cond_91

    .line 141
    sget-object v6, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    .line 143
    invoke-interface {v6, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 146
    :cond_91
    sget-object v5, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    .line 148
    const-string v6, "Successfully parsed .mime-types.properties from users home directory."

    .line 150
    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_98} :catch_9a
    .catchall {:try_start_77 .. :try_end_98} :catchall_21b

    .line 153
    move-object v5, v7

    .line 154
    goto :goto_9c

    .line 155
    :catch_9a
    move-exception v5

    .line 156
    goto :goto_a7

    .line 157
    :cond_9c
    :goto_9c
    :try_start_9c
    invoke-static {v5}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 160
    move-result-object v5
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_225

    .line 161
    goto :goto_b2

    .line 162
    :catchall_a1
    move-exception v1

    .line 163
    goto/16 :goto_21d

    .line 165
    :catch_a4
    move-exception v6

    .line 166
    move-object v7, v5

    .line 167
    move-object v5, v6

    .line 168
    :goto_a7
    :try_start_a7
    sget-object v6, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    .line 170
    const-string v8, "Failed to parse .magic.mime file from users home directory. File will be ignored."

    .line 172
    invoke-interface {v6, v8, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_21b

    .line 175
    :try_start_ae
    invoke-static {v7}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 178
    move-result-object v5
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_225

    .line 179
    :goto_b2
    :try_start_b2
    sget-object v6, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->class$1:Ljava/lang/Class;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b4} :catch_158
    .catchall {:try_start_b2 .. :try_end_b4} :catchall_155

    .line 181
    if-nez v6, :cond_c6

    .line 183
    :try_start_b6
    sget v6, Leu/medsea/mimeutil/MimeUtil;->a:I
    :try_end_b8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b6 .. :try_end_b8} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b8} :catch_158
    .catchall {:try_start_b6 .. :try_end_b8} :catchall_155

    .line 185
    :try_start_b8
    sput-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->class$1:Ljava/lang/Class;

    .line 187
    goto :goto_c7

    .line 188
    :catch_bb
    move-exception v1

    .line 189
    new-instance v6, Ljava/lang/NoClassDefFoundError;

    .line 191
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 194
    move-result-object v1

    .line 195
    invoke-direct {v6, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 198
    throw v6

    .line 199
    :cond_c6
    move-object v1, v6

    .line 200
    :goto_c7
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 203
    move-result-object v1

    .line 204
    const-string v6, "mime-types.properties"

    .line 206
    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 209
    move-result-object v1

    .line 210
    :cond_d1
    :goto_d1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 213
    move-result v6
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_d5} :catch_158
    .catchall {:try_start_b8 .. :try_end_d5} :catchall_155

    .line 214
    if-nez v6, :cond_dd

    .line 216
    :goto_d7
    :try_start_d7
    invoke-static {v5}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 219
    move-result-object v1
    :try_end_db
    .catchall {:try_start_d7 .. :try_end_db} :catchall_225

    .line 220
    goto/16 :goto_162

    .line 222
    :cond_dd
    :try_start_dd
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 225
    move-result-object v6

    .line 226
    check-cast v6, Ljava/net/URL;

    .line 228
    sget-object v7, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    .line 230
    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 233
    move-result v7

    .line 234
    if-eqz v7, :cond_101

    .line 236
    sget-object v7, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    .line 238
    new-instance v8, Ljava/lang/StringBuffer;

    .line 240
    const-string v9, "Found custom mime-types.properties file on the classpath ["

    .line 242
    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 254
    move-result-object v8

    .line 255
    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 258
    :cond_101
    new-instance v7, Ljava/util/Properties;

    .line 260
    invoke-direct {v7}, Ljava/util/Properties;-><init>()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_106} :catch_158
    .catchall {:try_start_dd .. :try_end_106} :catchall_155

    .line 263
    :try_start_106
    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 266
    move-result-object v5

    .line 267
    if-eqz v5, :cond_d1

    .line 269
    invoke-virtual {v7, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 272
    invoke-virtual {v7}, Ljava/util/Dictionary;->size()I

    .line 275
    move-result v8

    .line 276
    if-lez v8, :cond_d1

    .line 278
    sget-object v8, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    .line 280
    invoke-interface {v8, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 283
    sget-object v7, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    .line 285
    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 288
    move-result v7

    .line 289
    if-eqz v7, :cond_d1

    .line 291
    sget-object v7, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    .line 293
    new-instance v8, Ljava/lang/StringBuffer;

    .line 295
    const-string v9, "Successfully loaded custome mime-type.properties file ["

    .line 297
    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 303
    const-string v9, "] from classpath."

    .line 305
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 311
    move-result-object v8

    .line 312
    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_13a} :catch_13b
    .catchall {:try_start_106 .. :try_end_13a} :catchall_155

    .line 315
    goto :goto_d1

    .line 316
    :catch_13b
    :try_start_13b
    sget-object v7, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    .line 318
    new-instance v8, Ljava/lang/StringBuffer;

    .line 320
    const-string v9, "Failed while loading custom mime-type.properties file ["

    .line 322
    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 328
    const-string v6, "] from classpath. File will be ignored."

    .line 330
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 336
    move-result-object v6

    .line 337
    invoke-interface {v7, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_153} :catch_158
    .catchall {:try_start_13b .. :try_end_153} :catchall_155

    .line 340
    goto/16 :goto_d1

    .line 342
    :catchall_155
    move-exception v1

    .line 343
    goto/16 :goto_217

    .line 345
    :catch_158
    move-exception v1

    .line 346
    :try_start_159
    sget-object v6, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    .line 348
    const-string v7, "Problem while processing mime-types.properties files(s) from classpath. Files will be ignored."

    .line 350
    invoke-interface {v6, v7, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_160
    .catchall {:try_start_159 .. :try_end_160} :catchall_155

    .line 353
    goto/16 :goto_d7

    .line 355
    :goto_162
    :try_start_162
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    move-result-object v5

    .line 359
    if-eqz v5, :cond_1c8

    .line 361
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 364
    move-result v6

    .line 365
    if-eqz v6, :cond_1c8

    .line 367
    new-instance v6, Ljava/io/FileInputStream;

    .line 369
    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_173} :catch_1d0
    .catchall {:try_start_162 .. :try_end_173} :catchall_1cc

    .line 372
    :try_start_173
    sget-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    .line 374
    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_195

    .line 380
    sget-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    .line 382
    new-instance v5, Ljava/lang/StringBuffer;

    .line 384
    const-string v7, "Found a custom mime-mappings property defined by the property -Dmime-mappings ["

    .line 386
    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 392
    move-result-object v7

    .line 393
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 402
    move-result-object v5

    .line 403
    invoke-interface {v1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 406
    :cond_195
    new-instance v1, Ljava/util/Properties;

    .line 408
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 411
    invoke-virtual {v1, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 414
    invoke-virtual {v1}, Ljava/util/Dictionary;->size()I

    .line 417
    move-result v5

    .line 418
    if-lez v5, :cond_1a8

    .line 420
    sget-object v5, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    .line 422
    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 425
    :cond_1a8
    sget-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    .line 427
    new-instance v5, Ljava/lang/StringBuffer;

    .line 429
    const-string v7, "Successfully loaded the mime mappings file from property -Dmime-mappings ["

    .line 431
    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 437
    move-result-object v7

    .line 438
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 447
    move-result-object v5

    .line 448
    invoke-interface {v1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_1c2} :catch_1c6
    .catchall {:try_start_173 .. :try_end_1c2} :catchall_1c4

    .line 451
    move-object v1, v6

    .line 452
    goto :goto_1c8

    .line 453
    :catchall_1c4
    move-exception v1

    .line 454
    goto :goto_213

    .line 455
    :catch_1c6
    move-object v1, v6

    .line 456
    goto :goto_1d0

    .line 457
    :cond_1c8
    :goto_1c8
    :try_start_1c8
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_1cb
    .catchall {:try_start_1c8 .. :try_end_1cb} :catchall_225

    .line 460
    goto :goto_1eb

    .line 461
    :catchall_1cc
    move-exception v2

    .line 462
    move-object v6, v1

    .line 463
    move-object v1, v2

    .line 464
    goto :goto_213

    .line 465
    :catch_1d0
    :goto_1d0
    :try_start_1d0
    sget-object v5, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    .line 467
    new-instance v6, Ljava/lang/StringBuffer;

    .line 469
    const-string v7, "Failed to load the mime-mappings file defined by the property -Dmime-mappings ["

    .line 471
    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 477
    move-result-object v3

    .line 478
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 487
    move-result-object v2

    .line 488
    invoke-interface {v5, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_1ea
    .catchall {:try_start_1d0 .. :try_end_1ea} :catchall_1cc

    .line 491
    goto :goto_1c8

    .line 492
    :goto_1eb
    sget-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    .line 494
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 497
    move-result-object v1

    .line 498
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 501
    move-result-object v1

    .line 502
    :goto_1f5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 505
    move-result v2

    .line 506
    if-nez v2, :cond_1fc

    .line 508
    return-void

    .line 509
    :cond_1fc
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 512
    move-result-object v2

    .line 513
    check-cast v2, Ljava/lang/String;

    .line 515
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 518
    move-result-object v2

    .line 519
    move v3, v4

    .line 520
    :goto_207
    array-length v5, v2

    .line 521
    if-lt v3, v5, :cond_20b

    .line 523
    goto :goto_1f5

    .line 524
    :cond_20b
    aget-object v5, v2, v3

    .line 526
    invoke-static {v5}, Leu/medsea/mimeutil/MimeUtil;->addKnownMimeType(Ljava/lang/String;)V

    .line 529
    add-int/lit8 v3, v3, 0x1

    .line 531
    goto :goto_207

    .line 532
    :goto_213
    :try_start_213
    invoke-static {v6}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 535
    throw v1

    .line 536
    :goto_217
    invoke-static {v5}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 539
    throw v1

    .line 540
    :catchall_21b
    move-exception v1

    .line 541
    move-object v5, v7

    .line 542
    :goto_21d
    invoke-static {v5}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 545
    throw v1

    .line 546
    :goto_221
    invoke-static {v5}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 549
    throw v1
    :try_end_225
    .catchall {:try_start_213 .. :try_end_225} :catchall_225

    .line 550
    :catchall_225
    move-exception v1

    .line 551
    sget-object v2, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    .line 553
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 556
    move-result-object v2

    .line 557
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 560
    move-result-object v2

    .line 561
    :goto_230
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 564
    move-result v3

    .line 565
    if-eqz v3, :cond_24d

    .line 567
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 570
    move-result-object v3

    .line 571
    check-cast v3, Ljava/lang/String;

    .line 573
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 576
    move-result-object v3

    .line 577
    move v5, v4

    .line 578
    :goto_241
    array-length v6, v3

    .line 579
    if-lt v5, v6, :cond_245

    .line 581
    goto :goto_230

    .line 582
    :cond_245
    aget-object v6, v3, v5

    .line 584
    invoke-static {v6}, Leu/medsea/mimeutil/MimeUtil;->addKnownMimeType(Ljava/lang/String;)V

    .line 587
    add-int/lit8 v5, v5, 0x1

    .line 589
    goto :goto_241

    .line 590
    :cond_24d
    throw v1
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "Get the mime types of file extensions"

    return-object v0
.end method

.method public getMimeTypesByteArray([B)Ljava/util/Collection;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "This MimeDetector does not support detection from byte arrays."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    invoke-static {p1}, Leu/medsea/mimeutil/MimeUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_10

    .line 16
    return-object v0

    .line 17
    :cond_10
    sget-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    .line 19
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 25
    const/4 v2, 0x0

    .line 26
    const-string v3, ","

    .line 28
    if-eqz v1, :cond_32

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    :goto_21
    array-length p1, v1

    .line 35
    if-lt v2, p1, :cond_25

    .line 37
    return-object v0

    .line 38
    :cond_25
    new-instance p1, Leu/medsea/mimeutil/MimeType;

    .line 40
    aget-object v3, v1, v2

    .line 42
    invoke-direct {p1, v3}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_21

    .line 51
    :cond_32
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5b

    .line 57
    sget-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/lang/String;

    .line 69
    if-eqz v1, :cond_5b

    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    :goto_4a
    array-length p1, v1

    .line 76
    if-lt v2, p1, :cond_4e

    .line 78
    return-object v0

    .line 79
    :cond_4e
    new-instance p1, Leu/medsea/mimeutil/MimeType;

    .line 81
    aget-object v3, v1, v2

    .line 83
    invoke-direct {p1, v3}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 91
    goto :goto_4a

    .line 92
    :cond_5b
    invoke-static {p1}, Leu/medsea/mimeutil/MimeUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    goto :goto_9
.end method

.method public getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "This MimeDetector does not support detection from streams."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public getMimeTypesURL(Ljava/net/URL;)Ljava/util/Collection;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
