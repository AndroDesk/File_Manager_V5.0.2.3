.class public Leu/medsea/mimeutil/MimeUtil2;
.super Ljava/lang/Object;
.source "MimeUtil2.java"


# static fields
.field public static final DIRECTORY_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

.field public static final UNKNOWN_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

.field public static synthetic class$0:Ljava/lang/Class;

.field private static log:Lorg/slf4j/Logger;

.field private static final mimeSplitter:Ljava/util/regex/Pattern;

.field private static mimeTypes:Ljava/util/Map;

.field private static nativeByteOrder:Ljava/nio/ByteOrder;


# instance fields
.field private mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Leu/medsea/mimeutil/MimeUtil2;->class$0:Ljava/lang/Class;

    .line 3
    if-nez v0, :cond_14

    .line 5
    :try_start_4
    const-class v0, Leu/medsea/mimeutil/MimeUtil2;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_6} :catch_9

    .line 7
    sput-object v0, Leu/medsea/mimeutil/MimeUtil2;->class$0:Ljava/lang/Class;

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
    sput-object v0, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    .line 27
    new-instance v0, Leu/medsea/mimeutil/MimeType;

    .line 29
    const-string v1, "application/directory"

    .line 31
    invoke-direct {v0, v1}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 34
    sput-object v0, Leu/medsea/mimeutil/MimeUtil2;->DIRECTORY_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    .line 36
    new-instance v0, Leu/medsea/mimeutil/MimeType;

    .line 38
    const-string v1, "application/octet-stream"

    .line 40
    invoke-direct {v0, v1}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 43
    sput-object v0, Leu/medsea/mimeutil/MimeUtil2;->UNKNOWN_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    .line 45
    const-string v0, "[/;]++"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Leu/medsea/mimeutil/MimeUtil2;->mimeSplitter:Ljava/util/regex/Pattern;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    .line 55
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Leu/medsea/mimeutil/MimeUtil2;->mimeTypes:Ljava/util/Map;

    .line 64
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Leu/medsea/mimeutil/MimeUtil2;->nativeByteOrder:Ljava/nio/ByteOrder;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Leu/medsea/mimeutil/MimeDetectorRegistry;

    .line 6
    invoke-direct {v0}, Leu/medsea/mimeutil/MimeDetectorRegistry;-><init>()V

    .line 9
    iput-object v0, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    .line 11
    return-void
.end method

