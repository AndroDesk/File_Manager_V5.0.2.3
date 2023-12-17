.class public Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;
.super Leu/medsea/mimeutil/detector/MimeDetector;
.source "MagicMimeMimeDetector.java"


# static fields
.field public static synthetic class$0:Ljava/lang/Class;

.field public static synthetic class$1:Ljava/lang/Class;

.field public static defaultLocations:[Ljava/lang/String;

.field private static log:Lorg/slf4j/Logger;

.field private static mMagicMimeEntries:Ljava/util/ArrayList;

.field private static magicMimeFileLocations:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    sget-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_14

    :try_start_4
    const-class v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_6} :catch_9

    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->class$0:Ljava/lang/Class;

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

    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    const-string v0, "/usr/share/mimelnk/magic"

    const-string v1, "/usr/share/file/magic.mime"

    const-string v2, "/etc/magic.mime"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->defaultLocations:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->magicMimeFileLocations:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MimeDetector;-><init>()V

    invoke-static {}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->initMagicRules()V

    return-void
.end method

.method private static addEntry(Ljava/lang/String;JLjava/util/ArrayList;)V
    .registers 7

    :try_start_0
    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    invoke-direct {v0, p3}, Leu/medsea/mimeutil/detector/MagicMimeEntry;-><init>(Ljava/util/ArrayList;)V

    sget-object p3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    move-result-object p3

    if-eqz p3, :cond_4b

    invoke-virtual {v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    move-result-object p3

    invoke-static {p3}, Leu/medsea/mimeutil/MimeUtil;->addKnownMimeType(Leu/medsea/mimeutil/MimeType;)V
    :try_end_17
    .catch Leu/medsea/mimeutil/detector/InvalidMagicMimeEntryException; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_4b

    :catch_18
    move-exception p3

    sget-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": file \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\": before or at line "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method private static getMagicFilesFromMagicMimeFileLocation(Ljava/lang/String;)Ljava/util/List;
    .registers 6

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/16 v1, 0x2a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_16

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_16
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_2f

    new-instance v1, Ljava/io/File;

    const-string v2, "someProbablyNotExistingFile"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    goto :goto_44

    :cond_2f
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_7f

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_44
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4d

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_4d
    const-string v2, "\\."

    const-string v4, "\\\\."

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\\*"

    const-string v4, ".*"

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    :goto_65
    array-length v2, v1

    if-lt v3, v2, :cond_69

    :goto_68
    return-object v0

    :cond_69
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    :cond_7f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The wildcard \'*\' is not allowed in directory part of the location! Do you want to implement expressions like /path/**/*.mime for recursive search? Please do!"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initMagicRules()V
    .registers 9

    const-class v0, Leu/medsea/mimeutil/MimeUtil;

    const-string v1, "magic-mime"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_30

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_38
    .catchall {:try_start_5 .. :try_end_16} :catchall_35

    :try_start_16
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "-Dmagic-mime="

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v3}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->parse(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2c} :catch_2e
    .catchall {:try_start_16 .. :try_end_2c} :catchall_22c

    move-object v2, v4

    goto :goto_30

    :catch_2e
    move-exception v2

    goto :goto_3b

    :cond_30
    :goto_30
    invoke-static {v2}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_5b

    :catchall_35
    move-exception v0

    goto/16 :goto_22e

    :catch_38
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    :goto_3b
    :try_start_3b
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Failed to parse custom magic mime file defined by system property -Dmagic-mime ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]. File will be ignored."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_22c

    invoke-static {v4}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    :goto_5b
    :try_start_5b
    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->class$1:Ljava/lang/Class;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5d} :catch_c6
    .catchall {:try_start_5b .. :try_end_5d} :catchall_c3

    if-nez v2, :cond_70

    :try_start_5f
    sget v2, Leu/medsea/mimeutil/MimeUtil;->a:I
    :try_end_61
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5f .. :try_end_61} :catch_65
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_61} :catch_c6
    .catchall {:try_start_5f .. :try_end_61} :catchall_c3

    :try_start_61
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->class$1:Ljava/lang/Class;

    move-object v2, v0

    goto :goto_70

    :catch_65
    move-exception v2

    new-instance v3, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_70
    :goto_70
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "magic.mime"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    :cond_7a
    :goto_7a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_81

    goto :goto_ce

    :cond_81
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_8b} :catch_c6
    .catchall {:try_start_61 .. :try_end_8b} :catchall_c3

    if-eqz v1, :cond_7a

    :try_start_8d
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "classpath:["

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v4, v5}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->parse(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_a8} :catch_a9
    .catchall {:try_start_8d .. :try_end_a8} :catchall_c3

    goto :goto_7a

    :catch_a9
    move-exception v4

    :try_start_aa
    sget-object v5, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Failed to parse magic.mime rule file ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "] on the classpath. File will be ignored."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c2} :catch_c6
    .catchall {:try_start_aa .. :try_end_c2} :catchall_c3

    goto :goto_7a

    :catchall_c3
    move-exception v0

    goto/16 :goto_228

    :catch_c6
    move-exception v2

    :try_start_c7
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    const-string v4, "Problem while processing magic.mime files from classpath. Files will be ignored."

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ce
    .catchall {:try_start_c7 .. :try_end_ce} :catchall_c3

    :goto_ce
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    :try_start_d2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "user.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ".magic.mime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_118

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_ff} :catch_120
    .catchall {:try_start_d2 .. :try_end_ff} :catchall_11d

    :try_start_ff
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->parse(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_10b} :catch_10c
    .catchall {:try_start_ff .. :try_end_10b} :catchall_222

    goto :goto_114

    :catch_10c
    move-exception v1

    :try_start_10d
    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    const-string v4, "Failed to parse .magic.mime file from the users home directory. File will be ignored."

    invoke-interface {v2, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_114} :catch_116
    .catchall {:try_start_10d .. :try_end_114} :catchall_222

    :goto_114
    move-object v1, v3

    goto :goto_118

    :catch_116
    move-exception v1

    goto :goto_123

    :cond_118
    :goto_118
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_12e

    :catchall_11d
    move-exception v0

    goto/16 :goto_224

    :catch_120
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    :goto_123
    :try_start_123
    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    const-string v4, "Problem while processing .magic.mime file from the users home directory. File will be ignored."

    invoke-interface {v2, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12a
    .catchall {:try_start_123 .. :try_end_12a} :catchall_222

    invoke-static {v3}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    :goto_12e
    :try_start_12e
    const-string v2, "MAGIC"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1a0

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_153

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, ".mime"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_170

    :cond_153
    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "mime"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_170
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_180} :catch_1a9
    .catchall {:try_start_12e .. :try_end_180} :catchall_1a6

    :try_start_180
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->parse(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_18c} :catch_191
    .catchall {:try_start_180 .. :try_end_18c} :catchall_18d

    goto :goto_199

    :catchall_18d
    move-exception v0

    move-object v1, v2

    goto/16 :goto_21e

    :catch_191
    move-exception v1

    :try_start_192
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    const-string v4, "Failed to parse magic.mime file from directory located by environment variable MAGIC. File will be ignored."

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_199} :catch_19b
    .catchall {:try_start_192 .. :try_end_199} :catchall_18d

    :goto_199
    move-object v1, v2

    goto :goto_1a0

    :catch_19b
    move-exception v1

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_1aa

    :cond_1a0
    :goto_1a0
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    move-object v2, v1

    goto :goto_1b2

    :catchall_1a6
    move-exception v0

    goto/16 :goto_21e

    :catch_1a9
    move-exception v2

    :goto_1aa
    :try_start_1aa
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    const-string v4, "Problem while processing magic.mime file from directory located by environment variable MAGIC. File will be ignored."

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b1
    .catchall {:try_start_1aa .. :try_end_1b1} :catchall_1a6

    goto :goto_1a0

    :goto_1b2
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->magicMimeFileLocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1be
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_214

    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v3, v1, :cond_213

    :try_start_1cc
    const-string v1, "eu/medsea/mimeutil/magic.mime"

    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->class$1:Ljava/lang/Class;
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1d0} :catch_203
    .catchall {:try_start_1cc .. :try_end_1d0} :catchall_201

    if-nez v3, :cond_1e2

    :try_start_1d2
    sget v3, Leu/medsea/mimeutil/MimeUtil;->a:I
    :try_end_1d4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d2 .. :try_end_1d4} :catch_1d7
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1d4} :catch_203
    .catchall {:try_start_1d2 .. :try_end_1d4} :catchall_201

    :try_start_1d4
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->class$1:Ljava/lang/Class;

    goto :goto_1e3

    :catch_1d7
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e2
    move-object v0, v3

    :goto_1e3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_1eb} :catch_203
    .catchall {:try_start_1d4 .. :try_end_1eb} :catchall_201

    if-eqz v2, :cond_20b

    :try_start_1ed
    const-string v0, "resource:eu/medsea/mimeutil/magic.mime"

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->parse(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_1f7} :catch_1f8
    .catchall {:try_start_1ed .. :try_end_1f7} :catchall_201

    goto :goto_20b

    :catch_1f8
    move-exception v0

    :try_start_1f9
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    const-string v3, "Failed to parse internal magic.mime file."

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_200} :catch_203
    .catchall {:try_start_1f9 .. :try_end_200} :catchall_201

    goto :goto_20b

    :catchall_201
    move-exception v0

    goto :goto_20f

    :catch_203
    move-exception v0

    :try_start_204
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    const-string v3, "Problem while processing internal magic.mime file."

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20b
    .catchall {:try_start_204 .. :try_end_20b} :catchall_201

    :cond_20b
    :goto_20b
    invoke-static {v2}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    goto :goto_213

    :goto_20f
    invoke-static {v2}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    throw v0

    :cond_213
    :goto_213
    return-void

    :cond_214
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->parseMagicMimeFileLocation(Ljava/lang/String;)V

    goto :goto_1be

    :goto_21e
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    throw v0

    :catchall_222
    move-exception v0

    move-object v1, v3

    :goto_224
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    throw v0

    :goto_228
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    throw v0

    :catchall_22c
    move-exception v0

    move-object v2, v4

    :goto_22e
    invoke-static {v2}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    throw v0
