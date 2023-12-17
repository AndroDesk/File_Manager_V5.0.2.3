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

    .line 1
    sget-object v0, Leu/medsea/util/EncodingGuesser;->class$0:Ljava/lang/Class;

    .line 3
    if-nez v0, :cond_14

    .line 5
    :try_start_4
    const-class v0, Leu/medsea/util/EncodingGuesser;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_6} :catch_9

    .line 7
    sput-object v0, Leu/medsea/util/EncodingGuesser;->class$0:Ljava/lang/Class;

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
    sput-object v0, Leu/medsea/util/EncodingGuesser;->log:Lorg/slf4j/Logger;

    .line 27
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 29
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 31
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 34
    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Leu/medsea/util/EncodingGuesser;->defaultJVMEncoding:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/TreeSet;

    .line 53
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 56
    sput-object v0, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    .line 60
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    sput-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    .line 65
    const/4 v1, 0x4

    .line 66
    new-array v2, v1, [B

    .line 68
    const/4 v3, 0x2

    .line 69
    const/4 v4, -0x2

    .line 70
    aput-byte v4, v2, v3

    .line 72
    const/4 v5, 0x3

    .line 73
    const/4 v6, -0x1

    .line 74
    aput-byte v6, v2, v5

    .line 76
    const-string v7, "UTF-32BE"

    .line 78
    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    .line 83
    new-array v2, v1, [B

    .line 85
    const/4 v7, 0x0

    .line 86
    aput-byte v6, v2, v7

    .line 88
    const/4 v6, 0x1

    .line 89
    aput-byte v4, v2, v6

    .line 91
    const-string v4, "UTF-32LE"

    .line 93
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    .line 98
    new-array v2, v3, [B

    .line 100
    fill-array-data v2, :array_c0

    .line 103
    const-string v4, "UTF-16BE"

    .line 105
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    .line 110
    new-array v2, v3, [B

    .line 112
    fill-array-data v2, :array_c6

    .line 115
    const-string v3, "UTF-16LE"

    .line 117
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    .line 122
    new-array v2, v5, [B

    .line 124
    fill-array-data v2, :array_cc

    .line 127
    const-string v3, "UTF-8"

    .line 129
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    .line 134
    new-array v2, v5, [B

    .line 136
    fill-array-data v2, :array_d2

    .line 139
    const-string v3, "UTF-7"

    .line 141
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    .line 146
    new-array v2, v5, [B

    .line 148
    fill-array-data v2, :array_d8

    .line 151
    const-string v3, "UTF-1"

    .line 153
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    .line 158
    new-array v1, v1, [B

    .line 160
    fill-array-data v1, :array_de

    .line 163
    const-string v2, "UTF-EBCDIC"

    .line 165
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    .line 170
    new-array v1, v5, [B

    .line 172
    fill-array-data v1, :array_e4

    .line 175
    const-string v2, "SCSU"

    .line 177
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    .line 182
    new-array v1, v5, [B

    .line 184
    fill-array-data v1, :array_ea

    .line 187
    const-string v2, "BOCU-1"

    .line 189
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void

    .line 193
    :array_c0
    .array-data 1
        -0x2t
        -0x1t
    .end array-data

    .line 198
    nop

    .line 199
    :array_c6
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    .line 204
    nop

    .line 205
    :array_cc
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data

    .line 211
    :array_d2
    .array-data 1
        0x2bt
        0x2ft
        0x76t
    .end array-data

    .line 217
    :array_d8
    .array-data 1
        -0x9t
        0x64t
        0x4ct
    .end array-data

    .line 223
    :array_de
    .array-data 1
        -0x23t
        0x73t
        0x66t
        0x73t
    .end array-data

    .line 229
    :array_e4
    .array-data 1
        0xet
        -0x2t
        -0x1t
    .end array-data

    .line 235
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

    .line 1
    array-length v0, p0

    .line 2
    add-int v1, p1, p4

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lt v0, v1, :cond_1f

    .line 7
    array-length v0, p2

    .line 8
    add-int v1, p3, p4

    .line 10
    if-ge v0, v1, :cond_c

    .line 12
    goto :goto_1f

    .line 13
    :cond_c
    move v0, v2

    .line 14
    :goto_d
    if-lt v0, p4, :cond_11

    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_11
    add-int v1, p1, v0

    .line 20
    aget-byte v1, p0, v1

    .line 22
    add-int v3, p3, v0

    .line 24
    aget-byte v3, p2, v3

    .line 26
    if-eq v1, v3, :cond_1c

    .line 28
    return v2

    .line 29
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_d

    .line 32
    :cond_1f
    :goto_1f
    return v2
.end method

.method public static getByteArraySubArray([BII)[B
    .registers 6

    .line 1
    add-int v0, p1, p2

    .line 3
    array-length v1, p0

    .line 4
    if-le v0, v1, :cond_6

    .line 6
    return-object p0

    .line 7
    :cond_6
    new-array v0, p2, [B

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_9
    if-lt v1, p2, :cond_c

    .line 12
    return-object v0

    .line 13
    :cond_c
    add-int v2, p1, v1

    .line 15
    aget-byte v2, p0, v2

    .line 17
    aput-byte v2, v0, v1

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_9
.end method

.method public static getCanonicalEncodingNamesSupportedByJVM()Ljava/util/Collection;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 3
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 6
    invoke-static {}, Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_3f

    .line 24
    sget-object v1, Leu/medsea/util/EncodingGuesser;->log:Lorg/slf4j/Logger;

    .line 26
    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3e

    .line 32
    sget-object v1, Leu/medsea/util/EncodingGuesser;->log:Lorg/slf4j/Logger;

    .line 34
    new-instance v2, Ljava/lang/StringBuffer;

    .line 36
    const-string v3, "The following ["

    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    .line 44
    move-result v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 48
    const-string v3, "] encodings will be used: "

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 63
    :cond_3e
    return-object v0

    .line 64
    :cond_3f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_11
.end method

.method public static getDefaultEncoding()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Leu/medsea/util/EncodingGuesser;->defaultJVMEncoding:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getLengthBOM(Ljava/lang/String;[B)I
    .registers 4

    .line 1
    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    sget-object v0, Leu/medsea/util/EncodingGuesser;->boms:Ljava/util/Map;

    .line 13
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, [B

    .line 19
    array-length v0, p0

    .line 20
    invoke-static {p0, v1, p1, v1, v0}, Leu/medsea/util/EncodingGuesser;->compareByteArrays([BI[BII)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1b

    .line 26
    array-length p0, p0

    .line 27
    return p0

    .line 28
    :cond_1b
    return v1
.end method

.method public static getPossibleEncodings([B)Ljava/util/Collection;
    .registers 10

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 3
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 6
    if-eqz p0, :cond_86

    .line 8
    array-length v1, p0

    .line 9
    if-nez v1, :cond_c

    .line 11
    goto/16 :goto_86

    .line 13
    :cond_c
    const/4 v1, 0x0

    .line 14
    sget-object v2, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    .line 16
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v2

    .line 20
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1a

    .line 26
    return-object v0

    .line 27
    :cond_1a
    :try_start_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/String;
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_20} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_5e

    .line 33
    :try_start_20
    invoke-static {v3, p0}, Leu/medsea/util/EncodingGuesser;->getLengthBOM(Ljava/lang/String;[B)I

    .line 36
    move-result v1

    .line 37
    new-instance v4, Ljava/lang/String;

    .line 39
    array-length v5, p0

    .line 40
    sub-int/2addr v5, v1

    .line 41
    invoke-static {p0, v1, v5}, Leu/medsea/util/EncodingGuesser;->getByteArraySubArray([BII)[B

    .line 44
    move-result-object v5

    .line 45
    invoke-direct {v4, v5, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 48
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 51
    move-result v5

    .line 52
    const/4 v6, 0x1

    .line 53
    const/4 v7, 0x0

    .line 54
    if-le v5, v6, :cond_41

    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 59
    move-result v5

    .line 60
    add-int/lit8 v5, v5, -0x2

    .line 62
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    move-result-object v4
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_41} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_41} :catch_5a

    .line 66
    :cond_41
    :try_start_41
    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 69
    move-result-object v4
    :try_end_45
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_41 .. :try_end_45} :catch_6b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_41 .. :try_end_45} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_5a

    .line 70
    :try_start_45
    array-length v5, v4

    .line 71
    invoke-static {p0, v1, v4, v7, v5}, Leu/medsea/util/EncodingGuesser;->compareByteArrays([BI[BII)Z

    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_4d

    .line 77
    goto :goto_6b

    .line 78
    :cond_4d
    if-eqz v1, :cond_56

    .line 80
    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 83
    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 86
    return-object v0

    .line 87
    :cond_56
    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_45 .. :try_end_59} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_59} :catch_5a

    .line 90
    goto :goto_6b

    .line 91
    :catch_5a
    move-exception v1

    .line 92
    goto :goto_62

    .line 93
    :catch_5c
    move-object v1, v3

    .line 94
    goto :goto_6d

    .line 95
    :catch_5e
    move-exception v3

    .line 96
    move-object v8, v3

    .line 97
    move-object v3, v1

    .line 98
    move-object v1, v8

    .line 99
    :goto_62
    sget-object v4, Leu/medsea/util/EncodingGuesser;->log:Lorg/slf4j/Logger;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 104
    move-result-object v5

    .line 105
    invoke-interface {v4, v5, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    :catch_6b
    :goto_6b
    move-object v1, v3

    .line 109
    goto :goto_13

    .line 110
    :catch_6d
    :goto_6d
    sget-object v3, Leu/medsea/util/EncodingGuesser;->log:Lorg/slf4j/Logger;

    .line 112
    new-instance v4, Ljava/lang/StringBuffer;

    .line 114
    const-string v5, "The encoding ["

    .line 116
    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v5, "] is not supported by your JVM."

    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 130
    move-result-object v4

    .line 131
    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 134
    goto :goto_13

    .line 135
    :cond_86
    :goto_86
    return-object v0
.end method

.method public static getSupportedEncodings()Ljava/util/Collection;
    .registers 1

    .line 1
    sget-object v0, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    .line 3
    return-object v0
.end method

.method public static getValidEncodings([Ljava/lang/String;)Ljava/util/Collection;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    array-length v2, p0

    .line 8
    if-lt v1, v2, :cond_a

    .line 10
    return-object v0

    .line 11
    :cond_a
    sget-object v2, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    .line 13
    aget-object v3, p0, v1

    .line 15
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_19

    .line 21
    aget-object v2, p0, v1

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_6
.end method

.method public static isKnownEncoding(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static removeEncoding(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static removeEncodings([Ljava/lang/String;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    array-length v2, p0

    .line 4
    if-lt v0, v2, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    aget-object v2, p0, v0

    .line 9
    invoke-static {v2}, Leu/medsea/util/EncodingGuesser;->removeEncoding(Ljava/lang/String;)Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_f

    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 18
    goto :goto_2
.end method

.method public static setSupportedEncodings(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 3
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 6
    sget-object v1, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    .line 8
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_2e

    .line 18
    if-eqz p0, :cond_2d

    .line 20
    sget-object v1, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    .line 22
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 25
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p0

    .line 29
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_23

    .line 35
    goto :goto_2d

    .line 36
    :cond_23
    sget-object v1, Leu/medsea/util/EncodingGuesser;->supportedEncodings:Ljava/util/Collection;

    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_1c

    .line 46
    :cond_2d
    :goto_2d
    return-object v0

    .line 47
    :cond_2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_b
.end method