.method public static addKnownMimeType(Leu/medsea/mimeutil/MimeType;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->addKnownMimeType(Ljava/lang/String;)V

    return-void
.end method

.method public static addKnownMimeType(Ljava/lang/String;)V
    .registers 3

    .line 2
    :try_start_0
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->mimeTypes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_13

    .line 4
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 5
    :cond_13
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getSubType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object p0, Leu/medsea/mimeutil/MimeUtil2;->mimeTypes:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Leu/medsea/mimeutil/MimeException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

.method private static getBestMatch(Ljava/lang/String;Ljava/util/List;)Leu/medsea/mimeutil/MimeType;
    .registers 11

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_14

    .line 8
    new-instance p0, Leu/medsea/mimeutil/MimeType;

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 20
    return-object p0

    .line 21
    :cond_14
    invoke-static {p0, p1}, Leu/medsea/mimeutil/MimeUtil2;->normaliseWantedMap(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 24
    move-result-object p0

    .line 25
    const/4 p1, 0x0

    .line 26
    const-wide/16 v0, 0x0

    .line 28
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v2

    .line 36
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2a

    .line 42
    return-object p1

    .line 43
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/util/List;

    .line 53
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v3

    .line 57
    :cond_38
    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_3f

    .line 63
    goto :goto_23

    .line 64
    :cond_3f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/String;

    .line 70
    invoke-static {v4}, Leu/medsea/mimeutil/MimeUtil2;->getMimeQuality(Ljava/lang/String;)D

    .line 73
    move-result-wide v5

    .line 74
    invoke-static {v4}, Leu/medsea/mimeutil/MimeUtil2;->getMediaType(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v7

    .line 78
    invoke-static {v4}, Leu/medsea/mimeutil/MimeUtil2;->getSubType(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v4

    .line 82
    cmpl-double v8, v5, v0

    .line 84
    if-lez v8, :cond_38

    .line 86
    new-instance p1, Leu/medsea/mimeutil/MimeType;

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    .line 90
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v1, "/"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p1, v0}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 112
    move-wide v0, v5

    .line 113
    goto :goto_38
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-eqz p0, :cond_1a

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1a

    :cond_b
    const-string v1, "."

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_14

    goto :goto_1a

    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static getFirstMimeType(Ljava/lang/String;)Leu/medsea/mimeutil/MimeType;
    .registers 3

    .line 1
    if-eqz p0, :cond_1f

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1f

    .line 13
    new-instance v0, Leu/medsea/mimeutil/MimeType;

    .line 15
    const-string v1, ","

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    const/4 v1, 0x0

    .line 22
    aget-object p0, p0, v1

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 31
    return-object v0

    .line 32
    :cond_1f
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static getInputStreamForURL(Ljava/net/URL;)Ljava/io/InputStream;
    .registers 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 4
    move-result-object p0
    :try_end_4
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p0

    .line 6
    :catch_5
    invoke-static {p0}, Leu/medsea/util/ZipJarUtil;->getInputStreamForURL(Ljava/net/URL;)Ljava/io/InputStream;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static getKnownMimeTypes()Ljava/util/Collection;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->mimeTypes:Ljava/util/Map;

    .line 8
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_16

    .line 22
    return-object v0

    .line 23
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 29
    sget-object v3, Leu/medsea/mimeutil/MimeUtil2;->mimeTypes:Ljava/util/Map;

    .line 31
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/util/Set;

    .line 37
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v3

    .line 41
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_2f

    .line 47
    goto :goto_f

    .line 48
    :cond_2f
    new-instance v4, Ljava/lang/StringBuffer;

    .line 50
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 54
    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v5, "/"

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Ljava/lang/String;

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    goto :goto_28
.end method

.method private static getList(Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, ","

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_c
    array-length v2, p0

    .line 14
    if-lt v1, v2, :cond_10

    .line 16
    return-object v0

    .line 17
    :cond_10
    aget-object v2, p0, v1

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_c
.end method

.method public static getMediaType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Leu/medsea/mimeutil/MimeType;

    .line 3
    invoke-direct {v0, p0}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeType;->getMediaType()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static getMimeQuality(Ljava/lang/String;)D
    .registers 7

    .line 1
    const-string v0, "]."

    .line 3
    const-string v1, "Invalid MimeType ["

    .line 5
    if-eqz p0, :cond_a0

    .line 7
    sget-object v2, Leu/medsea/mimeutil/MimeUtil2;->mimeSplitter:Ljava/util/regex/Pattern;

    .line 9
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    array-length v3, v2

    .line 14
    const/4 v4, 0x2

    .line 15
    if-lt v3, v4, :cond_8b

    .line 17
    array-length p0, v2

    .line 18
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-le p0, v4, :cond_6c

    .line 23
    :goto_16
    array-length p0, v2

    .line 24
    if-lt v4, p0, :cond_1a

    .line 26
    goto :goto_6c

    .line 27
    :cond_1a
    aget-object p0, v2, v4

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    const-string v5, "q="

    .line 35
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_69

    .line 41
    :try_start_28
    aget-object p0, v2, v4

    .line 43
    const-string v5, "="

    .line 45
    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    aget-object p0, p0, v3

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 58
    move-result-wide v2
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_3a} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3a} :catch_41

    .line 59
    cmpl-double p0, v2, v0

    .line 61
    if-lez p0, :cond_3f

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move-wide v0, v2

    .line 65
    :goto_40
    return-wide v0

    .line 66
    :catch_41
    move-exception p0

    .line 67
    new-instance v0, Leu/medsea/mimeutil/MimeException;

    .line 69
    const-string v1, "Error parsing MIME quality indicator."

    .line 71
    invoke-direct {v0, v1, p0}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    throw v0

    .line 75
    :catch_4a
    new-instance p0, Leu/medsea/mimeutil/MimeException;

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    .line 79
    const-string v1, "Invalid MIME quality indicator ["

    .line 81
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 84
    aget-object v1, v2, v4

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, "]. Must be a valid double between 0 and 1"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    invoke-direct {p0, v0}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p0

    .line 106
    :cond_69
    add-int/lit8 v4, v4, 0x1

    .line 108
    goto :goto_16

    .line 109
    :cond_6c
    :goto_6c
    const/4 p0, 0x0

    .line 110
    aget-object p0, v2, p0

    .line 112
    const-string v4, "*"

    .line 114
    invoke-static {p0, v4}, Leu/medsea/util/StringUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    move-result p0

    .line 118
    if-eqz p0, :cond_7d

    .line 120
    const-wide v0, 0x3f847ae147ae147bL  # 0.01

    .line 125
    return-wide v0

    .line 126
    :cond_7d
    aget-object p0, v2, v3

    .line 128
    invoke-static {p0, v4}, Leu/medsea/util/StringUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    move-result p0

    .line 132
    if-eqz p0, :cond_8a

    .line 134
    const-wide v0, 0x3f947ae147ae147bL  # 0.02

    .line 139
    :cond_8a
    return-wide v0

    .line 140
    :cond_8b
    new-instance v2, Leu/medsea/mimeutil/MimeException;

    .line 142
    new-instance v3, Ljava/lang/StringBuffer;

    .line 144
    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 156
    move-result-object p0

    .line 157
    invoke-direct {v2, p0}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/String;)V

    .line 160
    throw v2

    .line 161
    :cond_a0
    new-instance v2, Leu/medsea/mimeutil/MimeException;

    .line 163
    new-instance v3, Ljava/lang/StringBuffer;

    .line 165
    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 177
    move-result-object p0

    .line 178
    invoke-direct {v2, p0}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/String;)V

    .line 181
    throw v2