.end method

.method private static parse(Ljava/lang/String;Ljava/io/Reader;)V
    .registers 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    if-eqz v3, :cond_18

    move-wide v6, v4

    goto :goto_1a

    :cond_18
    const-wide/16 v6, 0x0

    :cond_1a
    :goto_1a
    if-nez v3, :cond_53

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {p0, v6, v7, p1}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->addEntry(Ljava/lang/String;JLjava/util/ArrayList;)V

    :cond_25
    sget-object p1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_52

    sget-object p1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Parsing \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\" took "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p0, " msec."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_52
    return-void

    :cond_53
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_9e

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x23

    if-ne v9, v10, :cond_67

    goto :goto_9e

    :cond_67
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    :goto_6a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_71

    add-long/2addr v6, v4

    :cond_71
    if-nez v3, :cond_7a

    invoke-static {p0, v6, v7, p1}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->addEntry(Ljava/lang/String;JLjava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1a

    :cond_7a
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6a

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_8b

    goto :goto_6a

    :cond_8b
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x3e

    if-eq v9, v11, :cond_9a

    invoke-static {p0, v6, v7, p1}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->addEntry(Ljava/lang/String;JLjava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1a

    :cond_9a
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    :cond_9e
    :goto_9e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    add-long/2addr v6, v4

    goto/16 :goto_1a
.end method

.method private static parseMagicMimeFileLocation(Ljava/lang/String;)V
    .registers 6

    invoke-static {p0}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->getMagicFilesFromMagicMimeFileLocation(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_10

    return-void

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    :try_start_16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4e

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_21} :catch_55
    .catchall {:try_start_16 .. :try_end_21} :catchall_53

    :try_start_21
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->parse(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_2e
    .catchall {:try_start_21 .. :try_end_2d} :catchall_66

    goto :goto_4a

    :catch_2e
    :try_start_2e
    sget-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Failed to parse "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ". File will be ignored."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4a} :catch_4c
    .catchall {:try_start_2e .. :try_end_4a} :catchall_66

    :goto_4a
    move-object v0, v2

    goto :goto_4e

    :catch_4c
    move-exception v0

    goto :goto_58

    :cond_4e
    :goto_4e
    invoke-static {v0}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_9

    :catchall_53
    move-exception p0

    goto :goto_68

    :catch_55
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_58
    :try_start_58
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_66

    invoke-static {v2}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_9

    :catchall_66
    move-exception p0

    move-object v0, v2

    :goto_68
    invoke-static {v0}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    throw p0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "Get the mime types of files or streams using the Unix file(5) magic.mime files"

    return-object v0
.end method

.method public getMimeTypesByteArray([B)Ljava/util/Collection;
    .registers 6

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-lt v2, v1, :cond_f

    goto :goto_31

    :cond_f
    :try_start_f
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    invoke-virtual {v3, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMatch([B)Leu/medsea/mimeutil/detector/MagicMimeEntry;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_24} :catch_27

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :catch_27
    move-exception p1

    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-object v0
.end method

.method public getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_1e
    .catchall {:try_start_1 .. :try_end_b} :catchall_1c

    :try_start_b
    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p1
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_f} :catch_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_16
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    return-object p1

    :catchall_13
    move-exception p1

    move-object v0, v1

    goto :goto_30

    :catch_16
    move-exception p1

    move-object v0, v1

    goto :goto_1f

    :catch_19
    move-exception p1

    move-object v0, v1

    goto :goto_26

    :catchall_1c
    move-exception p1

    goto :goto_30

    :catch_1e
    move-exception p1

    :goto_1f
    :try_start_1f
    new-instance v1, Leu/medsea/mimeutil/MimeException;

    invoke-direct {v1, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_25
    move-exception p1

    :goto_26
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_1c

    :goto_30
    invoke-static {v0}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    throw p1
.end method

.method public getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 6

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-lt v2, v1, :cond_f

    goto :goto_31

    :cond_f
    :try_start_f
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    invoke-virtual {v3, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMatch(Ljava/io/InputStream;)Leu/medsea/mimeutil/detector/MagicMimeEntry;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_24} :catch_27

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :catch_27
    move-exception p1

    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-object v0
.end method

.method public getMimeTypesURL(Ljava/net/URL;)Ljava/util/Collection;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-static {p1}, Leu/medsea/mimeutil/MimeUtil;->getInputStreamForURL(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_1a
    .catchall {:try_start_1 .. :try_end_a} :catchall_18

    :try_start_a
    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_15
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    return-object p1

    :catchall_12
    move-exception p1

    move-object v0, v1

    goto :goto_21

    :catch_15
    move-exception p1

    move-object v0, v1

    goto :goto_1b

    :catchall_18
    move-exception p1

    goto :goto_21

    :catch_1a
    move-exception p1

    :goto_1b
    :try_start_1b
    new-instance v1, Leu/medsea/mimeutil/MimeException;

    invoke-direct {v1, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_18

    :goto_21
    invoke-static {v0}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    throw p1
.end method
