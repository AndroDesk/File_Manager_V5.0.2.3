.class public abstract Lorg/jaudiotagger/audio/asf/data/StreamChunk;
.super Lorg/jaudiotagger/audio/asf/data/Chunk;
.source "StreamChunk.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private contentEncrypted:Z

.field private streamNumber:I

.field private streamSpecificDataSize:J

.field private timeOffset:J

.field private final type:Lorg/jaudiotagger/audio/asf/data/GUID;

.field private typeSpecificDataSize:J


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/math/BigInteger;)V
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_STREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-direct {p0, v0, p2}, Lorg/jaudiotagger/audio/asf/data/Chunk;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    .line 6
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->type:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 8
    return-void
.end method


# virtual methods
.method public getStreamNumber()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->streamNumber:I

    .line 3
    return v0
.end method

.method public getStreamSpecificDataSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->streamSpecificDataSize:J

    .line 3
    return-wide v0
.end method

.method public getStreamType()Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->type:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    return-object v0
.end method

.method public getTimeOffset()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->timeOffset:J

    .line 3
    return-wide v0
.end method

.method public getTypeSpecificDataSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->typeSpecificDataSize:J

    .line 3
    return-wide v0
.end method

.method public isContentEncrypted()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->contentEncrypted:Z

    .line 3
    return v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "  |-> Stream number: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->getStreamNumber()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "  |-> Type specific data size  : "

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->getTypeSpecificDataSize()J

    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v2, "  |-> Stream specific data size: "

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->getStreamSpecificDataSize()J

    .line 59
    move-result-wide v2

    .line 60
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v2, "  |-> Time Offset              : "

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->getTimeOffset()J

    .line 77
    move-result-wide v2

    .line 78
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string p1, "  |-> Content Encryption       : "

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->isContentEncrypted()Z

    .line 95
    move-result p1

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    return-object p1
.end method

.method public setContentEncrypted(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->contentEncrypted:Z

    .line 3
    return-void
.end method

.method public setStreamNumber(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->streamNumber:I

    .line 3
    return-void
.end method

.method public setStreamSpecificDataSize(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->streamSpecificDataSize:J

    .line 3
    return-void
.end method

.method public setTimeOffset(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->timeOffset:J

    .line 3
    return-void
.end method

.method public setTypeSpecificDataSize(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->typeSpecificDataSize:J

    .line 3
    return-void
.end method