.end method

.method public static getMostSpecificMimeType(Ljava/util/Collection;)Leu/medsea/mimeutil/MimeType;
    .registers 5

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_d

    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Leu/medsea/mimeutil/MimeType;

    .line 20
    invoke-virtual {v2}, Leu/medsea/mimeutil/MimeType;->getSpecificity()I

    .line 23
    move-result v3

    .line 24
    if-le v3, v1, :cond_6

    .line 26
    invoke-virtual {v2}, Leu/medsea/mimeutil/MimeType;->getSpecificity()I

    .line 29
    move-result v1

    .line 30
    move-object v0, v2

    .line 31
    goto :goto_6
.end method

.method public static getNativeOrder()Ljava/nio/ByteOrder;
    .registers 1

    .line 1
    sget-object v0, Leu/medsea/mimeutil/MimeUtil2;->nativeByteOrder:Ljava/nio/ByteOrder;

    .line 3
    return-object v0
.end method

.method public static getPreferedMimeType(Ljava/lang/String;Ljava/lang/String;)Leu/medsea/mimeutil/MimeType;
    .registers 4

    .line 1
    if-eqz p1, :cond_3d

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3d

    .line 13
    if-eqz p0, :cond_18

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1a

    .line 25
    :cond_18
    const-string p0, "*/*"

    .line 27
    :cond_1a
    const-string v0, ":"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 32
    move-result v1

    .line 33
    if-lez v1, :cond_2c

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    :cond_2c
    const-string v0, " "

    .line 47
    const-string v1, ""

    .line 49
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    invoke-static {p1}, Leu/medsea/mimeutil/MimeUtil2;->getList(Ljava/lang/String;)Ljava/util/List;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {p0, p1}, Leu/medsea/mimeutil/MimeUtil2;->getBestMatch(Ljava/lang/String;Ljava/util/List;)Leu/medsea/mimeutil/MimeType;

    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_3d
    new-instance p0, Leu/medsea/mimeutil/MimeException;

    .line 64
    const-string p1, "Must specify at least one MIME type that can be provided."

    .line 66
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p0
.end method

