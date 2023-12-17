.class public abstract Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "AbstractFrameBodyUrlLink.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    const-string v0, "URLLink"

    .line 4
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method

.method private encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    :try_start_0
    const-string v0, "(?<!/)/(?!/)"

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuffer;

    .line 10
    const/4 v2, 0x0

    .line 11
    aget-object v2, v0, v2

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v2, 0x1

    .line 17
    :goto_10
    array-length v3, v0

    .line 18
    if-ge v2, v3, :cond_26

    .line 20
    const-string v3, "/"

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    aget-object v3, v0, v2

    .line 27
    const-string v4, "utf-8"

    .line 29
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_10

    .line 39
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 43
    return-object p1

    .line 44
    :catch_2b
    move-exception v0

    .line 45
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 47
    const-string v2, "Uable to url encode because utf-8 charset not available:"

    .line 49
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 67
    return-object p1
.end method


# virtual methods
.method public getUrlLink()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "URLLink"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 9
    return-object v0
.end method

.method public getUserFriendlyValue()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;->getUrlLink()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public setUrlLink(Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_8

    .line 3
    const-string v0, "URLLink"

    .line 5
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 13
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1
.end method

.method public setupObjectList()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Lorg/jaudiotagger/tag/datatype/StringSizeTerminated;

    .line 5
    const-string v2, "URLLink"

    .line 7
    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/StringSizeTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .registers 8

    .line 1
    const-string v0, "ISO-8859-1"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;->getUrlLink()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_52

    .line 21
    invoke-direct {p0, v1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;->setUrlLink(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;->getUrlLink()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v0

    .line 36
    const/4 v2, 0x1

    .line 37
    const/4 v3, 0x0

    .line 38
    if-nez v0, :cond_3c

    .line 40
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 42
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_UNABLE_TO_ENCODE_URL:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 44
    new-array v2, v2, [Ljava/lang/Object;

    .line 46
    aput-object v1, v2, v3

    .line 48
    invoke-virtual {v4, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 55
    const-string v0, ""

    .line 57
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;->setUrlLink(Ljava/lang/String;)V

    .line 60
    goto :goto_52

    .line 61
    :cond_3c
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 63
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_URL_SAVED_ENCODED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 65
    const/4 v5, 0x2

    .line 66
    new-array v5, v5, [Ljava/lang/Object;

    .line 68
    aput-object v1, v5, v3

    .line 70
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyUrlLink;->getUrlLink()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    aput-object v1, v5, v2

    .line 76
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 83
    :cond_52
    :goto_52
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 86
    return-void
.end method
