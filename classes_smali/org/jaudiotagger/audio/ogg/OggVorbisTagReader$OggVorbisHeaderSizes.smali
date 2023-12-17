.class public Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;
.super Ljava/lang/Object;
.source "OggVorbisTagReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OggVorbisHeaderSizes"
.end annotation


# instance fields
.field private commentHeaderSize:I

.field private commentHeaderStartPosition:J

.field private packetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;"
        }
    .end annotation
.end field

.field private setupHeaderSize:I

.field private setupHeaderStartPosition:J


# direct methods
.method public constructor <init>(JJIILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p7, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->packetList:Ljava/util/List;

    .line 6
    iput-wide p1, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->commentHeaderStartPosition:J

    .line 8
    iput-wide p3, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->setupHeaderStartPosition:J

    .line 10
    iput p5, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->commentHeaderSize:I

    .line 12
    iput p6, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->setupHeaderSize:I

    .line 14
    return-void
.end method


# virtual methods
.method public getCommentHeaderSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->commentHeaderSize:I

    .line 3
    return v0
.end method

.method public getCommentHeaderStartPosition()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->commentHeaderStartPosition:J

    .line 3
    return-wide v0
.end method

.method public getExtraPacketDataSize()I
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->packetList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_19

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 20
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    .line 23
    move-result v2

    .line 24
    add-int/2addr v1, v2

    .line 25
    goto :goto_7

    .line 26
    :cond_19
    return v1
.end method

.method public getExtraPacketList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->packetList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getSetupHeaderSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->setupHeaderSize:I

    .line 3
    return v0
.end method

.method public getSetupHeaderStartPosition()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->setupHeaderStartPosition:J

    .line 3
    return-wide v0
.end method
