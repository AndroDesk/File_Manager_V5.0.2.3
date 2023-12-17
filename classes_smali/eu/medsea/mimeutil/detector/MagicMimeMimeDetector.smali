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

    .line 1
    sget-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->class$0:Ljava/lang/Class;

    .line 3
    if-nez v0, :cond_14

    .line 5
    :try_start_4
    const-class v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_6} :catch_9

    .line 7
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->class$0:Ljava/lang/Class;

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
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 27
    const-string v0, "/usr/share/mimelnk/magic"

    .line 29
    const-string v1, "/usr/share/file/magic.mime"

    .line 31
    const-string v2, "/etc/magic.mime"

    .line 33
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->defaultLocations:[Ljava/lang/String;

    .line 39
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->magicMimeFileLocations:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MimeDetector;-><init>()V

    .line 4
    invoke-static {}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->initMagicRules()V

    .line 7
    return-void
.end method

.method private static addEntry(Ljava/lang/String;JLjava/util/ArrayList;)V
    .registers 7

    .line 1
    :try_start_0
    new-instance v0, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 3
    invoke-direct {v0, p3}, Leu/medsea/mimeutil/detector/MagicMimeEntry;-><init>(Ljava/util/ArrayList;)V

    .line 6
    sget-object p3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    .line 14
    move-result-object p3

    .line 15
    if-eqz p3, :cond_4b

    .line 17
    invoke-virtual {v0}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    .line 20
    move-result-object p3

    .line 21
    invoke-static {p3}, Leu/medsea/mimeutil/MimeUtil;->addKnownMimeType(Leu/medsea/mimeutil/MimeType;)V
    :try_end_17
    .catch Leu/medsea/mimeutil/detector/InvalidMagicMimeEntryException; {:try_start_0 .. :try_end_17} :catch_18

    .line 24
    goto :goto_4b

    .line 25
    :catch_18
    move-exception p3

    .line 26
    sget-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 28
    new-instance v1, Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v2, ": "

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v2, ": file \""

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string p0, "\": before or at line "

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-interface {v0, p0, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :cond_4b
    :goto_4b
    return-void
.end method

.method private static getMagicFilesFromMagicMimeFileLocation(Ljava/lang/String;)Ljava/util/List;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6
    const/16 v1, 0x2a

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 11
    move-result v2

    .line 12
    if-gez v2, :cond_16

    .line 14
    new-instance v1, Ljava/io/File;

    .line 16
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 22
    goto :goto_68

    .line 23
    :cond_16
    const/16 v2, 0x2f

    .line 25
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-gez v2, :cond_2f

    .line 32
    new-instance v1, Ljava/io/File;

    .line 34
    const-string v2, "someProbablyNotExistingFile"

    .line 36
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 46
    move-result-object v1

    .line 47
    goto :goto_44

    .line 48
    :cond_2f
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    .line 55
    move-result v1

    .line 56
    if-gez v1, :cond_7f

    .line 58
    new-instance v1, Ljava/io/File;

    .line 60
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    :goto_44
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_4d

    .line 75
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 77
    return-object p0

    .line 78
    :cond_4d
    const-string v2, "\\."

    .line 80
    const-string v4, "\\\\."

    .line 82
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    const-string v2, "\\*"

    .line 88
    const-string v4, ".*"

    .line 90
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 101
    move-result-object v1

    .line 102
    :goto_65
    array-length v2, v1

    .line 103
    if-lt v3, v2, :cond_69

    .line 105
    :goto_68
    return-object v0

    .line 106
    :cond_69
    aget-object v2, v1, v3

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {p0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_7c

    .line 122
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_7c
    add-int/lit8 v3, v3, 0x1

    .line 127
    goto :goto_65

    .line 128
    :cond_7f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 130
    const-string v0, "The wildcard \'*\' is not allowed in directory part of the location! Do you want to implement expressions like /path/**/*.mime for recursive search? Please do!"

    .line 132
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p0
.end method

.method private static initMagicRules()V
    .registers 9

    .line 1
    const-class v0, Leu/medsea/mimeutil/MimeUtil;

    .line 3
    const-string v1, "magic-mime"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_5
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v3

    .line 10
    if-eqz v3, :cond_30

    .line 12
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_30

    .line 18
    new-instance v4, Ljava/io/FileInputStream;

    .line 20
    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_38
    .catchall {:try_start_5 .. :try_end_16} :catchall_35

    .line 23
    :try_start_16
    new-instance v2, Ljava/lang/StringBuffer;

    .line 25
    const-string v5, "-Dmagic-mime="

    .line 27
    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Ljava/io/InputStreamReader;

    .line 39
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 42
    invoke-static {v2, v3}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->parse(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2c} :catch_2e
    .catchall {:try_start_16 .. :try_end_2c} :catchall_22c

    .line 45
    move-object v2, v4

    .line 46
    goto :goto_30

    .line 47
    :catch_2e
    move-exception v2

    .line 48
    goto :goto_3b

    .line 49
    :cond_30
    :goto_30
    invoke-static {v2}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 52
    move-result-object v1

    .line 53
    goto :goto_5b

    .line 54
    :catchall_35
    move-exception v0

    .line 55
    goto/16 :goto_22e

    .line 57
    :catch_38
    move-exception v3

    .line 58
    move-object v4, v2

    .line 59
    move-object v2, v3

    .line 60
    :goto_3b
    :try_start_3b
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 62
    new-instance v5, Ljava/lang/StringBuffer;

    .line 64
    const-string v6, "Failed to parse custom magic mime file defined by system property -Dmagic-mime ["

    .line 66
    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "]. File will be ignored."

    .line 78
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-interface {v3, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_22c

    .line 88
    invoke-static {v4}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 91
    move-result-object v1

    .line 92
    :goto_5b
    :try_start_5b
    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->class$1:Ljava/lang/Class;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5d} :catch_c6
    .catchall {:try_start_5b .. :try_end_5d} :catchall_c3

    .line 94
    if-nez v2, :cond_70

    .line 96
    :try_start_5f
    sget v2, Leu/medsea/mimeutil/MimeUtil;->a:I
    :try_end_61
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5f .. :try_end_61} :catch_65
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_61} :catch_c6
    .catchall {:try_start_5f .. :try_end_61} :catchall_c3

    .line 98
    :try_start_61
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->class$1:Ljava/lang/Class;

    .line 100
    move-object v2, v0

    .line 101
    goto :goto_70

    .line 102
    :catch_65
    move-exception v2

    .line 103
    new-instance v3, Ljava/lang/NoClassDefFoundError;

    .line 105
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    invoke-direct {v3, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 112
    throw v3

    .line 113
    :cond_70
    :goto_70
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 116
    move-result-object v2

    .line 117
    const-string v3, "magic.mime"

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 122
    move-result-object v2

    .line 123
    :cond_7a
    :goto_7a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 126
    move-result v3

    .line 127
    if-nez v3, :cond_81

    .line 129
    goto :goto_ce

    .line 130
    :cond_81
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Ljava/net/URL;

    .line 136
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 139
    move-result-object v1
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_8b} :catch_c6
    .catchall {:try_start_61 .. :try_end_8b} :catchall_c3

    .line 140
    if-eqz v1, :cond_7a

    .line 142
    :try_start_8d
    new-instance v4, Ljava/lang/StringBuffer;

    .line 144
    const-string v5, "classpath:["

    .line 146
    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 152
    const-string v5, "]"

    .line 154
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 160
    move-result-object v4

    .line 161
    new-instance v5, Ljava/io/InputStreamReader;

    .line 163
    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 166
    invoke-static {v4, v5}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->parse(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_a8} :catch_a9
    .catchall {:try_start_8d .. :try_end_a8} :catchall_c3

    .line 169
    goto :goto_7a

    .line 170
    :catch_a9
    move-exception v4

    .line 171
    :try_start_aa
    sget-object v5, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 173
    new-instance v6, Ljava/lang/StringBuffer;

    .line 175
    const-string v7, "Failed to parse magic.mime rule file ["

    .line 177
    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 183
    const-string v3, "] on the classpath. File will be ignored."

    .line 185
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 191
    move-result-object v3

    .line 192
    invoke-interface {v5, v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c2} :catch_c6
    .catchall {:try_start_aa .. :try_end_c2} :catchall_c3

    .line 195
    goto :goto_7a

    .line 196
    :catchall_c3
    move-exception v0

    .line 197
    goto/16 :goto_228

    .line 199
    :catch_c6
    move-exception v2

    .line 200
    :try_start_c7
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 202
    const-string v4, "Problem while processing magic.mime files from classpath. Files will be ignored."

    .line 204
    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ce
    .catchall {:try_start_c7 .. :try_end_ce} :catchall_c3

    .line 207
    :goto_ce
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 210
    move-result-object v1

    .line 211
    :try_start_d2
    new-instance v2, Ljava/io/File;

    .line 213
    new-instance v3, Ljava/lang/StringBuffer;

    .line 215
    const-string v4, "user.home"

    .line 217
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    move-result-object v4

    .line 221
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 224
    move-result-object v4

    .line 225
    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 228
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    const-string v4, ".magic.mime"

    .line 235
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 241
    move-result-object v3

    .line 242
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_118

    .line 251
    new-instance v3, Ljava/io/FileInputStream;

    .line 253
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_ff} :catch_120
    .catchall {:try_start_d2 .. :try_end_ff} :catchall_11d

    .line 256
    :try_start_ff
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 259
    move-result-object v1

    .line 260
    new-instance v2, Ljava/io/InputStreamReader;

    .line 262
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 265
    invoke-static {v1, v2}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->parse(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_10b} :catch_10c
    .catchall {:try_start_ff .. :try_end_10b} :catchall_222

    .line 268
    goto :goto_114

    .line 269
    :catch_10c
    move-exception v1

    .line 270
    :try_start_10d
    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 272
    const-string v4, "Failed to parse .magic.mime file from the users home directory. File will be ignored."

    .line 274
    invoke-interface {v2, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_114} :catch_116
    .catchall {:try_start_10d .. :try_end_114} :catchall_222

    .line 277
    :goto_114
    move-object v1, v3

    .line 278
    goto :goto_118

    .line 279
    :catch_116
    move-exception v1

    .line 280
    goto :goto_123

    .line 281
    :cond_118
    :goto_118
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 284
    move-result-object v1

    .line 285
    goto :goto_12e

    .line 286
    :catchall_11d
    move-exception v0

    .line 287
    goto/16 :goto_224

    .line 289
    :catch_120
    move-exception v2

    .line 290
    move-object v3, v1

    .line 291
    move-object v1, v2

    .line 292
    :goto_123
    :try_start_123
    sget-object v2, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 294
    const-string v4, "Problem while processing .magic.mime file from the users home directory. File will be ignored."

    .line 296
    invoke-interface {v2, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12a
    .catchall {:try_start_123 .. :try_end_12a} :catchall_222

    .line 299
    invoke-static {v3}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 302
    move-result-object v1

    .line 303
    :goto_12e
    :try_start_12e
    const-string v2, "MAGIC"

    .line 305
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    move-result-object v2

    .line 309
    if-eqz v2, :cond_1a0

    .line 311
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 314
    move-result v3

    .line 315
    if-eqz v3, :cond_1a0

    .line 317
    const/16 v3, 0x2e

    .line 319
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 322
    move-result v4

    .line 323
    if-gez v4, :cond_153

    .line 325
    new-instance v3, Ljava/lang/StringBuffer;

    .line 327
    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 330
    const-string v2, ".mime"

    .line 332
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 338
    move-result-object v2

    .line 339
    goto :goto_170

    .line 340
    :cond_153
    new-instance v4, Ljava/lang/StringBuffer;

    .line 342
    const/4 v5, 0x0

    .line 343
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 346
    move-result v3

    .line 347
    add-int/lit8 v3, v3, -0x1

    .line 349
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 352
    move-result-object v2

    .line 353
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 356
    move-result-object v2

    .line 357
    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 360
    const-string v2, "mime"

    .line 362
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 368
    move-result-object v2

    .line 369
    :goto_170
    new-instance v3, Ljava/io/File;

    .line 371
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 377
    move-result v2

    .line 378
    if-eqz v2, :cond_1a0

    .line 380
    new-instance v2, Ljava/io/FileInputStream;

    .line 382
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_180} :catch_1a9
    .catchall {:try_start_12e .. :try_end_180} :catchall_1a6

    .line 385
    :try_start_180
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 388
    move-result-object v1

    .line 389
    new-instance v3, Ljava/io/InputStreamReader;

    .line 391
    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 394
    invoke-static {v1, v3}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->parse(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_18c} :catch_191
    .catchall {:try_start_180 .. :try_end_18c} :catchall_18d

    .line 397
    goto :goto_199

    .line 398
    :catchall_18d
    move-exception v0

    .line 399
    move-object v1, v2

    .line 400
    goto/16 :goto_21e

    .line 402
    :catch_191
    move-exception v1

    .line 403
    :try_start_192
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 405
    const-string v4, "Failed to parse magic.mime file from directory located by environment variable MAGIC. File will be ignored."

    .line 407
    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_199} :catch_19b
    .catchall {:try_start_192 .. :try_end_199} :catchall_18d

    .line 410
    :goto_199
    move-object v1, v2

    .line 411
    goto :goto_1a0

    .line 412
    :catch_19b
    move-exception v1

    .line 413
    move-object v8, v2

    .line 414
    move-object v2, v1

    .line 415
    move-object v1, v8

    .line 416
    goto :goto_1aa

    .line 417
    :cond_1a0
    :goto_1a0
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 420
    move-result-object v1

    .line 421
    move-object v2, v1

    .line 422
    goto :goto_1b2

    .line 423
    :catchall_1a6
    move-exception v0

    .line 424
    goto/16 :goto_21e

    .line 426
    :catch_1a9
    move-exception v2

    .line 427
    :goto_1aa
    :try_start_1aa
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 429
    const-string v4, "Problem while processing magic.mime file from directory located by environment variable MAGIC. File will be ignored."

    .line 431
    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b1
    .catchall {:try_start_1aa .. :try_end_1b1} :catchall_1a6

    .line 434
    goto :goto_1a0

    .line 435
    :goto_1b2
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    .line 437
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 440
    move-result v3

    .line 441
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->magicMimeFileLocations:Ljava/util/List;

    .line 443
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 446
    move-result-object v4

    .line 447
    :goto_1be
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 450
    move-result v1

    .line 451
    if-nez v1, :cond_214

    .line 453
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    .line 455
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 458
    move-result v1

    .line 459
    if-ne v3, v1, :cond_213

    .line 461
    :try_start_1cc
    const-string v1, "eu/medsea/mimeutil/magic.mime"

    .line 463
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->class$1:Ljava/lang/Class;
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1d0} :catch_203
    .catchall {:try_start_1cc .. :try_end_1d0} :catchall_201

    .line 465
    if-nez v3, :cond_1e2

    .line 467
    :try_start_1d2
    sget v3, Leu/medsea/mimeutil/MimeUtil;->a:I
    :try_end_1d4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d2 .. :try_end_1d4} :catch_1d7
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1d4} :catch_203
    .catchall {:try_start_1d2 .. :try_end_1d4} :catchall_201

    .line 469
    :try_start_1d4
    sput-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->class$1:Ljava/lang/Class;

    .line 471
    goto :goto_1e3

    .line 472
    :catch_1d7
    move-exception v0

    .line 473
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    .line 475
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 478
    move-result-object v0

    .line 479
    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 482
    throw v1

    .line 483
    :cond_1e2
    move-object v0, v3

    .line 484
    :goto_1e3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 491
    move-result-object v2
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_1eb} :catch_203
    .catchall {:try_start_1d4 .. :try_end_1eb} :catchall_201

    .line 492
    if-eqz v2, :cond_20b

    .line 494
    :try_start_1ed
    const-string v0, "resource:eu/medsea/mimeutil/magic.mime"

    .line 496
    new-instance v1, Ljava/io/InputStreamReader;

    .line 498
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 501
    invoke-static {v0, v1}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->parse(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_1f7} :catch_1f8
    .catchall {:try_start_1ed .. :try_end_1f7} :catchall_201

    .line 504
    goto :goto_20b

    .line 505
    :catch_1f8
    move-exception v0

    .line 506
    :try_start_1f9
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 508
    const-string v3, "Failed to parse internal magic.mime file."

    .line 510
    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_200} :catch_203
    .catchall {:try_start_1f9 .. :try_end_200} :catchall_201

    .line 513
    goto :goto_20b

    .line 514
    :catchall_201
    move-exception v0

    .line 515
    goto :goto_20f

    .line 516
    :catch_203
    move-exception v0

    .line 517
    :try_start_204
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 519
    const-string v3, "Problem while processing internal magic.mime file."

    .line 521
    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20b
    .catchall {:try_start_204 .. :try_end_20b} :catchall_201

    .line 524
    :cond_20b
    :goto_20b
    invoke-static {v2}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 527
    goto :goto_213

    .line 528
    :goto_20f
    invoke-static {v2}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 531
    throw v0

    .line 532
    :cond_213
    :goto_213
    return-void

    .line 533
    :cond_214
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 536
    move-result-object v1

    .line 537
    check-cast v1, Ljava/lang/String;

    .line 539
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->parseMagicMimeFileLocation(Ljava/lang/String;)V

    .line 542
    goto :goto_1be

    .line 543
    :goto_21e
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 546
    throw v0

    .line 547
    :catchall_222
    move-exception v0

    .line 548
    move-object v1, v3

    .line 549
    :goto_224
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 552
    throw v0

    .line 553
    :goto_228
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 556
    throw v0

    .line 557
    :catchall_22c
    move-exception v0

    .line 558
    move-object v2, v4

    .line 559
    :goto_22e
    invoke-static {v2}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 562
    throw v0
