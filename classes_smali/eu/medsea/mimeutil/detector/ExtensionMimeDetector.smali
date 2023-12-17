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

    sget-object v0, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_14

    :try_start_4
    const-class v0, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_6} :catch_9

    sput-object v0, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->class$0:Ljava/lang/Class;

    goto :goto_14

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    :goto_14
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MimeDetector;-><init>()V

    invoke-static {}, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->initMimeTypes()V

    return-void
.end method

.method private static initMimeTypes()V
    .registers 10

    const-string v0, ","

    const-class v1, Leu/medsea/mimeutil/MimeUtil;

    const-string v2, "]."

    const-string v3, "mime-mappings"

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    sput-object v4, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_11
    sget-object v6, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->class$1:Ljava/lang/Class;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_13} :catch_41
    .catchall {:try_start_11 .. :try_end_13} :catchall_3e

    if-nez v6, :cond_26

    :try_start_15
    sget v6, Leu/medsea/mimeutil/MimeUtil;->a:I
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_17} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_17} :catch_41
    .catchall {:try_start_15 .. :try_end_17} :catchall_3e

    :try_start_17
    sput-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->class$1:Ljava/lang/Class;

    move-object v6, v1

    goto :goto_26

    :catch_1b
    move-exception v6

    new-instance v7, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_26
    :goto_26
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "eu/medsea/mimeutil/mime-types.properties"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_39

    sget-object v6, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    check-cast v6, Ljava/util/Properties;

    invoke-virtual {v6, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_39} :catch_41
    .catchall {:try_start_17 .. :try_end_39} :catchall_3e

    :cond_39
    :goto_39
    :try_start_39
    invoke-static {v5}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_225

    goto :goto_4a

    :catchall_3e
    move-exception v1

    goto/16 :goto_221

    :catch_41
    move-exception v6

    :try_start_42
    sget-object v7, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    const-string v8, "Error loading internal mime-types.properties"

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_3e

    goto :goto_39

    :goto_4a
    :try_start_4a
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "user.home"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ".mime-types.properties"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9c

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_77} :catch_a4
    .catchall {:try_start_4a .. :try_end_77} :catchall_a1

    :try_start_77
    sget-object v5, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    const-string v6, "Found a custom .mime-types.properties file in the users home directory."

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v5, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/util/Dictionary;->size()I

    move-result v6

    if-lez v6, :cond_91

    sget-object v6, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_91
    sget-object v5, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    const-string v6, "Successfully parsed .mime-types.properties from users home directory."

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_98} :catch_9a
    .catchall {:try_start_77 .. :try_end_98} :catchall_21b

    move-object v5, v7

    goto :goto_9c

    :catch_9a
    move-exception v5

    goto :goto_a7

    :cond_9c
    :goto_9c
    :try_start_9c
    invoke-static {v5}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_225

    goto :goto_b2

    :catchall_a1
    move-exception v1

    goto/16 :goto_21d

    :catch_a4
    move-exception v6

    move-object v7, v5

    move-object v5, v6

    :goto_a7
    :try_start_a7
    sget-object v6, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    const-string v8, "Failed to parse .magic.mime file from users home directory. File will be ignored."

    invoke-interface {v6, v8, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_21b

    :try_start_ae
    invoke-static {v7}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_225

    :goto_b2
    :try_start_b2
    sget-object v6, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->class$1:Ljava/lang/Class;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b4} :catch_158
    .catchall {:try_start_b2 .. :try_end_b4} :catchall_155

    if-nez v6, :cond_c6

    :try_start_b6
    sget v6, Leu/medsea/mimeutil/MimeUtil;->a:I
    :try_end_b8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b6 .. :try_end_b8} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b8} :catch_158
    .catchall {:try_start_b6 .. :try_end_b8} :catchall_155

    :try_start_b8
    sput-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->class$1:Ljava/lang/Class;

    goto :goto_c7

    :catch_bb
    move-exception v1

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c6
    move-object v1, v6

    :goto_c7
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v6, "mime-types.properties"

    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    :cond_d1
    :goto_d1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_d5} :catch_158
    .catchall {:try_start_b8 .. :try_end_d5} :catchall_155

    if-nez v6, :cond_dd

    :goto_d7
    :try_start_d7
    invoke-static {v5}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_db
    .catchall {:try_start_d7 .. :try_end_db} :catchall_225

    goto/16 :goto_162

    :cond_dd
    :try_start_dd
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/URL;

    sget-object v7, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_101

    sget-object v7, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Found custom mime-types.properties file on the classpath ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_101
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_106} :catch_158
    .catchall {:try_start_dd .. :try_end_106} :catchall_155

    :try_start_106
    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_d1

    invoke-virtual {v7, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v7}, Ljava/util/Dictionary;->size()I

    move-result v8

    if-lez v8, :cond_d1

    sget-object v8, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v7, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_d1

    sget-object v7, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Successfully loaded custome mime-type.properties file ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v9, "] from classpath."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_13a} :catch_13b
    .catchall {:try_start_106 .. :try_end_13a} :catchall_155

    goto :goto_d1

    :catch_13b
    :try_start_13b
    sget-object v7, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Failed while loading custom mime-type.properties file ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v6, "] from classpath. File will be ignored."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_153} :catch_158
    .catchall {:try_start_13b .. :try_end_153} :catchall_155

    goto/16 :goto_d1

    :catchall_155
    move-exception v1

    goto/16 :goto_217

    :catch_158
    move-exception v1

    :try_start_159
    sget-object v6, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    const-string v7, "Problem while processing mime-types.properties files(s) from classpath. Files will be ignored."

    invoke-interface {v6, v7, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_160
    .catchall {:try_start_159 .. :try_end_160} :catchall_155

    goto/16 :goto_d7

    :goto_162
    :try_start_162
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1c8

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_173} :catch_1d0
    .catchall {:try_start_162 .. :try_end_173} :catchall_1cc

    :try_start_173
    sget-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_195

    sget-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "Found a custom mime-mappings property defined by the property -Dmime-mappings ["

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_195
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/util/Dictionary;->size()I

    move-result v5

    if-lez v5, :cond_1a8

    sget-object v5, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1a8
    sget-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "Successfully loaded the mime mappings file from property -Dmime-mappings ["

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_1c2} :catch_1c6
    .catchall {:try_start_173 .. :try_end_1c2} :catchall_1c4

    move-object v1, v6

    goto :goto_1c8

    :catchall_1c4
    move-exception v1

    goto :goto_213

    :catch_1c6
    move-object v1, v6

    goto :goto_1d0

    :cond_1c8
    :goto_1c8
    :try_start_1c8
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_1cb
    .catchall {:try_start_1c8 .. :try_end_1cb} :catchall_225

    goto :goto_1eb

    :catchall_1cc
    move-exception v2

    move-object v6, v1

    move-object v1, v2

    goto :goto_213

    :catch_1d0
    :goto_1d0
    :try_start_1d0
    sget-object v5, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Failed to load the mime-mappings file defined by the property -Dmime-mappings ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_1ea
    .catchall {:try_start_1d0 .. :try_end_1ea} :catchall_1cc

    goto :goto_1c8

    :goto_1eb
    sget-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1fc

    return-void

    :cond_1fc
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v3, v4

    :goto_207
    array-length v5, v2

    if-lt v3, v5, :cond_20b

    goto :goto_1f5

    :cond_20b
    aget-object v5, v2, v3

    invoke-static {v5}, Leu/medsea/mimeutil/MimeUtil;->addKnownMimeType(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_207

    :goto_213
    :try_start_213
    invoke-static {v6}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    throw v1

    :goto_217
    invoke-static {v5}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    throw v1

    :catchall_21b
    move-exception v1

    move-object v5, v7

    :goto_21d
    invoke-static {v5}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    throw v1

    :goto_221
    invoke-static {v5}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    throw v1
    :try_end_225
    .catchall {:try_start_213 .. :try_end_225} :catchall_225

    :catchall_225
    move-exception v1

    sget-object v2, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_230
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v5, v4

    :goto_241
    array-length v6, v3

    if-lt v5, v6, :cond_245

    goto :goto_230

    :cond_245
    aget-object v6, v3, v5

    invoke-static {v6}, Leu/medsea/mimeutil/MimeUtil;->addKnownMimeType(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_241

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

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This MimeDetector does not support detection from byte arrays."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;
    .registers 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Leu/medsea/mimeutil/MimeUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    return-object v0

    :cond_10
    sget-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ","

    if-eqz v1, :cond_32

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_21
    array-length p1, v1

    if-lt v2, p1, :cond_25

    return-object v0

    :cond_25
    new-instance p1, Leu/medsea/mimeutil/MimeType;

    aget-object v3, v1, v2

    invoke-direct {p1, v3}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_32
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5b

    sget-object v1, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->extMimeTypes:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5b

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_4a
    array-length p1, v1

    if-lt v2, p1, :cond_4e

    return-object v0

    :cond_4e
    new-instance p1, Leu/medsea/mimeutil/MimeType;

    aget-object v3, v1, v2

    invoke-direct {p1, v3}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_5b
    invoke-static {p1}, Leu/medsea/mimeutil/MimeUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_9
.end method

.method public getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This MimeDetector does not support detection from streams."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMimeTypesURL(Ljava/net/URL;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Leu/medsea/mimeutil/detector/ExtensionMimeDetector;->getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
