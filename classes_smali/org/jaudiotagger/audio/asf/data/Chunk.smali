.class public Lorg/jaudiotagger/audio/asf/data/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field public final chunkLength:Ljava/math/BigInteger;

.field public final guid:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public position:J


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V
    .registers 7

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2c

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_24

    if-eqz p4, :cond_1c

    .line 8
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p4, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1c

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/Chunk;->guid:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 10
    iput-wide p2, p0, Lorg/jaudiotagger/audio/asf/data/Chunk;->position:J

    .line 11
    iput-object p4, p0, Lorg/jaudiotagger/audio/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    return-void

    .line 12
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "chunkLen must not be null nor negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Position of header can\'t be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "GUID must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/math/BigInteger;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_14

    .line 2
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_14

    .line 3
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/Chunk;->guid:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 4
    iput-object p2, p0, Lorg/jaudiotagger/audio/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    return-void

    .line 5
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "chunkLen must not be null nor negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "GUID must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getChunckEnd()J
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/Chunk;->position:J

    .line 3
    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    .line 5
    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    .line 8
    move-result-wide v2

    .line 9
    add-long/2addr v2, v0

    .line 10
    return-wide v2
.end method

.method public getChunkEnd()J
    .registers 5

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/Chunk;->position:J

    .line 3
    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    .line 5
    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    .line 8
    move-result-wide v2

    .line 9
    add-long/2addr v2, v0

    .line 10
    return-wide v2
.end method

.method public getChunkLength()Ljava/math/BigInteger;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    .line 3
    return-object v0
.end method

.method public getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/Chunk;->guid:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    return-object v0
.end method

.method public getPosition()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/Chunk;->position:J

    .line 3
    return-wide v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    const-string v0, "-> GUID: "

    .line 3
    invoke-static {p1, v0}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/Chunk;->guid:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 9
    invoke-static {v1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getGuidDescription(Lorg/jaudiotagger/audio/asf/data/GUID;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "  | : Starts at position: "

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/Chunk;->getPosition()J

    .line 32
    move-result-wide v2

    .line 33
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string p1, "  | : Last byte at: "

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/Chunk;->getChunkEnd()J

    .line 50
    move-result-wide v2

    .line 51
    const-wide/16 v4, 0x1

    .line 53
    sub-long/2addr v2, v4

    .line 54
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method public setPosition(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/Chunk;->position:J

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, ""

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