.end method

.method private static parse(Ljava/lang/String;Ljava/io/Reader;)V
    .registers 14

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Ljava/io/BufferedReader;

    .line 7
    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    const-wide/16 v4, 0x1

    .line 21
    if-eqz v3, :cond_18

    .line 23
    move-wide v6, v4

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    const-wide/16 v6, 0x0

    .line 27
    :cond_1a
    :goto_1a
    if-nez v3, :cond_53

    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_25

    .line 35
    invoke-static {p0, v6, v7, p1}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->addEntry(Ljava/lang/String;JLjava/util/ArrayList;)V

    .line 38
    :cond_25
    sget-object p1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 40
    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_52

    .line 46
    sget-object p1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 48
    new-instance v2, Ljava/lang/StringBuffer;

    .line 50
    const-string v3, "Parsing \""

    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string p0, "\" took "

    .line 60
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    move-result-wide v3

    .line 67
    sub-long/2addr v3, v0

    .line 68
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 71
    const-string p0, " msec."

    .line 73
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 83
    :cond_52
    return-void

    .line 84
    :cond_53
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 91
    move-result v8

    .line 92
    if-eqz v8, :cond_9e

    .line 94
    const/4 v8, 0x0

    .line 95
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    .line 98
    move-result v9

    .line 99
    const/16 v10, 0x23

    .line 101
    if-ne v9, v10, :cond_67

    .line 103
    goto :goto_9e

    .line 104
    :cond_67
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_6a
    :goto_6a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 111
    if-eqz v3, :cond_71

    .line 113
    add-long/2addr v6, v4

    .line 114
    :cond_71
    if-nez v3, :cond_7a

    .line 116
    invoke-static {p0, v6, v7, p1}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->addEntry(Ljava/lang/String;JLjava/util/ArrayList;)V

    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 122
    goto :goto_1a

    .line 123
    :cond_7a
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 130
    move-result v9

    .line 131
    if-eqz v9, :cond_6a

    .line 133
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    .line 136
    move-result v9

    .line 137
    if-ne v9, v10, :cond_8b

    .line 139
    goto :goto_6a

    .line 140
    :cond_8b
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    .line 143
    move-result v9

    .line 144
    const/16 v11, 0x3e

    .line 146
    if-eq v9, v11, :cond_9a

    .line 148
    invoke-static {p0, v6, v7, p1}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->addEntry(Ljava/lang/String;JLjava/util/ArrayList;)V

    .line 151
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 154
    goto :goto_1a

    .line 155
    :cond_9a
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    goto :goto_6a

    .line 159
    :cond_9e
    :goto_9e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 162
    move-result-object v3

    .line 163
    if-eqz v3, :cond_1a

    .line 165
    add-long/2addr v6, v4

    .line 166
    goto/16 :goto_1a
