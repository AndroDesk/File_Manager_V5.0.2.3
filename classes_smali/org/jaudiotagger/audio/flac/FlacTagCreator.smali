.class public Lorg/jaudiotagger/audio/flac/FlacTagCreator;
.super Lorg/jaudiotagger/audio/generic/AbstractTagCreator;
.source "FlacTagCreator.java"


# static fields
.field public static final DEFAULT_PADDING:I = 0xfa0

.field private static final creator:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentCreator;

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.flac"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->logger:Ljava/util/logging/Logger;

    .line 9
    new-instance v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentCreator;

    .line 11
    invoke-direct {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentCreator;-><init>()V

    .line 14
    sput-object v0, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->creator:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentCreator;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AbstractTagCreator;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public convert(Lorg/jaudiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;
    .registers 10

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->logger:Ljava/util/logging/Logger;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "Convert flac tag:padding:"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 23
    check-cast p1, Lorg/jaudiotagger/tag/flac/FlacTag;

    .line 25
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->getVorbisCommentTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_30

    .line 32
    sget-object v0, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->creator:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentCreator;

    .line 34
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->getVorbisCommentTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Lorg/jaudiotagger/audio/generic/AbstractTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 45
    move-result v2

    .line 46
    add-int/lit8 v2, v2, 0x4

    .line 48
    goto :goto_32

    .line 49
    :cond_30
    const/4 v0, 0x0

    .line 50
    move v2, v1

    .line 51
    :goto_32
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->getImages()Ljava/util/List;

    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v3

    .line 59
    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_4f

    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 71
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getBytes()[B

    .line 74
    move-result-object v4

    .line 75
    array-length v4, v4

    .line 76
    add-int/lit8 v4, v4, 0x4

    .line 78
    add-int/2addr v2, v4

    .line 79
    goto :goto_3a

    .line 80
    :cond_4f
    sget-object v3, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->logger:Ljava/util/logging/Logger;

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v5, "Convert flac tag:taglength:"

    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 102
    add-int/2addr v2, p2

    .line 103
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->getVorbisCommentTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 110
    move-result-object v3

    .line 111
    const/4 v4, 0x1

    .line 112
    if-eqz v3, :cond_9f

    .line 114
    if-gtz p2, :cond_8a

    .line 116
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->getImages()Ljava/util/List;

    .line 119
    move-result-object v3

    .line 120
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 123
    move-result v3

    .line 124
    if-lez v3, :cond_7e

    .line 126
    goto :goto_8a

    .line 127
    :cond_7e
    new-instance v3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 129
    sget-object v5, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->VORBIS_COMMENT:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 131
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 134
    move-result v6

    .line 135
    invoke-direct {v3, v4, v5, v6}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLorg/jaudiotagger/audio/flac/metadatablock/BlockType;I)V

    .line 138
    goto :goto_95

    .line 139
    :cond_8a
    :goto_8a
    new-instance v3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 141
    sget-object v5, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->VORBIS_COMMENT:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 143
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 146
    move-result v6

    .line 147
    invoke-direct {v3, v1, v5, v6}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLorg/jaudiotagger/audio/flac/metadatablock/BlockType;I)V

    .line 150
    :goto_95
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytes()[B

    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 160
    :cond_9f
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/flac/FlacTag;->getImages()Ljava/util/List;

    .line 163
    move-result-object p1

    .line 164
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 167
    move-result-object p1

    .line 168
    :goto_a7
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_e2

    .line 174
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 180
    if-gtz p2, :cond_c8

    .line 182
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_bc

    .line 188
    goto :goto_c8

    .line 189
    :cond_bc
    new-instance v3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 191
    sget-object v5, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->PICTURE:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 193
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getLength()I

    .line 196
    move-result v6

    .line 197
    invoke-direct {v3, v4, v5, v6}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLorg/jaudiotagger/audio/flac/metadatablock/BlockType;I)V

    .line 200
    goto :goto_d3

    .line 201
    :cond_c8
    :goto_c8
    new-instance v3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 203
    sget-object v5, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->PICTURE:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 205
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getLength()I

    .line 208
    move-result v6

    .line 209
    invoke-direct {v3, v1, v5, v6}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLorg/jaudiotagger/audio/flac/metadatablock/BlockType;I)V

    .line 212
    :goto_d3
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytes()[B

    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 219
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getBytes()[B

    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 226
    goto :goto_a7

    .line 227
    :cond_e2
    sget-object p1, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->logger:Ljava/util/logging/Logger;

    .line 229
    const-string v0, "Convert flac tag at"

    .line 231
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 238
    move-result v1

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 249
    if-lez p2, :cond_116

    .line 251
    add-int/lit8 p2, p2, -0x4

    .line 253
    new-instance p1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 255
    sget-object v0, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->PADDING:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 257
    invoke-direct {p1, v4, v0, p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLorg/jaudiotagger/audio/flac/metadatablock/BlockType;I)V

    .line 260
    new-instance v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;

    .line 262
    invoke-direct {v0, p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;-><init>(I)V

    .line 265
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytes()[B

    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 272
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;->getBytes()[B

    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 279
    :cond_116
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 282
    return-object v2
.end method
