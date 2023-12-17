.class abstract Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;
.super Ljava/lang/Object;
.source "ChunkContainerReader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/asf/io/ChunkReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ChunkType:",
        "Lorg/jaudiotagger/audio/asf/data/ChunkContainer;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jaudiotagger/audio/asf/io/ChunkReader;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final LOGGER:Ljava/util/logging/Logger;

.field public static final READ_LIMIT:I = 0x2000


# instance fields
.field public final eachChunkOnce:Z

.field public hasFailingReaders:Z

.field public final readerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            "Lorg/jaudiotagger/audio/asf/io/ChunkReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotabgger.audio"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->LOGGER:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/audio/asf/io/ChunkReader;",
            ">;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->hasFailingReaders:Z

    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->readerMap:Ljava/util/Map;

    .line 14
    iput-boolean p2, p0, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->eachChunkOnce:Z

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p1

    .line 20
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_23

    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Ljava/lang/Class;

    .line 32
    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->register(Ljava/lang/Class;)V

    .line 35
    goto :goto_13

    .line 36
    :cond_23
    return-void
.end method

.method private register(Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jaudiotagger/audio/asf/io/ChunkReader;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lorg/jaudiotagger/audio/asf/io/ChunkReader;

    .line 7
    invoke-interface {p1}, Lorg/jaudiotagger/audio/asf/io/ChunkReader;->getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_c
    if-ge v2, v1, :cond_2d

    .line 15
    aget-object v3, v0, v2

    .line 17
    iget-object v4, p0, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->readerMap:Ljava/util/Map;

    .line 19
    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_15} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_15} :catch_18

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_c

    .line 25
    :catch_18
    move-exception p1

    .line 26
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->LOGGER:Ljava/util/logging/Logger;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 35
    goto :goto_2d

    .line 36
    :catch_23
    move-exception p1

    .line 37
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->LOGGER:Ljava/util/logging/Logger;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 46
    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method public checkStream(Ljava/io/InputStream;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->hasFailingReaders:Z

    .line 3
    if-eqz v0, :cond_13

    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_b

    .line 11
    goto :goto_13

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    const-string v0, "Stream has to support mark/reset."

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1

    .line 20
    :cond_13
    :goto_13
    return-void
.end method

.method public abstract createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/math/BigInteger;",
            "Ljava/io/InputStream;",
            ")TChunkType;"
        }
    .end annotation
.end method

.method public getReader(Lorg/jaudiotagger/audio/asf/data/GUID;)Lorg/jaudiotagger/audio/asf/io/ChunkReader;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->readerMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/jaudiotagger/audio/asf/io/ChunkReader;

    .line 9
    return-object p1
.end method

.method public isReaderAvailable(Lorg/jaudiotagger/audio/asf/data/GUID;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->readerMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/Chunk;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;

    move-result-object p1

    return-object p1
.end method

.method public read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            "Ljava/io/InputStream;",
            "J)TChunkType;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->checkStream(Ljava/io/InputStream;)V

    .line 3
    new-instance v0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;

    invoke-direct {v0, p2}, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    invoke-interface {p0}, Lorg/jaudiotagger/audio/asf/io/ChunkReader;->getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 5
    invoke-static {v0}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p3, p4, p1, v0}, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/ChunkContainer;

    move-result-object p1

    .line 7
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->getReadCount()J

    move-result-wide v1

    add-long/2addr p3, v1

    const-wide/16 v1, 0x10

    add-long/2addr p3, v1

    .line 8
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 9
    :goto_2b
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/Chunk;->getChunkEnd()J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-gez v1, :cond_82

    .line 10
    invoke-static {v0}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v1

    .line 11
    iget-boolean v2, p0, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->eachChunkOnce:Z

    if-eqz v2, :cond_49

    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->isReaderAvailable(Lorg/jaudiotagger/audio/asf/data/GUID;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    :cond_47
    const/4 v2, 0x1

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    :goto_4a
    if-nez v2, :cond_6a

    .line 12
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->isReaderAvailable(Lorg/jaudiotagger/audio/asf/data/GUID;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 13
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->getReader(Lorg/jaudiotagger/audio/asf/data/GUID;)Lorg/jaudiotagger/audio/asf/io/ChunkReader;

    move-result-object v3

    .line 14
    invoke-interface {v3}, Lorg/jaudiotagger/audio/asf/io/ChunkReader;->canFail()Z

    move-result v3

    if-eqz v3, :cond_61

    const/16 v3, 0x2000

    .line 15
    invoke-virtual {v0, v3}, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->mark(I)V

    .line 16
    :cond_61
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/asf/io/ChunkContainerReader;->getReader(Lorg/jaudiotagger/audio/asf/data/GUID;)Lorg/jaudiotagger/audio/asf/io/ChunkReader;

    move-result-object v3

    invoke-interface {v3, v1, v0, p3, p4}, Lorg/jaudiotagger/audio/asf/io/ChunkReader;->read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/Chunk;

    move-result-object v1

    goto :goto_72

    .line 17
    :cond_6a
    invoke-static {}, Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;->getInstance()Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;

    move-result-object v3

    invoke-virtual {v3, v1, v0, p3, p4}, Lorg/jaudiotagger/audio/asf/io/ChunkHeaderReader;->read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/Chunk;

    move-result-object v1

    :goto_72
    if-nez v1, :cond_78

    .line 18
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->reset()V

    goto :goto_2b

    :cond_78
    if-nez v2, :cond_7d

    .line 19
    invoke-virtual {p1, v1}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->addChunk(Lorg/jaudiotagger/audio/asf/data/Chunk;)V

    .line 20
    :cond_7d
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/Chunk;->getChunkEnd()J

    move-result-wide p3

    goto :goto_2b

    :cond_82
    return-object p1

    .line 21
    :cond_83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "provided GUID is not supported by this reader."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
