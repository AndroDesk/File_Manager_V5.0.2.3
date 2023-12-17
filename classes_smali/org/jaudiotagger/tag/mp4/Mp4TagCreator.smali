.class public Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;
.super Lorg/jaudiotagger/audio/generic/AbstractTagCreator;
.source "Mp4TagCreator.java"


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
    .registers 9

    .line 1
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-interface {p1}, Lorg/jaudiotagger/tag/Tag;->getFields()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_a6

    .line 15
    const-string v3, "ISO-8859-1"

    .line 17
    if-eqz v2, :cond_74

    .line 19
    :try_start_12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 25
    instance-of v4, v2, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;

    .line 27
    if-eqz v4, :cond_6c

    .line 29
    if-eqz v1, :cond_1f

    .line 31
    goto :goto_a

    .line 32
    :cond_1f
    const/4 v1, 0x1

    .line 33
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 35
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_25} :catch_a6

    .line 38
    :try_start_25
    sget-object v4, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 40
    invoke-interface {p1, v4}, Lorg/jaudiotagger/tag/Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v4

    .line 48
    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_45

    .line 54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Lorg/jaudiotagger/tag/TagField;

    .line 60
    check-cast v5, Lorg/jaudiotagger/tag/mp4/Mp4TagField;

    .line 62
    invoke-virtual {v5}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->getRawContentDataOnly()[B

    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_44
    .catch Lorg/jaudiotagger/tag/KeyNotFoundException; {:try_start_25 .. :try_end_44} :catch_64
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_44} :catch_a6

    .line 69
    goto :goto_2f

    .line 70
    :cond_45
    :try_start_45
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 73
    move-result-object v2

    .line 74
    array-length v4, v2

    .line 75
    add-int/lit8 v4, v4, 0x8

    .line 77
    invoke-static {v4}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 84
    sget-object v4, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    .line 86
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    .line 89
    move-result-object v4

    .line 90
    invoke-static {v4, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 97
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 100
    goto :goto_a

    .line 101
    :catch_64
    new-instance p1, Ljava/lang/RuntimeException;

    .line 103
    const-string p2, "Unable to find COVERART Key"

    .line 105
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p1

    .line 109
    :cond_6c
    invoke-interface {v2}, Lorg/jaudiotagger/tag/TagField;->getRawContent()[B

    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 116
    goto :goto_a

    .line 117
    :cond_74
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 119
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 125
    move-result v0

    .line 126
    add-int/lit8 v0, v0, 0x8

    .line 128
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 135
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 137
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0, v3}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 148
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 155
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_a5} :catch_a6

    .line 166
    return-object p1

    .line 167
    :catch_a6
    move-exception p1

    .line 168
    new-instance p2, Ljava/lang/RuntimeException;

    .line 170
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 173
    throw p2
.end method
