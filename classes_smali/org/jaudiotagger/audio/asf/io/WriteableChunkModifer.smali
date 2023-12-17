.class public Lorg/jaudiotagger/audio/asf/io/WriteableChunkModifer;
.super Ljava/lang/Object;
.source "WriteableChunkModifer.java"

# interfaces
.implements Lorg/jaudiotagger/audio/asf/io/ChunkModifier;


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final writableChunk:Lorg/jaudiotagger/audio/asf/io/WriteableChunk;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/asf/io/WriteableChunk;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/io/WriteableChunkModifer;->writableChunk:Lorg/jaudiotagger/audio/asf/io/WriteableChunk;

    .line 6
    return-void
.end method


# virtual methods
.method public isApplicable(Lorg/jaudiotagger/audio/asf/data/GUID;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/WriteableChunkModifer;->writableChunk:Lorg/jaudiotagger/audio/asf/io/WriteableChunk;

    .line 3
    invoke-interface {v0}, Lorg/jaudiotagger/audio/asf/io/WriteableChunk;->getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public modify(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jaudiotagger/audio/asf/io/ModificationResult;
    .registers 13

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/WriteableChunkModifer;->writableChunk:Lorg/jaudiotagger/audio/asf/io/WriteableChunk;

    .line 3
    invoke-interface {v0}, Lorg/jaudiotagger/audio/asf/io/WriteableChunk;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const-wide/16 v2, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    if-nez v0, :cond_16

    .line 13
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/WriteableChunkModifer;->writableChunk:Lorg/jaudiotagger/audio/asf/io/WriteableChunk;

    .line 15
    invoke-interface {v0, p3}, Lorg/jaudiotagger/audio/asf/io/WriteableChunk;->writeInto(Ljava/io/OutputStream;)J

    .line 18
    move-result-wide v5

    .line 19
    if-nez p1, :cond_17

    .line 21
    move p3, v1

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    move-wide v5, v2

    .line 24
    :cond_17
    move p3, v4

    .line 25
    :goto_18
    if-eqz p1, :cond_2f

    .line 27
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/WriteableChunkModifer;->writableChunk:Lorg/jaudiotagger/audio/asf/io/WriteableChunk;

    .line 29
    invoke-interface {v0}, Lorg/jaudiotagger/audio/asf/io/WriteableChunk;->isEmpty()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_24

    .line 35
    add-int/lit8 p3, p3, -0x1

    .line 37
    :cond_24
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    .line 40
    move-result-wide v2

    .line 41
    const-wide/16 v7, 0x18

    .line 43
    sub-long v7, v2, v7

    .line 45
    invoke-virtual {p2, v7, v8}, Ljava/io/InputStream;->skip(J)J

    .line 48
    :cond_2f
    new-instance p2, Lorg/jaudiotagger/audio/asf/io/ModificationResult;

    .line 50
    sub-long/2addr v5, v2

    .line 51
    new-array v0, v1, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 53
    aput-object p1, v0, v4

    .line 55
    invoke-direct {p2, p3, v5, v6, v0}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;-><init>(IJ[Lorg/jaudiotagger/audio/asf/data/GUID;)V

    .line 58
    return-object p2
.end method
