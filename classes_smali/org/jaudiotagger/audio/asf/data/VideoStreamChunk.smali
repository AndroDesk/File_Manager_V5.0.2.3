.class public Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;
.super Lorg/jaudiotagger/audio/asf/data/StreamChunk;
.source "VideoStreamChunk.java"


# instance fields
.field private codecId:[B

.field private pictureHeight:J

.field private pictureWidth:J


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_VIDEOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    new-array p1, p1, [B

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->codecId:[B

    .line 11
    return-void
.end method


# virtual methods
.method public getCodecId()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->codecId:[B

    .line 3
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [B

    .line 9
    return-object v0
.end method

.method public getCodecIdAsString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->codecId:[B

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-string v0, "Unknown"

    .line 7
    goto :goto_10

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->getCodecId()[B

    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 17
    :goto_10
    return-object v0
.end method

.method public getPictureHeight()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->pictureHeight:J

    .line 3
    return-wide v0
.end method

.method public getPictureWidth()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->pictureWidth:J

    .line 3
    return-wide v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    sget-object v2, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 17
    const-string v3, "|->VideoStream"

    .line 19
    invoke-static {v1, v2, p1, v3}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "Video info:"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, "      |->Width  : "

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->getPictureWidth()J

    .line 49
    move-result-wide v3

    .line 50
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, "      |->Heigth : "

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->getPictureHeight()J

    .line 67
    move-result-wide v3

    .line 68
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string p1, "      |->Codec  : "

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->getCodecIdAsString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    return-object p1
.end method

.method public setCodecId([B)V
    .registers 2

    .line 1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, [B

    .line 7
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->codecId:[B

    .line 9
    return-void
.end method

.method public setPictureHeight(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->pictureHeight:J

    .line 3
    return-void
.end method

.method public setPictureWidth(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/VideoStreamChunk;->pictureWidth:J

    .line 3
    return-void
.end method
