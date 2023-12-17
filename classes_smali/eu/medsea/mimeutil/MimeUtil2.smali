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

    sget-object v0, Leu/medsea/mimeutil/MimeUtil2;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_14

    :try_start_4
    const-class v0, Leu/medsea/mimeutil/MimeUtil2;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_6} :catch_9

    sput-object v0, Leu/medsea/mimeutil/MimeUtil2;->class$0:Ljava/lang/Class;

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

    sput-object v0, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    new-instance v0, Leu/medsea/mimeutil/MimeType;

    const-string v1, "application/directory"

    invoke-direct {v0, v1}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    sput-object v0, Leu/medsea/mimeutil/MimeUtil2;->DIRECTORY_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    new-instance v0, Leu/medsea/mimeutil/MimeType;

    const-string v1, "application/octet-stream"

    invoke-direct {v0, v1}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    sput-object v0, Leu/medsea/mimeutil/MimeUtil2;->UNKNOWN_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    const-string v0, "[/;]++"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Leu/medsea/mimeutil/MimeUtil2;->mimeSplitter:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Leu/medsea/mimeutil/MimeUtil2;->mimeTypes:Ljava/util/Map;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sput-object v0, Leu/medsea/mimeutil/MimeUtil2;->nativeByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-direct {v0}, Leu/medsea/mimeutil/MimeDetectorRegistry;-><init>()V

    iput-object v0, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    return-void
.end method

.method public static addKnownMimeType(Leu/medsea/mimeutil/MimeType;)V
    .registers 1

    invoke-virtual {p0}, Leu/medsea/mimeutil/MimeType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->addKnownMimeType(Ljava/lang/String;)V

    return-void
.end method

.method public static addKnownMimeType(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->mimeTypes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_13

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    :cond_13
    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getSubType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object p0, Leu/medsea/mimeutil/MimeUtil2;->mimeTypes:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Leu/medsea/mimeutil/MimeException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

.method private static getBestMatch(Ljava/lang/String;Ljava/util/List;)Leu/medsea/mimeutil/MimeType;
    .registers 11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    new-instance p0, Leu/medsea/mimeutil/MimeType;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_14
    invoke-static {p0, p1}, Leu/medsea/mimeutil/MimeUtil2;->normaliseWantedMap(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2a

    return-object p1

    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_38
    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3f

    goto :goto_23

    :cond_3f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Leu/medsea/mimeutil/MimeUtil2;->getMimeQuality(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4}, Leu/medsea/mimeutil/MimeUtil2;->getMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Leu/medsea/mimeutil/MimeUtil2;->getSubType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    cmpl-double v8, v5, v0

    if-lez v8, :cond_38

    new-instance p1, Leu/medsea/mimeutil/MimeType;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    move-wide v0, v5

    goto :goto_38
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .registers 1

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

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1a

    :cond_b
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_14

    goto :goto_1a

    :cond_14
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static getFirstMimeType(Ljava/lang/String;)Leu/medsea/mimeutil/MimeType;
    .registers 3

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Leu/medsea/mimeutil/MimeType;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInputStreamForURL(Ljava/net/URL;)Ljava/io/InputStream;
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    invoke-static {p0}, Leu/medsea/util/ZipJarUtil;->getInputStreamForURL(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getKnownMimeTypes()Ljava/util/Collection;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->mimeTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_16

    return-object v0

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Leu/medsea/mimeutil/MimeUtil2;->mimeTypes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2f

    goto :goto_f

    :cond_2f
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28
.end method

.method private static getList(Ljava/lang/String;)Ljava/util/List;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_c
    array-length v2, p0

    if-lt v1, v2, :cond_10

    return-object v0

    :cond_10
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public static getMediaType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    new-instance v0, Leu/medsea/mimeutil/MimeType;

    invoke-direct {v0, p0}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeType;->getMediaType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMimeQuality(Ljava/lang/String;)D
    .registers 7

    const-string v0, "]."

    const-string v1, "Invalid MimeType ["

    if-eqz p0, :cond_a0

    sget-object v2, Leu/medsea/mimeutil/MimeUtil2;->mimeSplitter:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_8b

    array-length p0, v2

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    const/4 v3, 0x1

    if-le p0, v4, :cond_6c

    :goto_16
    array-length p0, v2

    if-lt v4, p0, :cond_1a

    goto :goto_6c

    :cond_1a
    aget-object p0, v2, v4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v5, "q="

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_69

    :try_start_28
    aget-object p0, v2, v4

    const-string v5, "="

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_3a} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3a} :catch_41

    cmpl-double p0, v2, v0

    if-lez p0, :cond_3f

    goto :goto_40

    :cond_3f
    move-wide v0, v2

    :goto_40
    return-wide v0

    :catch_41
    move-exception p0

    new-instance v0, Leu/medsea/mimeutil/MimeException;

    const-string v1, "Error parsing MIME quality indicator."

    invoke-direct {v0, v1, p0}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4a
    new-instance p0, Leu/medsea/mimeutil/MimeException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Invalid MIME quality indicator ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v1, v2, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]. Must be a valid double between 0 and 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_6c
    :goto_6c
    const/4 p0, 0x0

    aget-object p0, v2, p0

    const-string v4, "*"

    invoke-static {p0, v4}, Leu/medsea/util/StringUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7d

    const-wide v0, 0x3f847ae147ae147bL  # 0.01

    return-wide v0

    :cond_7d
    aget-object p0, v2, v3

    invoke-static {p0, v4}, Leu/medsea/util/StringUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8a

    const-wide v0, 0x3f947ae147ae147bL  # 0.02

    :cond_8a
    return-wide v0

    :cond_8b
    new-instance v2, Leu/medsea/mimeutil/MimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a0
    new-instance v2, Leu/medsea/mimeutil/MimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getMostSpecificMimeType(Ljava/util/Collection;)Leu/medsea/mimeutil/MimeType;
    .registers 5

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-object v0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/medsea/mimeutil/MimeType;

    invoke-virtual {v2}, Leu/medsea/mimeutil/MimeType;->getSpecificity()I

    move-result v3

    if-le v3, v1, :cond_6

    invoke-virtual {v2}, Leu/medsea/mimeutil/MimeType;->getSpecificity()I

    move-result v1

    move-object v0, v2

    goto :goto_6