.end method

.method private static parseMagicMimeFileLocation(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p0}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->getMagicFilesFromMagicMimeFileLocation(Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/io/File;

    .line 23
    :try_start_16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_4e

    .line 29
    new-instance v2, Ljava/io/FileInputStream;

    .line 31
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_21} :catch_55
    .catchall {:try_start_16 .. :try_end_21} :catchall_53

    .line 34
    :try_start_21
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    new-instance v3, Ljava/io/InputStreamReader;

    .line 40
    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 43
    invoke-static {v0, v3}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->parse(Ljava/lang/String;Ljava/io/Reader;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_2e
    .catchall {:try_start_21 .. :try_end_2d} :catchall_66

    .line 46
    goto :goto_4a

    .line 47
    :catch_2e
    :try_start_2e
    sget-object v0, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 49
    new-instance v3, Ljava/lang/StringBuffer;

    .line 51
    const-string v4, "Failed to parse "

    .line 53
    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v1, ". File will be ignored."

    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4a} :catch_4c
    .catchall {:try_start_2e .. :try_end_4a} :catchall_66

    .line 75
    :goto_4a
    move-object v0, v2

    .line 76
    goto :goto_4e

    .line 77
    :catch_4c
    move-exception v0

    .line 78
    goto :goto_58

    .line 79
    :cond_4e
    :goto_4e
    invoke-static {v0}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 82
    move-result-object v0

    .line 83
    goto :goto_9

    .line 84
    :catchall_53
    move-exception p0

    .line 85
    goto :goto_68

    .line 86
    :catch_55
    move-exception v1

    .line 87
    move-object v2, v0

    .line 88
    move-object v0, v1

    .line 89
    :goto_58
    :try_start_58
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 95
    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_66

    .line 98
    invoke-static {v2}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 101
    move-result-object v0

    .line 102
    goto :goto_9

    .line 103
    :catchall_66
    move-exception p0

    .line 104
    move-object v0, v2

    .line 105
    :goto_68
    invoke-static {v0}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 108
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

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_c
    if-lt v2, v1, :cond_f

    .line 15
    goto :goto_31

    .line 16
    :cond_f
    :try_start_f
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 24
    invoke-virtual {v3, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMatch([B)Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_24

    .line 30
    invoke-virtual {v3}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_24} :catch_27

    .line 37
    :cond_24
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_c

    .line 40
    :catch_27
    move-exception p1

    .line 41
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_31
    return-object v0
.end method

.method public getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 4
    new-instance v2, Ljava/io/FileInputStream;

    .line 6
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 9
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_1e
    .catchall {:try_start_1 .. :try_end_b} :catchall_1c

    .line 12
    :try_start_b
    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;

    .line 15
    move-result-object p1
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_f} :catch_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_16
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    .line 16
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 19
    return-object p1

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    move-object v0, v1

    .line 22
    goto :goto_30

    .line 23
    :catch_16
    move-exception p1

    .line 24
    move-object v0, v1

    .line 25
    goto :goto_1f

    .line 26
    :catch_19
    move-exception p1

    .line 27
    move-object v0, v1

    .line 28
    goto :goto_26

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    goto :goto_30

    .line 31
    :catch_1e
    move-exception p1

    .line 32
    :goto_1f
    :try_start_1f
    new-instance v1, Leu/medsea/mimeutil/MimeException;

    .line 34
    invoke-direct {v1, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    throw v1

    .line 38
    :catch_25
    move-exception p1

    .line 39
    :goto_26
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v1
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_1c

    .line 49
    :goto_30
    invoke-static {v0}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 52
    throw p1
.end method

.method public getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_c
    if-lt v2, v1, :cond_f

    .line 15
    goto :goto_31

    .line 16
    :cond_f
    :try_start_f
    sget-object v3, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->mMagicMimeEntries:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 24
    invoke-virtual {v3, p1}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMatch(Ljava/io/InputStream;)Leu/medsea/mimeutil/detector/MagicMimeEntry;

    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_24

    .line 30
    invoke-virtual {v3}, Leu/medsea/mimeutil/detector/MagicMimeEntry;->getMimeType()Leu/medsea/mimeutil/MimeType;

    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_24} :catch_27

    .line 37
    :cond_24
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_c

    .line 40
    :catch_27
    move-exception p1

    .line 41
    sget-object v1, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->log:Lorg/slf4j/Logger;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_31
    return-object v0
