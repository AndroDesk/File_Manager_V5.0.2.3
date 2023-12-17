.class public Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;
.super Ljava/lang/Object;
.source "OggVorbisCommentTagCreator.java"


# static fields
.field public static final FIELD_FRAMING_BIT_LENGTH:I = 0x1

.field public static final FRAMING_BIT_VALID_VALUE:B = 0x1t

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private creator:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentCreator;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.ogg"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentCreator;

    .line 6
    invoke-direct {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentCreator;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;->creator:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentCreator;

    .line 11
    return-void
.end method


# virtual methods
.method public convert(Lorg/jaudiotagger/tag/Tag;)Ljava/nio/ByteBuffer;
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;->creator:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentCreator;

    .line 3
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    add-int/2addr v0, v1

    .line 13
    add-int/lit8 v0, v0, 0x6

    .line 15
    add-int/2addr v0, v1

    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 19
    move-result-object v0

    .line 20
    sget-object v2, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->COMMENT_HEADER:Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    .line 22
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->getType()I

    .line 25
    move-result v2

    .line 26
    int-to-byte v2, v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 30
    sget-object v2, Lorg/jaudiotagger/audio/ogg/util/VorbisHeader;->CAPTURE_PATTERN_AS_BYTES:[B

    .line 32
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 44
    return-object v0
.end method
