.class public Lorg/jaudiotagger/audio/asf/data/ChunkContainer;
.super Lorg/jaudiotagger/audio/asf/data/Chunk;
.source "ChunkContainer.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final MULTI_CHUNKS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final chunkTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/asf/data/Chunk;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->MULTI_CHUNKS:Ljava/util/Set;

    .line 8
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_STREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jaudiotagger/audio/asf/data/Chunk;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 4
    new-instance p1, Ljava/util/Hashtable;

    .line 6
    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->chunkTable:Ljava/util/Map;

    .line 11
    return-void
.end method

.method public static chunkstartsUnique(Lorg/jaudiotagger/audio/asf/data/ChunkContainer;)Z
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->getChunks()Ljava/util/Collection;

    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    const/4 v1, 0x1

    .line 15
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_28

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lorg/jaudiotagger/audio/asf/data/Chunk;

    .line 27
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/Chunk;->getPosition()J

    .line 30
    move-result-wide v2

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    and-int/2addr v1, v2

    .line 40
    goto :goto_e

    .line 41
    :cond_28
    return v1
.end method


# virtual methods
.method public addChunk(Lorg/jaudiotagger/audio/asf/data/Chunk;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/Chunk;->getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->assertChunkList(Lorg/jaudiotagger/audio/asf/data/GUID;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_23

    .line 15
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->MULTI_CHUNKS:Ljava/util/Set;

    .line 17
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/Chunk;->getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1b

    .line 27
    goto :goto_23

    .line 28
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    const-string v0, "The GUID of the given chunk indicates, that there is no more instance allowed."

    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1

    .line 36
    :cond_23
    :goto_23
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public assertChunkList(Lorg/jaudiotagger/audio/asf/data/GUID;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/asf/data/Chunk;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->chunkTable:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 9
    if-nez v0, :cond_14

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->chunkTable:Ljava/util/Map;

    .line 18
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_14
    return-object v0
.end method

.method public getChunks()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/jaudiotagger/audio/asf/data/Chunk;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->chunkTable:Ljava/util/Map;

    .line 8
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1f

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/List;

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    goto :goto_f

    .line 32
    :cond_1f
    return-object v0
.end method

.method public getFirst(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/jaudiotagger/audio/asf/data/Chunk;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/audio/asf/data/Chunk;",
            ">;)",
            "Lorg/jaudiotagger/audio/asf/data/Chunk;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->chunkTable:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 9
    if-eqz p1, :cond_22

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_22

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lorg/jaudiotagger/audio/asf/data/Chunk;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_22

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    :goto_23
    return-object p1
.end method

.method public hasChunkByGUID(Lorg/jaudiotagger/audio/asf/data/GUID;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->chunkTable:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->prettyPrint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  |"

    .line 3
    invoke-static {v0, p2, p1, v1}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p2, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->getChunks()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    new-instance v2, Lorg/jaudiotagger/audio/asf/util/ChunkPositionComparator;

    invoke-direct {v2}, Lorg/jaudiotagger/audio/asf/util/ChunkPositionComparator;-><init>()V

    invoke-static {p2, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_28
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/asf/data/Chunk;

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 10
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
