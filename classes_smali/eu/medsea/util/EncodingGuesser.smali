.class public Leu/medsea/util/EncodingGuesser;
.super Ljava/lang/Object;
.source "EncodingGuesser.java"


# static fields
.field private static boms:Ljava/util/Map; = null

.field public static synthetic class$0:Ljava/lang/Class; = null

.field private static defaultJVMEncoding:Ljava/lang/String; = null

.field private static log:Lorg/slf4j/Logger; = null

.field private static final serialVersionUID:J = -0x36ee7c97f3f70f7L

.field private static supportedEncodings:Ljava/util/Collection;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    sget-object v0, Leu/medsea/util/EncodingGuesser;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_14

    :try_start_4
    const-class v0, Leu/medsea/util/EncodingGuesser;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_6} :catch_9

    sput-object v0, Leu/medsea/util/EncodingGuesser;->class$0:Ljava/lang/Class;

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

    sput-object v0, Leu/medsea/util/EncodingGuesser;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/medsea/util/EncodingGuesser;->defaultJVMEncoding:Ljava/lang/String;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v3, 0x2

    const/4 v4, -0x2

    aput-byte v4, v2, v3

    const/4 v5, 0x3

    const/4 v6, -0x1

    aput-byte v6, v2, v5

    const-string v7, "UTF-32BE"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    new-array v2, v1, [B

    const/4 v7, 0x0

    aput-byte v6, v2, v7

    const/4 v6, 0x1

    aput-byte v4, v2, v6

    const-string v4, "UTF-32LE"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    new-array v2, v3, [B

    fill-array-data v2, :array_c0

    const-string v4, "UTF-16BE"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    new-array v2, v3, [B

    fill-array-data v2, :array_c6

    const-string v3, "UTF-16LE"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    new-array v2, v5, [B

    fill-array-data v2, :array_cc

    const-string v3, "UTF-8"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    new-array v2, v5, [B

    fill-array-data v2, :array_d2

    const-string v3, "UTF-7"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    new-array v2, v5, [B

    fill-array-data v2, :array_d8

    const-string v3, "UTF-1"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    new-array v1, v1, [B

    fill-array-data v1, :array_de

    const-string v2, "UTF-EBCDIC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    new-array v1, v5, [B

    fill-array-data v1, :array_e4

    const-string v2, "SCSU"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    new-array v1, v5, [B

    fill-array-data v1, :array_ea

    const-string v2, "BOCU-1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_c0
    .array-data 1
        -0x2t
        -0x1t
    .end array-data

    nop

    :array_c6
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    nop

    :array_cc
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data

    :array_d2
    .array-data 1
        0x2bt
        0x2ft
        0x76t
    .end array-data

    :array_d8
    .array-data 1
        -0x9t
        0x64t
        0x4ct
    .end array-data

    :array_de
    .array-data 1
        -0x23t
        0x73t
        0x66t
        0x73t
    .end array-data

    :array_e4
    .array-data 1
        0xet
        -0x2t
        -0x1t
    .end array-data

    :array_ea
    .array-data 1
        -0x5t
        -0x12t
        0x28t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareByteArrays([BI[BII)Z
    .registers 9

    array-length v0, p0

    add-int v1, p1, p4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1f

    array-length v0, p2

    add-int v1, p3, p4

    if-ge v0, v1, :cond_c

    goto :goto_1f

    :cond_c
    move v0, v2

    :goto_d
    if-lt v0, p4, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1f
    :goto_1f
    return v2
.end method

.method public static getByteArraySubArray([BII)[B
    .registers 6

    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_6

    return-object p0

    :cond_6
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_9
    if-lt v1, p2, :cond_c

    return-object v0

    :cond_c
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method public static getCanonicalEncodingNamesSupportedByJVM()Ljava/util/Collection;
    .registers 4

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {}, Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3f

    sget-object v1, Leu/medsea/util/EncodingGuesser;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3e

    sget-object v1, Leu/medsea/util/EncodingGuesser;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "The following ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "] encodings will be used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_3e
    return-object v0

    :cond_3f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method public static getDefaultEncoding()Ljava/lang/String;
    .registers 1

    sget-object v0, Leu/medsea/util/EncodingGuesser;->defaultJVMEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public static getLengthBOM(Ljava/lang/String;[B)I
    .registers 4

    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    array-length v0, p0

    invoke-static {p0, v1, p1, v1, v0}, Leu/medsea/util/EncodingGuesser;->compareByteArrays([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_1b

    array-length p0, p0

    return p0

    :cond_1b
    return v1
.end method

.method public static getPossibleEncodings([B)Ljava/util/Collection;
    .registers 10

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    if-eqz p0, :cond_86

    array-length v1, p0

    if-nez v1, :cond_c

    goto/16 :goto_86

    :cond_c
    const/4 v1, 0x0

    sget-object v2, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1a

    return-object v0

    :cond_1a
    :try_start_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_20} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_5e

    :try_start_20
    invoke-static {v3, p0}, Leu/medsea/util/EncodingGuesser;->getLengthBOM(Ljava/lang/String;[B)I

    move-result v1

    new-instance v4, Ljava/lang/String;

    array-length v5, p0

    sub-int/2addr v5, v1

    invoke-static {p0, v1, v5}, Leu/medsea/util/EncodingGuesser;->getByteArraySubArray([BII)[B

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-le v5, v6, :cond_41

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_41} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_41} :catch_5a

    :cond_41
    :try_start_41
    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_45
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_41 .. :try_end_45} :catch_6b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_41 .. :try_end_45} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_5a

    :try_start_45
    array-length v5, v4

    invoke-static {p0, v1, v4, v7, v5}, Leu/medsea/util/EncodingGuesser;->compareByteArrays([BI[BII)Z

    move-result v4

    if-nez v4, :cond_4d

    goto :goto_6b

    :cond_4d
    if-eqz v1, :cond_56

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_56
    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_45 .. :try_end_59} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_59} :catch_5a

    goto :goto_6b

    :catch_5a
    move-exception v1

    goto :goto_62

    :catch_5c
    move-object v1, v3

    goto :goto_6d

    :catch_5e
    move-exception v3

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    :goto_62
    sget-object v4, Leu/medsea/util/EncodingGuesser;->log:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_6b
    :goto_6b
    move-object v1, v3

    goto :goto_13

    :catch_6d
    :goto_6d
    sget-object v3, Leu/medsea/util/EncodingGuesser;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "The encoding ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "] is not supported by your JVM."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_13

    :cond_86
    :goto_86
    return-object v0
.end method

.method public static getSupportedEncodings()Ljava/util/Collection;
    .registers 1

    sget-object v0, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    return-object v0
.end method

.method public static getValidEncodings([Ljava/lang/String;)Ljava/util/Collection;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-lt v1, v2, :cond_a

    return-object v0

    :cond_a
    sget-object v2, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    aget-object v3, p0, v1

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static isKnownEncoding(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static removeEncoding(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static removeEncodings([Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-lt v0, v2, :cond_6

    return v1

    :cond_6
    aget-object v2, p0, v0

    invoke-static {v2}, Leu/medsea/util/EncodingGuesser;->removeEncoding(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static setSupportedEncodings(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sget-object v1, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2e

    if-eqz p0, :cond_2d

    sget-object v1, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_2d

    :cond_23
    sget-object v1, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2d
    :goto_2d
    return-object v0

    :cond_2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method