.end method

.method public getMimeTypesURL(Ljava/net/URL;)Ljava/util/Collection;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 4
    invoke-static {p1}, Leu/medsea/mimeutil/MimeUtil;->getInputStreamForURL(Ljava/net/URL;)Ljava/io/InputStream;

    .line 7
    move-result-object p1

    .line 8
    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_1a
    .catchall {:try_start_1 .. :try_end_a} :catchall_18

    .line 11
    :try_start_a
    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/detector/MagicMimeMimeDetector;->getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;

    .line 14
    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_15
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 15
    invoke-static {v1}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 18
    return-object p1

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    move-object v0, v1

    .line 21
    goto :goto_21

    .line 22
    :catch_15
    move-exception p1

    .line 23
    move-object v0, v1

    .line 24
    goto :goto_1b

    .line 25
    :catchall_18
    move-exception p1

    .line 26
    goto :goto_21

    .line 27
    :catch_1a
    move-exception p1

    .line 28
    :goto_1b
    :try_start_1b
    new-instance v1, Leu/medsea/mimeutil/MimeException;

    .line 30
    invoke-direct {v1, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    throw v1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_18

    .line 34
    :goto_21
    invoke-static {v0}, Leu/medsea/mimeutil/detector/MimeDetector;->closeStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 37
    throw p1
.end method
