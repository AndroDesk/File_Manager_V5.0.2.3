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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/io/WriteableChunk;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/io/WriteableChunkModifer;->writableChunk:Lorg/jaudiotagger/audio/asf/io/WriteableChunk;

    return-void
.end method


# virtual methods
.method public isApplicable(Lorg/jaudiotagger/audio/asf/data/GUID;)Z
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/WriteableChunkModifer;->writableChunk:Lorg/jaudiotagger/audio/asf/io/WriteableChunk;

    invoke-interface {v0}, Lorg/jaudiotagger/audio/asf/io/WriteableChunk;->getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public modify(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jaudiotagger/audio/asf/io/ModificationResult;
    .registers 13

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/WriteableChunkModifer;->writableChunk:Lorg/jaudiotagger/audio/asf/io/WriteableChunk;

    invoke-interface {v0}, Lorg/jaudiotagger/audio/asf/io/WriteableChunk;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/WriteableChunkModifer;->writableChunk:Lorg/jaudiotagger/audio/asf/io/WriteableChunk;

    invoke-interface {v0, p3}, Lorg/jaudiotagger/audio/asf/io/WriteableChunk;->writeInto(Ljava/io/OutputStream;)J

    move-result-wide v5

    if-nez p1, :cond_17

    move p3, v1

    goto :goto_18

    :cond_16
    move-wide v5, v2

    :cond_17
    move p3, v4

    :goto_18
    if-eqz p1, :cond_2f

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/WriteableChunkModifer;->writableChunk:Lorg/jaudiotagger/audio/asf/io/WriteableChunk;

    invoke-interface {v0}, Lorg/jaudiotagger/audio/asf/io/WriteableChunk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    add-int/lit8 p3, p3, -0x1

    :cond_24
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v2

    const-wide/16 v7, 0x18

    sub-long v7, v2, v7

    invoke-virtual {p2, v7, v8}, Ljava/io/InputStream;->skip(J)J

    :cond_2f
    new-instance p2, Lorg/jaudiotagger/audio/asf/io/ModificationResult;

    sub-long/2addr v5, v2

    new-array v0, v1, [Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object p1, v0, v4

    invoke-direct {p2, p3, v5, v6, v0}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;-><init>(IJ[Lorg/jaudiotagger/audio/asf/data/GUID;)V

    return-object p2
.end method
