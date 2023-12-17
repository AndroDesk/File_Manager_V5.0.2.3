.class public final Leu/medsea/mimeutil/TextMimeDetector;
.super Leu/medsea/mimeutil/detector/MimeDetector;
.source "TextMimeDetector.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final MAX_NULL_VALUES:I = 0x1

.field public static synthetic class$0:Ljava/lang/Class;

.field private static handlers:Ljava/util/Collection;

.field private static log:Lorg/slf4j/Logger;

.field private static preferredEncodings:Ljava/util/Collection;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    sget-object v0, Leu/medsea/mimeutil/TextMimeDetector;->class$0:Ljava/lang/Class;

    .line 3
    if-nez v0, :cond_14

    .line 5
    :try_start_4
    const-class v0, Leu/medsea/mimeutil/TextMimeDetector;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_6} :catch_9

    .line 7
    sput-object v0, Leu/medsea/mimeutil/TextMimeDetector;->class$0:Ljava/lang/Class;

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
    sput-object v0, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    sput-object v0, Leu/medsea/mimeutil/TextMimeDetector;->preferredEncodings:Ljava/util/Collection;

    .line 34
    const-string v0, "UTF-16"

    .line 36
    const-string v1, "UTF-8"

    .line 38
    const-string v2, "ISO-8859-1"

    .line 40
    const-string v3, "windows-1252"

    .line 42
    const-string v4, "US-ASCII"

    .line 44
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Leu/medsea/mimeutil/TextMimeDetector;->setPreferredEncodings([Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    sput-object v0, Leu/medsea/mimeutil/TextMimeDetector;->handlers:Ljava/util/Collection;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MimeDetector;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 2
    invoke-direct {p0}, Leu/medsea/mimeutil/TextMimeDetector;-><init>()V

    return-void
.end method

.method private fireMimeHandlers(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .registers 6

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Leu/medsea/mimeutil/TextMimeType;

    .line 11
    sget-object v1, Leu/medsea/mimeutil/TextMimeDetector;->handlers:Ljava/util/Collection;

    .line 13
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 17
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_17

    .line 23
    goto :goto_23

    .line 24
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Leu/medsea/mimeutil/handler/TextMimeHandler;

    .line 30
    invoke-interface {v2, v0, p2}, Leu/medsea/mimeutil/handler/TextMimeHandler;->handle(Leu/medsea/mimeutil/TextMimeType;Ljava/lang/String;)Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_10

    .line 36
    :goto_23
    return-object p1
.end method

.method public static getRegisteredTextMimeHandlers()Ljava/util/Collection;
    .registers 1

    .line 1
    sget-object v0, Leu/medsea/mimeutil/TextMimeDetector;->handlers:Ljava/util/Collection;

    .line 3
    return-object v0
.end method

.method private isBinary([B)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    array-length v3, p1

    .line 5
    if-lt v1, v3, :cond_7

    .line 7
    return v0

    .line 8
    :cond_7
    aget-byte v3, p1, v1

    .line 10
    const/4 v4, 0x1

    .line 11
    if-nez v3, :cond_e

    .line 13
    add-int/2addr v2, v4

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v2, v0

    .line 16
    :goto_f
    if-ne v2, v4, :cond_12

    .line 18
    return v4

    .line 19
    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_3
.end method

.method public static registerTextMimeHandler(Leu/medsea/mimeutil/handler/TextMimeHandler;)V
    .registers 2

    .line 1
    sget-object v0, Leu/medsea/mimeutil/TextMimeDetector;->handlers:Ljava/util/Collection;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public static setPreferredEncodings([Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0}, Leu/medsea/util/EncodingGuesser;->getValidEncodings([Ljava/lang/String;)Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 5
    sput-object p0, Leu/medsea/mimeutil/TextMimeDetector;->preferredEncodings:Ljava/util/Collection;

    .line 7
    sget-object p0, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    .line 9
    invoke-interface {p0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_23

    .line 15
    sget-object p0, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    .line 17
    new-instance v0, Ljava/lang/StringBuffer;

    .line 19
    const-string v1, "Preferred Encodings set to "

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 24
    sget-object v1, Leu/medsea/mimeutil/TextMimeDetector;->preferredEncodings:Ljava/util/Collection;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 36
    :cond_23
    return-void
.end method

.method public static unregisterTextMimeHandler(Leu/medsea/mimeutil/handler/TextMimeHandler;)V
    .registers 2

    .line 1
    sget-object v0, Leu/medsea/mimeutil/TextMimeDetector;->handlers:Ljava/util/Collection;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "Determine if a file or stream contains a text mime type. If so then return TextMimeType with text/plain and the best guess encoding."

    return-object v0
.end method

.method public getMimeTypesByteArray([B)Ljava/util/Collection;
    .registers 8

    .line 1
    invoke-static {}, Leu/medsea/util/EncodingGuesser;->getSupportedEncodings()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c9

    .line 11
    invoke-direct {p0, p1}, Leu/medsea/mimeutil/TextMimeDetector;->isBinary([B)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_c9

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-static {p1}, Leu/medsea/util/EncodingGuesser;->getPossibleEncodings([B)Ljava/util/Collection;

    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    .line 28
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_40

    .line 34
    sget-object v2, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    .line 36
    new-instance v3, Ljava/lang/StringBuffer;

    .line 38
    const-string v4, "Possible encodings ["

    .line 40
    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 46
    move-result v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 50
    const-string v4, "] "

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 65
    :cond_40
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_c3

    .line 71
    const/4 v2, 0x0

    .line 72
    sget-object v3, Leu/medsea/mimeutil/TextMimeDetector;->preferredEncodings:Ljava/util/Collection;

    .line 74
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v3

    .line 78
    :cond_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v4

    .line 82
    const-string v5, "text/plain"

    .line 84
    if-nez v4, :cond_56

    .line 86
    goto :goto_6a

    .line 87
    :cond_56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/String;

    .line 93
    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_4d

    .line 99
    new-instance v3, Leu/medsea/mimeutil/TextMimeType;

    .line 101
    invoke-direct {v3, v5, v2}, Leu/medsea/mimeutil/TextMimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :goto_6a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_86

    .line 113
    invoke-static {}, Leu/medsea/util/EncodingGuesser;->getDefaultEncoding()Ljava/lang/String;

    .line 116
    move-result-object v3

    .line 117
    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_86

    .line 123
    invoke-static {}, Leu/medsea/util/EncodingGuesser;->getDefaultEncoding()Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 127
    new-instance v3, Leu/medsea/mimeutil/TextMimeType;

    .line 129
    invoke-direct {v3, v5, v2}, Leu/medsea/mimeutil/TextMimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_86
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_9f

    .line 141
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 144
    move-result-object v1

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    move-result-object v1

    .line 149
    move-object v2, v1

    .line 150
    check-cast v2, Ljava/lang/String;

    .line 152
    new-instance v1, Leu/medsea/mimeutil/TextMimeType;

    .line 154
    invoke-direct {v1, v5, v2}, Leu/medsea/mimeutil/TextMimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_9f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_c2

    .line 166
    sget-object v1, Leu/medsea/mimeutil/TextMimeDetector;->handlers:Ljava/util/Collection;

    .line 168
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_ae

    .line 174
    goto :goto_c2

    .line 175
    :cond_ae
    :try_start_ae
    invoke-static {v2, p1}, Leu/medsea/util/EncodingGuesser;->getLengthBOM(Ljava/lang/String;[B)I

    .line 178
    move-result v1

    .line 179
    new-instance v3, Ljava/lang/String;

    .line 181
    array-length v4, p1

    .line 182
    sub-int/2addr v4, v1

    .line 183
    invoke-static {p1, v1, v4}, Leu/medsea/util/EncodingGuesser;->getByteArraySubArray([BII)[B

    .line 186
    move-result-object p1

    .line 187
    invoke-direct {v3, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 190
    invoke-direct {p0, v0, v3}, Leu/medsea/mimeutil/TextMimeDetector;->fireMimeHandlers(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 193
    move-result-object p1
    :try_end_c1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ae .. :try_end_c1} :catch_c2

    .line 194
    return-object p1

    .line 195
    :catch_c2
    :cond_c2
    :goto_c2
    return-object v0

    .line 196
    :cond_c3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 198
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 201
    throw p1

    .line 202
    :cond_c9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 204
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 207
    throw p1
.end method

.method public getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_47

    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_7
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 10
    new-instance v2, Ljava/io/FileInputStream;

    .line 12
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 15
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_11} :catch_36
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_2f
    .catchall {:try_start_7 .. :try_end_11} :catchall_2d

    .line 18
    :try_start_11
    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/TextMimeDetector;->getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;

    .line 21
    move-result-object p1
    :try_end_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_11 .. :try_end_15} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_27
    .catchall {:try_start_11 .. :try_end_15} :catchall_24

    .line 22
    :try_start_15
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    .line 25
    goto :goto_23

    .line 26
    :catch_19
    move-exception v0

    .line 27
    sget-object v1, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 36
    :goto_23
    return-object p1

    .line 37
    :catchall_24
    move-exception p1

    .line 38
    move-object v0, v1

    .line 39
    goto :goto_38

    .line 40
    :catch_27
    move-exception p1

    .line 41
    move-object v0, v1

    .line 42
    goto :goto_30

    .line 43
    :catch_2a
    move-exception p1

    .line 44
    move-object v0, v1

    .line 45
    goto :goto_37

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    goto :goto_38

    .line 48
    :catch_2f
    move-exception p1

    .line 49
    :goto_30
    :try_start_30
    new-instance v1, Leu/medsea/mimeutil/MimeException;

    .line 51
    invoke-direct {v1, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    .line 54
    throw v1

    .line 55
    :catch_36
    move-exception p1

    .line 56
    :goto_37
    throw p1
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_2d

    .line 57
    :goto_38
    :try_start_38
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 60
    goto :goto_46

    .line 61
    :catch_3c
    move-exception v0

    .line 62
    sget-object v1, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 71
    :goto_46
    throw p1

    .line 72
    :cond_47
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 74
    const-string v0, "This MimeDetector requires actual content."

    .line 76
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p1
.end method

.method public getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/TextMimeDetector;->getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 8

    .line 1
    const/16 v0, 0x400

    .line 3
    new-array v1, v0, [B

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v0

    .line 10
    move v4, v2

    .line 11
    :goto_a
    if-gtz v3, :cond_d

    .line 13
    goto :goto_13

    .line 14
    :cond_d
    :try_start_d
    invoke-virtual {p1, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    .line 17
    move-result v5

    .line 18
    if-gez v5, :cond_2a

    .line 20
    :goto_13
    if-ge v4, v0, :cond_1b

    .line 22
    new-array v0, v4, [B

    .line 24
    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_2f
    .catchall {:try_start_d .. :try_end_1a} :catchall_2d

    .line 27
    move-object v1, v0

    .line 28
    :cond_1b
    :try_start_1b
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_23

    .line 31
    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/TextMimeDetector;->getMimeTypesByteArray([B)Ljava/util/Collection;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :catch_23
    move-exception p1

    .line 37
    new-instance v0, Leu/medsea/mimeutil/MimeException;

    .line 39
    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    throw v0

    .line 43
    :cond_2a
    add-int/2addr v4, v5

    .line 44
    sub-int/2addr v3, v5

    .line 45
    goto :goto_a

    .line 46
    :catchall_2d
    move-exception v0

    .line 47
    goto :goto_36

    .line 48
    :catch_2f
    move-exception v0

    .line 49
    :try_start_30
    new-instance v1, Leu/medsea/mimeutil/MimeException;

    .line 51
    invoke-direct {v1, v0}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    .line 54
    throw v1
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_2d

    .line 55
    :goto_36
    :try_start_36
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    .line 58
    throw v0

    .line 59
    :catch_3a
    move-exception p1

    .line 60
    new-instance v0, Leu/medsea/mimeutil/MimeException;

    .line 62
    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    .line 65
    throw v0
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
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_a} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_28
    .catchall {:try_start_1 .. :try_end_a} :catchall_26

    .line 11
    :try_start_a
    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/TextMimeDetector;->getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;

    .line 14
    move-result-object p1
    :try_end_e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_e} :catch_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_20
    .catchall {:try_start_a .. :try_end_e} :catchall_1d

    .line 15
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    .line 18
    goto :goto_1c

    .line 19
    :catch_12
    move-exception v0

    .line 20
    sget-object v1, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 29
    :goto_1c
    return-object p1

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    move-object v0, v1

    .line 32
    goto :goto_31

    .line 33
    :catch_20
    move-exception p1

    .line 34
    move-object v0, v1

    .line 35
    goto :goto_29

    .line 36
    :catch_23
    move-exception p1

    .line 37
    move-object v0, v1

    .line 38
    goto :goto_30

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    goto :goto_31

    .line 41
    :catch_28
    move-exception p1

    .line 42
    :goto_29
    :try_start_29
    new-instance v1, Leu/medsea/mimeutil/MimeException;

    .line 44
    invoke-direct {v1, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    throw v1

    .line 48
    :catch_2f
    move-exception p1

    .line 49
    :goto_30
    throw p1
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 50
    :goto_31
    :try_start_31
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    .line 53
    goto :goto_3f

    .line 54
    :catch_35
    move-exception v0

    .line 55
    sget-object v1, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 64
    :goto_3f
    throw p1
.end method
