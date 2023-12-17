.class public Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentCreator;
.super Lorg/jaudiotagger/audio/generic/AbstractTagCreator;
.source "VorbisCommentCreator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AbstractTagCreator;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public convert(Lorg/jaudiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;
    .registers 6

    .line 1
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 9
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getVendor()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->getUTF8Bytes(Ljava/lang/String;)[B

    .line 16
    move-result-object v1

    .line 17
    array-length v1, v1

    .line 18
    invoke-static {v1}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeLEInt32(I)[B

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 25
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->getUTF8Bytes(Ljava/lang/String;)[B

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 32
    invoke-interface {p1}, Lorg/jaudiotagger/tag/Tag;->getFieldCount()I

    .line 35
    move-result v0

    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 38
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeLEInt32(I)[B

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 45
    invoke-interface {p1}, Lorg/jaudiotagger/tag/Tag;->getFields()Ljava/util/Iterator;

    .line 48
    move-result-object p1

    .line 49
    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_55

    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lorg/jaudiotagger/tag/TagField;

    .line 61
    invoke-interface {v0}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->VENDOR:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 67
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_4d

    .line 77
    goto :goto_30

    .line 78
    :cond_4d
    invoke-interface {v0}, Lorg/jaudiotagger/tag/TagField;->getRawContent()[B

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 85
    goto :goto_30

    .line 86
    :cond_55
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_60} :catch_61

    .line 97
    return-object p1

    .line 98
    :catch_61
    move-exception p1

    .line 99
    new-instance p2, Ljava/lang/RuntimeException;

    .line 101
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 104
    throw p2
.end method
