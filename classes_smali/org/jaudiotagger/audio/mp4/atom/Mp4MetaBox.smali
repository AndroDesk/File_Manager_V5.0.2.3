.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4MetaBox.java"


# static fields
.field public static final FLAGS_LENGTH:I = 0x4


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 6
    iput-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 8
    return-void
.end method

.method public static createiTunesStyleMetaBox(I)Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;
    .registers 3

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 3
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->META:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 5
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    .line 12
    add-int/lit8 p0, p0, 0xc

    .line 14
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 17
    const/4 p0, 0x4

    .line 18
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 21
    move-result-object p0

    .line 22
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;

    .line 24
    invoke-direct {v1, v0, p0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 27
    return-object v1
.end method


# virtual methods
.method public processData()V
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 4
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    const/4 v1, 0x0

    .line 10
    aget-byte v0, v0, v1

    .line 12
    if-nez v0, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 17
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_META_ATOM_CHILD_DATA_NOT_NULL:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 19
    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0
.end method