.method public static getQuality(Ljava/lang/String;)D
    .registers 3

    .line 1
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeQuality(Ljava/lang/String;)D

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static getSubType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Leu/medsea/mimeutil/MimeType;

    .line 3
    invoke-direct {v0, p0}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeType;->getSubType()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static isMimeTypeKnown(Leu/medsea/mimeutil/MimeType;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->mimeTypes:Ljava/util/Map;

    invoke-virtual {p0}, Leu/medsea/mimeutil/MimeType;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_10

    return v0

    .line 2
    :cond_10
    invoke-virtual {p0}, Leu/medsea/mimeutil/MimeType;->getSubType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_18
    .catch Leu/medsea/mimeutil/MimeException; {:try_start_1 .. :try_end_18} :catch_19

    return p0

    :catch_19
    return v0
.end method

.method public static isMimeTypeKnown(Ljava/lang/String;)Z
    .registers 2

    .line 3
    new-instance v0, Leu/medsea/mimeutil/MimeType;

    invoke-direct {v0, p0}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Leu/medsea/mimeutil/MimeUtil2;->isMimeTypeKnown(Leu/medsea/mimeutil/MimeType;)Z

    move-result p0

    return p0
.end method

.method public static isTextMimeType(Leu/medsea/mimeutil/MimeType;)Z
    .registers 1

    .line 1
    instance-of p0, p0, Leu/medsea/mimeutil/TextMimeType;

    .line 3
    return p0
.end method

.method private static normaliseWantedMap(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 14

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    const-string v1, ","

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_c
    array-length v2, p0

    .line 14
    if-lt v1, v2, :cond_10

    .line 16
    return-object v0

    .line 17
    :cond_10
    aget-object v2, p0, v1

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Leu/medsea/mimeutil/MimeUtil2;->getMediaType(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-static {v2}, Leu/medsea/mimeutil/MimeUtil2;->getSubType(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    invoke-static {v2}, Leu/medsea/mimeutil/MimeUtil2;->getMimeQuality(Ljava/lang/String;)D

    .line 34
    move-result-wide v5

    .line 35
    const-string v2, "*"

    .line 37
    invoke-static {v3, v2}, Leu/medsea/util/StringUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    move-result v7

    .line 41
    const-string v8, ";q="

    .line 43
    if-eqz v7, :cond_6d

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v7

    .line 49
    :goto_30
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_38

    .line 55
    goto/16 :goto_107

    .line 57
    :cond_38
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/String;

    .line 63
    invoke-static {v2}, Leu/medsea/mimeutil/MimeUtil2;->getMediaType(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/util/List;

    .line 73
    if-nez v3, :cond_4f

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    :cond_4f
    new-instance v4, Ljava/lang/StringBuffer;

    .line 82
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object v9

    .line 86
    invoke-direct {v4, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 98
    move-result-object v4

    .line 99
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {v2}, Leu/medsea/mimeutil/MimeUtil2;->getMediaType(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    goto :goto_30

    .line 110
    :cond_6d
    invoke-static {v4, v2}, Leu/medsea/util/StringUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    move-result v2

    .line 114
    const-string v7, "/"

    .line 116
    if-eqz v2, :cond_c2

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 121
    move-result-object v2

    .line 122
    :cond_79
    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_81

    .line 128
    goto/16 :goto_107

    .line 130
    :cond_81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Ljava/lang/String;

    .line 136
    invoke-static {v4}, Leu/medsea/mimeutil/MimeUtil2;->getMediaType(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object v9

    .line 140
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    move-result v9

    .line 144
    if-eqz v9, :cond_79

    .line 146
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    move-result-object v9

    .line 150
    check-cast v9, Ljava/util/List;

    .line 152
    if-nez v9, :cond_9e

    .line 154
    new-instance v9, Ljava/util/ArrayList;

    .line 156
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 159
    :cond_9e
    new-instance v10, Ljava/lang/StringBuffer;

    .line 161
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    move-result-object v11

    .line 165
    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-static {v4}, Leu/medsea/mimeutil/MimeUtil2;->getSubType(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 187
    move-result-object v4

    .line 188
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    goto :goto_79

    .line 195
    :cond_c2
    new-instance v2, Ljava/lang/StringBuffer;

    .line 197
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    move-result-object v9

    .line 201
    invoke-direct {v2, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 213
    move-result-object v2

    .line 214
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_107

    .line 220
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Ljava/util/List;

    .line 226
    if-nez v2, :cond_e8

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    .line 230
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 233
    :cond_e8
    new-instance v9, Ljava/lang/StringBuffer;

    .line 235
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 238
    move-result-object v10

    .line 239
    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 254
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 257
    move-result-object v4

    .line 258
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_107
    :goto_107
    add-int/lit8 v1, v1, 0x1

    .line 266
    goto/16 :goto_c
.end method


# virtual methods
.method public getMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    .line 3
    invoke-virtual {v0, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->getMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final getMimeTypes(Ljava/io/File;)Ljava/util/Collection;
    .registers 3

    .line 13
    sget-object v0, Leu/medsea/mimeutil/MimeUtil2;->UNKNOWN_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-virtual {p0, p1, v0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/io/File;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeTypes(Ljava/io/File;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;
    .registers 7

    .line 14
    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    invoke-direct {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>()V

    if-nez p1, :cond_f

    .line 15
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    const-string v1, "File reference cannot be null."

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_4b

    .line 16
    :cond_f
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 17
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Getting MIME types for file ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 18
    :cond_33
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 19
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->DIRECTORY_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 20
    :cond_3f
    iget-object v1, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->getMimeTypes(Ljava/io/File;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 21
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 22
    :goto_4b
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 23
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_54
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_78

    .line 25
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "Retrieved MIME types ["

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_78
    return-object v0
.end method

.method public final getMimeTypes(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 3

    .line 26
    sget-object v0, Leu/medsea/mimeutil/MimeUtil2;->UNKNOWN_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-virtual {p0, p1, v0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/io/InputStream;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeTypes(Ljava/io/InputStream;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;
    .registers 7

    .line 27
    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    invoke-direct {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>()V

    if-nez p1, :cond_f

    .line 28
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    const-string v1, "InputStream reference cannot be null."

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_41

    .line 29
    :cond_f
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 30
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 31
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Getting MIME types for InputSteam ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 32
    :cond_35
    iget-object v1, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->getMimeTypes(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 34
    :goto_41
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 35
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_4a
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 37
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "Retrieved MIME types ["

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_6e
    return-object v0

    .line 38
    :cond_6f
    new-instance p1, Leu/medsea/mimeutil/MimeException;

    const-string p2, "InputStream must support the mark() and reset() methods."

    invoke-direct {p1, p2}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getMimeTypes(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3

    .line 39
    sget-object v0, Leu/medsea/mimeutil/MimeUtil2;->UNKNOWN_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-virtual {p0, p1, v0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/lang/String;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeTypes(Ljava/lang/String;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;
    .registers 7

    .line 40
    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    invoke-direct {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>()V

    if-nez p1, :cond_f

    .line 41
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    const-string v1, "fileName cannot be null."

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_4c

    .line 42
    :cond_f
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 43
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Getting MIME types for file name ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 44
    :cond_2f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 46
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->DIRECTORY_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 47
    :cond_40
    iget-object v1, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->getMimeTypes(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 49
    :goto_4c
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 50
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_55
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_79

    .line 52
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "Retrieved MIME types ["

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_79
    return-object v0
.end method

.method public final getMimeTypes(Ljava/net/URL;)Ljava/util/Collection;
    .registers 3

    .line 53
    sget-object v0, Leu/medsea/mimeutil/MimeUtil2;->UNKNOWN_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-virtual {p0, p1, v0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/net/URL;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeTypes(Ljava/net/URL;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;
    .registers 7

    .line 54
    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    invoke-direct {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>()V

    if-nez p1, :cond_f

    .line 55
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    const-string v1, "URL reference cannot be null."

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_50

    .line 56
    :cond_f
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 57
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Getting MIME types for URL ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 58
    :cond_2f
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 60
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->DIRECTORY_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 61
    :cond_44
    iget-object v1, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->getMimeTypes(Ljava/net/URL;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 63
    :goto_50
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 64
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_59
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 66
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "Retrieved MIME types ["

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_7d
    return-object v0
.end method

.method public final getMimeTypes([B)Ljava/util/Collection;
    .registers 3

    .line 1
    sget-object v0, Leu/medsea/mimeutil/MimeUtil2;->UNKNOWN_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-virtual {p0, p1, v0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes([BLeu/medsea/mimeutil/MimeType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeTypes([BLeu/medsea/mimeutil/MimeType;)Ljava/util/Collection;
    .registers 7

    .line 2
    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    invoke-direct {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>()V

    if-nez p1, :cond_f

    .line 3
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    const-string v1, "byte array cannot be null."

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_47

    .line 4
    :cond_f
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 5
    :try_start_17
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Getting MIME types for byte array ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Leu/medsea/util/StringUtil;->getHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_33} :catch_34

    goto :goto_3b

    :catch_34
    move-exception p1

    .line 6
    new-instance p2, Leu/medsea/mimeutil/MimeException;

    invoke-direct {p2, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 7
    :cond_3b
    :goto_3b
    iget-object v1, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->getMimeTypes([B)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 9
    :goto_47
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 10
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_50
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_74

    .line 12
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "Retrieved MIME types ["

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_74
    return-object v0
.end method

.method public registerMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    .line 3
    invoke-virtual {v0, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->registerMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public unregisterMimeDetector(Leu/medsea/mimeutil/detector/MimeDetector;)Leu/medsea/mimeutil/detector/MimeDetector;
    .registers 3

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v0, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->unregisterMimeDetector(Leu/medsea/mimeutil/detector/MimeDetector;)Leu/medsea/mimeutil/detector/MimeDetector;

    move-result-object p1

    return-object p1
.end method

.method public unregisterMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;
    .registers 3

    .line 2
    iget-object v0, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v0, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->unregisterMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;

    move-result-object p1

    return-object p1
.end method