.end method

.method public static getNativeOrder()Ljava/nio/ByteOrder;
    .registers 1

    sget-object v0, Leu/medsea/mimeutil/MimeUtil2;->nativeByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public static getPreferedMimeType(Ljava/lang/String;Ljava/lang/String;)Leu/medsea/mimeutil/MimeType;
    .registers 4

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3d

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1a

    :cond_18
    const-string p0, "*/*"

    :cond_1a
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2c
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Leu/medsea/mimeutil/MimeUtil2;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Leu/medsea/mimeutil/MimeUtil2;->getBestMatch(Ljava/lang/String;Ljava/util/List;)Leu/medsea/mimeutil/MimeType;

    move-result-object p0

    return-object p0

    :cond_3d
    new-instance p0, Leu/medsea/mimeutil/MimeException;

    const-string p1, "Must specify at least one MIME type that can be provided."

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getQuality(Ljava/lang/String;)D
    .registers 3

    invoke-static {p0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeQuality(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getSubType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    new-instance v0, Leu/medsea/mimeutil/MimeType;

    invoke-direct {v0, p0}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Leu/medsea/mimeutil/MimeType;->getSubType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isMimeTypeKnown(Leu/medsea/mimeutil/MimeType;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->mimeTypes:Ljava/util/Map;

    invoke-virtual {p0}, Leu/medsea/mimeutil/MimeType;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_10

    return v0

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

    new-instance v0, Leu/medsea/mimeutil/MimeType;

    invoke-direct {v0, p0}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Leu/medsea/mimeutil/MimeUtil2;->isMimeTypeKnown(Leu/medsea/mimeutil/MimeType;)Z

    move-result p0

    return p0
.end method

.method public static isTextMimeType(Leu/medsea/mimeutil/MimeType;)Z
    .registers 1

    instance-of p0, p0, Leu/medsea/mimeutil/TextMimeType;

    return p0
.end method

.method private static normaliseWantedMap(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 14

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_c
    array-length v2, p0

    if-lt v1, v2, :cond_10

    return-object v0

    :cond_10
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Leu/medsea/mimeutil/MimeUtil2;->getMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Leu/medsea/mimeutil/MimeUtil2;->getSubType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Leu/medsea/mimeutil/MimeUtil2;->getMimeQuality(Ljava/lang/String;)D

    move-result-wide v5

    const-string v2, "*"

    invoke-static {v3, v2}, Leu/medsea/util/StringUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const-string v8, ";q="

    if-eqz v7, :cond_6d

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_30
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_38

    goto/16 :goto_107

    :cond_38
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Leu/medsea/mimeutil/MimeUtil2;->getMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_4f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_4f
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Leu/medsea/mimeutil/MimeUtil2;->getMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_6d
    invoke-static {v4, v2}, Leu/medsea/util/StringUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v7, "/"

    if-eqz v2, :cond_c2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_79
    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_81

    goto/16 :goto_107

    :cond_81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Leu/medsea/mimeutil/MimeUtil2;->getMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_9e

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_9e
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v4}, Leu/medsea/mimeutil/MimeUtil2;->getSubType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_79

    :cond_c2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_e8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_e8
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_107
    :goto_107
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c
.end method


# virtual methods
.method public getMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v0, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->getMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeTypes(Ljava/io/File;)Ljava/util/Collection;
    .registers 3

    sget-object v0, Leu/medsea/mimeutil/MimeUtil2;->UNKNOWN_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-virtual {p0, p1, v0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/io/File;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeTypes(Ljava/io/File;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;
    .registers 7

    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    invoke-direct {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>()V

    if-nez p1, :cond_f

    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    const-string v1, "File reference cannot be null."

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_4b

    :cond_f
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_33

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

    :cond_33
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3f

    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->DIRECTORY_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_3f
    iget-object v1, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->getMimeTypes(Ljava/io/File;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :goto_4b
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_54

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_54
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_78

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

    sget-object v0, Leu/medsea/mimeutil/MimeUtil2;->UNKNOWN_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-virtual {p0, p1, v0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/io/InputStream;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeTypes(Ljava/io/InputStream;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;
    .registers 7

    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    invoke-direct {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>()V

    if-nez p1, :cond_f

    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    const-string v1, "InputStream reference cannot be null."

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_41

    :cond_f
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_6f

    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_35

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

    :cond_35
    iget-object v1, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->getMimeTypes(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :goto_41
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4a

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4a
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_6e

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

    :cond_6f
    new-instance p1, Leu/medsea/mimeutil/MimeException;

    const-string p2, "InputStream must support the mark() and reset() methods."

    invoke-direct {p1, p2}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getMimeTypes(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3

    sget-object v0, Leu/medsea/mimeutil/MimeUtil2;->UNKNOWN_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-virtual {p0, p1, v0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/lang/String;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeTypes(Ljava/lang/String;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;
    .registers 7

    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    invoke-direct {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>()V

    if-nez p1, :cond_f

    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    const-string v1, "fileName cannot be null."

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_4c

    :cond_f
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2f

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

    :cond_2f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_40

    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->DIRECTORY_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_40
    iget-object v1, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->getMimeTypes(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :goto_4c
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_55
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_79

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

    sget-object v0, Leu/medsea/mimeutil/MimeUtil2;->UNKNOWN_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-virtual {p0, p1, v0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes(Ljava/net/URL;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeTypes(Ljava/net/URL;Leu/medsea/mimeutil/MimeType;)Ljava/util/Collection;
    .registers 7

    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    invoke-direct {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>()V

    if-nez p1, :cond_f

    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    const-string v1, "URL reference cannot be null."

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_50

    :cond_f
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2f

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

    :cond_2f
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_44

    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->DIRECTORY_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_44
    iget-object v1, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->getMimeTypes(Ljava/net/URL;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :goto_50
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_59

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_59
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_7d

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

    sget-object v0, Leu/medsea/mimeutil/MimeUtil2;->UNKNOWN_MIME_TYPE:Leu/medsea/mimeutil/MimeType;

    invoke-virtual {p0, p1, v0}, Leu/medsea/mimeutil/MimeUtil2;->getMimeTypes([BLeu/medsea/mimeutil/MimeType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeTypes([BLeu/medsea/mimeutil/MimeType;)Ljava/util/Collection;
    .registers 7

    new-instance v0, Leu/medsea/mimeutil/MimeTypeHashSet;

    invoke-direct {v0}, Leu/medsea/mimeutil/MimeTypeHashSet;-><init>()V

    if-nez p1, :cond_f

    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    const-string v1, "byte array cannot be null."

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_47

    :cond_f
    sget-object v1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3b

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

    new-instance p2, Leu/medsea/mimeutil/MimeException;

    invoke-direct {p2, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3b
    :goto_3b
    iget-object v1, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v1, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->getMimeTypes([B)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :goto_47
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_50

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_50
    sget-object p1, Leu/medsea/mimeutil/MimeUtil2;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_74

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

    iget-object v0, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v0, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->registerMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;

    move-result-object p1

    return-object p1
.end method

.method public unregisterMimeDetector(Leu/medsea/mimeutil/detector/MimeDetector;)Leu/medsea/mimeutil/detector/MimeDetector;
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v0, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->unregisterMimeDetector(Leu/medsea/mimeutil/detector/MimeDetector;)Leu/medsea/mimeutil/detector/MimeDetector;

    move-result-object p1

    return-object p1
.end method

.method public unregisterMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;
    .registers 3

    iget-object v0, p0, Leu/medsea/mimeutil/MimeUtil2;->mimeDetectorRegistry:Leu/medsea/mimeutil/MimeDetectorRegistry;

    invoke-virtual {v0, p1}, Leu/medsea/mimeutil/MimeDetectorRegistry;->unregisterMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;

    move-result-object p1

    return-object p1
.end method
