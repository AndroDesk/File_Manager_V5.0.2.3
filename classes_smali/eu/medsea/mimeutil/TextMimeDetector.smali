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

    sget-object v0, Leu/medsea/mimeutil/TextMimeDetector;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_14

    :try_start_4
    const-class v0, Leu/medsea/mimeutil/TextMimeDetector;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_6} :catch_9

    sput-object v0, Leu/medsea/mimeutil/TextMimeDetector;->class$0:Ljava/lang/Class;

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

    sput-object v0, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Leu/medsea/mimeutil/TextMimeDetector;->preferredEncodings:Ljava/util/Collection;

    const-string v0, "UTF-16"

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-1"

    const-string v3, "windows-1252"

    const-string v4, "US-ASCII"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/medsea/mimeutil/TextMimeDetector;->setPreferredEncodings([Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Leu/medsea/mimeutil/TextMimeDetector;->handlers:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Leu/medsea/mimeutil/detector/MimeDetector;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Leu/medsea/mimeutil/TextMimeDetector;-><init>()V

    return-void
.end method

.method private fireMimeHandlers(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .registers 6

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/medsea/mimeutil/TextMimeType;

    sget-object v1, Leu/medsea/mimeutil/TextMimeDetector;->handlers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_23

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/medsea/mimeutil/handler/TextMimeHandler;

    invoke-interface {v2, v0, p2}, Leu/medsea/mimeutil/handler/TextMimeHandler;->handle(Leu/medsea/mimeutil/TextMimeType;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    :goto_23
    return-object p1
.end method

.method public static getRegisteredTextMimeHandlers()Ljava/util/Collection;
    .registers 1

    sget-object v0, Leu/medsea/mimeutil/TextMimeDetector;->handlers:Ljava/util/Collection;

    return-object v0
.end method

.method private isBinary([B)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    array-length v3, p1

    if-lt v1, v3, :cond_7

    return v0

    :cond_7
    aget-byte v3, p1, v1

    const/4 v4, 0x1

    if-nez v3, :cond_e

    add-int/2addr v2, v4

    goto :goto_f

    :cond_e
    move v2, v0

    :goto_f
    if-ne v2, v4, :cond_12

    return v4

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static registerTextMimeHandler(Leu/medsea/mimeutil/handler/TextMimeHandler;)V
    .registers 2

    sget-object v0, Leu/medsea/mimeutil/TextMimeDetector;->handlers:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setPreferredEncodings([Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Leu/medsea/util/EncodingGuesser;->getValidEncodings([Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    sput-object p0, Leu/medsea/mimeutil/TextMimeDetector;->preferredEncodings:Ljava/util/Collection;

    sget-object p0, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-interface {p0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_23

    sget-object p0, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Preferred Encodings set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Leu/medsea/mimeutil/TextMimeDetector;->preferredEncodings:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public static unregisterTextMimeHandler(Leu/medsea/mimeutil/handler/TextMimeHandler;)V
    .registers 2

    sget-object v0, Leu/medsea/mimeutil/TextMimeDetector;->handlers:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

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

    invoke-static {}, Leu/medsea/util/EncodingGuesser;->getSupportedEncodings()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c9

    invoke-direct {p0, p1}, Leu/medsea/mimeutil/TextMimeDetector;->isBinary([B)Z

    move-result v0

    if-nez v0, :cond_c9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Leu/medsea/util/EncodingGuesser;->getPossibleEncodings([B)Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_40

    sget-object v2, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Possible encodings ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_40
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c3

    const/4 v2, 0x0

    sget-object v3, Leu/medsea/mimeutil/TextMimeDetector;->preferredEncodings:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "text/plain"

    if-nez v4, :cond_56

    goto :goto_6a

    :cond_56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    new-instance v3, Leu/medsea/mimeutil/TextMimeType;

    invoke-direct {v3, v5, v2}, Leu/medsea/mimeutil/TextMimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-static {}, Leu/medsea/util/EncodingGuesser;->getDefaultEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-static {}, Leu/medsea/util/EncodingGuesser;->getDefaultEncoding()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Leu/medsea/mimeutil/TextMimeType;

    invoke-direct {v3, v5, v2}, Leu/medsea/mimeutil/TextMimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_86
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9f

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    new-instance v1, Leu/medsea/mimeutil/TextMimeType;

    invoke-direct {v1, v5, v2}, Leu/medsea/mimeutil/TextMimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c2

    sget-object v1, Leu/medsea/mimeutil/TextMimeDetector;->handlers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_ae

    goto :goto_c2

    :cond_ae
    :try_start_ae
    invoke-static {v2, p1}, Leu/medsea/util/EncodingGuesser;->getLengthBOM(Ljava/lang/String;[B)I

    move-result v1

    new-instance v3, Ljava/lang/String;

    array-length v4, p1

    sub-int/2addr v4, v1

    invoke-static {p1, v1, v4}, Leu/medsea/util/EncodingGuesser;->getByteArraySubArray([BII)[B

    move-result-object p1

    invoke-direct {v3, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v0, v3}, Leu/medsea/mimeutil/TextMimeDetector;->fireMimeHandlers(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1
    :try_end_c1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ae .. :try_end_c1} :catch_c2

    return-object p1

    :catch_c2
    :cond_c2
    :goto_c2
    return-object v0

    :cond_c3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_c9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;
    .registers 5

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    :try_start_7
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_11} :catch_36
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_2f
    .catchall {:try_start_7 .. :try_end_11} :catchall_2d

    :try_start_11
    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/TextMimeDetector;->getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p1
    :try_end_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_11 .. :try_end_15} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_27
    .catchall {:try_start_11 .. :try_end_15} :catchall_24

    :try_start_15
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_23

    :catch_19
    move-exception v0

    sget-object v1, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_23
    return-object p1

    :catchall_24
    move-exception p1

    move-object v0, v1

    goto :goto_38

    :catch_27
    move-exception p1

    move-object v0, v1

    goto :goto_30

    :catch_2a
    move-exception p1

    move-object v0, v1

    goto :goto_37

    :catchall_2d
    move-exception p1

    goto :goto_38

    :catch_2f
    move-exception p1

    :goto_30
    :try_start_30
    new-instance v1, Leu/medsea/mimeutil/MimeException;

    invoke-direct {v1, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_36
    move-exception p1

    :goto_37
    throw p1
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_2d

    :goto_38
    :try_start_38
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_46

    :catch_3c
    move-exception v0

    sget-object v1, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_46
    throw p1

    :cond_47
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This MimeDetector requires actual content."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMimeTypesFileName(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/TextMimeDetector;->getMimeTypesFile(Ljava/io/File;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 8

    const/16 v0, 0x400

    new-array v1, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    const/4 v2, 0x0

    move v3, v0

    move v4, v2

    :goto_a
    if-gtz v3, :cond_d

    goto :goto_13

    :cond_d
    :try_start_d
    invoke-virtual {p1, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gez v5, :cond_2a

    :goto_13
    if-ge v4, v0, :cond_1b

    new-array v0, v4, [B

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_2f
    .catchall {:try_start_d .. :try_end_1a} :catchall_2d

    move-object v1, v0

    :cond_1b
    :try_start_1b
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_23

    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/TextMimeDetector;->getMimeTypesByteArray([B)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :catch_23
    move-exception p1

    new-instance v0, Leu/medsea/mimeutil/MimeException;

    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2a
    add-int/2addr v4, v5

    sub-int/2addr v3, v5

    goto :goto_a

    :catchall_2d
    move-exception v0

    goto :goto_36

    :catch_2f
    move-exception v0

    :try_start_30
    new-instance v1, Leu/medsea/mimeutil/MimeException;

    invoke-direct {v1, v0}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_2d

    :goto_36
    :try_start_36
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    throw v0

    :catch_3a
    move-exception p1

    new-instance v0, Leu/medsea/mimeutil/MimeException;

    invoke-direct {v0, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
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
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_a} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_28
    .catchall {:try_start_1 .. :try_end_a} :catchall_26

    :try_start_a
    invoke-virtual {p0, v1}, Leu/medsea/mimeutil/TextMimeDetector;->getMimeTypesInputStream(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_e} :catch_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_20
    .catchall {:try_start_a .. :try_end_e} :catchall_1d

    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_1c

    :catch_12
    move-exception v0

    sget-object v1, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_1c
    return-object p1

    :catchall_1d
    move-exception p1

    move-object v0, v1

    goto :goto_31

    :catch_20
    move-exception p1

    move-object v0, v1

    goto :goto_29

    :catch_23
    move-exception p1

    move-object v0, v1

    goto :goto_30

    :catchall_26
    move-exception p1

    goto :goto_31

    :catch_28
    move-exception p1

    :goto_29
    :try_start_29
    new-instance v1, Leu/medsea/mimeutil/MimeException;

    invoke-direct {v1, p1}, Leu/medsea/mimeutil/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2f
    move-exception p1

    :goto_30
    throw p1
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    :goto_31
    :try_start_31
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_3f

    :catch_35
    move-exception v0

    sget-object v1, Leu/medsea/mimeutil/TextMimeDetector;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_3f
    throw p1
.end method
