.class public Lorg/jaudiotagger/audio/asf/data/MetadataContainer;
.super Lorg/jaudiotagger/audio/asf/data/Chunk;
.source "MetadataContainer.java"

# interfaces
.implements Lorg/jaudiotagger/audio/asf/io/WriteableChunk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

.field private final descriptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final perfPoint:Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;)V
    .registers 5

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V
    .registers 6

    .line 2
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/jaudiotagger/audio/asf/data/Chunk;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 3
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    iput-object p2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    .line 4
    new-instance p2, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    new-instance p3, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    const-string p4, ""

    invoke-direct {p3, p4}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    iput-object p2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->perfPoint:Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    .line 5
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V
    .registers 5

    .line 6
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->determineType(Lorg/jaudiotagger/audio/asf/data/GUID;)Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V

    return-void
.end method

.method private static determineType(Lorg/jaudiotagger/audio/asf/data/GUID;)Lorg/jaudiotagger/audio/asf/data/ContainerType;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->values()[Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 5
    move-result-object v1

    .line 6
    array-length v2, v1

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_7
    if-ge v3, v2, :cond_1a

    .line 10
    aget-object v4, v1, v3

    .line 12
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {v5, p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_17

    .line 22
    move-object v0, v4

    .line 23
    goto :goto_1a

    .line 24
    :cond_17
    add-int/lit8 v3, v3, 0x1

    .line 26
    goto :goto_7

    .line 27
    :cond_1a
    :goto_1a
    if-eqz v0, :cond_1d

    .line 29
    return-object v0

    .line 30
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    const-string v1, "Unknown metadata container specified by GUID ("

    .line 34
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string p0, ")"

    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    throw v0
.end method


# virtual methods
.method public final addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 3
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getRawData()[B

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    .line 14
    move-result v3

    .line 15
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    .line 18
    move-result v4

    .line 19
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    .line 22
    move-result v5

    .line 23
    invoke-virtual/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    .line 26
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->isAddSupported(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_61

    .line 32
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->perfPoint:Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    .line 34
    monitor-enter v0

    .line 35
    :try_start_22
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    .line 37
    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->perfPoint:Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    .line 39
    invoke-virtual {v2, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->setDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/util/List;

    .line 49
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_5e

    .line 50
    if-nez v1, :cond_43

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    .line 54
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    .line 59
    new-instance v2, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    .line 61
    invoke-direct {v2, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 64
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    goto :goto_5a

    .line 68
    :cond_43
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_5a

    .line 74
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 76
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->isMultiValued()Z

    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_52

    .line 82
    goto :goto_5a

    .line 83
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 85
    const-string v0, "Container does not allow multiple values of descriptors with same name, language index and stream number"

    .line 87
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p1

    .line 91
    :cond_5a
    :goto_5a
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void

    .line 95
    :catchall_5e
    move-exception p1

    .line 96
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    .line 97
    throw p1

    .line 98
    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    const-string v0, "Descriptor cannot be added, see isAddSupported(...)"

    .line 102
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p1
.end method

.method public final assertDescriptor(Ljava/lang/String;)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;I)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public final assertDescriptor(Ljava/lang/String;I)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;
    .registers 5

    .line 2
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getDescriptorsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_15

    :cond_d
    const/4 p1, 0x0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    goto :goto_22

    .line 5
    :cond_15
    :goto_15
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    move-object p1, v0

    :goto_22
    return-object p1
.end method

.method public final containsDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    .line 3
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->perfPoint:Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    .line 5
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->setDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 3
    return-object v0
.end method

.method public getCurrentAsfChunkSize()J
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    const-wide/16 v1, 0x1a

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1f

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 23
    iget-object v4, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 25
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getCurrentAsfSize(Lorg/jaudiotagger/audio/asf/data/ContainerType;)I

    .line 28
    move-result v3

    .line 29
    int-to-long v3, v3

    .line 30
    add-long/2addr v1, v3

    .line 31
    goto :goto_a

    .line 32
    :cond_1f
    return-wide v1
.end method

.method public final getDescriptorCount()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final getDescriptors()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

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

.method public final getDescriptorsByName(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    .line 8
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_36

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/List;

    .line 28
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_f

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 41
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_f

    .line 51
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    goto :goto_f

    .line 55
    :cond_36
    return-object v0
.end method

.method public final getValueFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getDescriptorsByName(Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_18

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_18

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 20
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    const-string p1, ""

    .line 27
    :goto_1a
    return-object p1
.end method

.method public final hasDescriptor(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getDescriptorsByName(Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result p1

    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 11
    return p1
.end method

.method public isAddSupported(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getRawData()[B

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    .line 16
    move-result v3

    .line 17
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    .line 20
    move-result v4

    .line 21
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    .line 24
    move-result v5

    .line 25
    invoke-virtual/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->checkConstraints(Ljava/lang/String;[BIII)Ljava/lang/RuntimeException;

    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_20

    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 v0, 0x0

    .line 34
    :goto_21
    if-eqz v0, :cond_4a

    .line 36
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->isMultiValued()Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_4a

    .line 46
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->perfPoint:Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    .line 48
    monitor-enter v1

    .line 49
    :try_start_30
    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    .line 51
    iget-object v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->perfPoint:Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    .line 53
    invoke-virtual {v3, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;->setDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Lorg/jaudiotagger/audio/asf/data/MetadataContainer$DescriptorPointer;

    .line 56
    move-result-object p1

    .line 57
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/util/List;

    .line 63
    if-eqz p1, :cond_45

    .line 65
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 68
    move-result p1

    .line 69
    move v0, p1

    .line 70
    :cond_45
    monitor-exit v1

    .line 71
    goto :goto_4a

    .line 72
    :catchall_47
    move-exception p1

    .line 73
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_47

    .line 74
    throw p1

    .line 75
    :cond_4a
    :goto_4a
    return v0
.end method

.method public final isEmpty()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getDescriptorCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_23

    .line 8
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :goto_f
    if-eqz v1, :cond_23

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_23

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 30
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->isEmpty()Z

    .line 33
    move-result v2

    .line 34
    and-int/2addr v1, v2

    .line 35
    goto :goto_f

    .line 36
    :cond_23
    return v1
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
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2e

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v3, "  |-> "

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    sget-object v2, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    goto :goto_11

    .line 47
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method public final removeDescriptorsByName(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_31

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/List;

    .line 23
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_a

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 36
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_a

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 49
    goto :goto_a

    .line 50
    :cond_31
    return-void
.end method

.method public final setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public writeInto(Ljava/io/OutputStream;)J
    .registers 7

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getCurrentAsfChunkSize()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/Chunk;->getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 20
    invoke-static {v0, v1, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 23
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 26
    move-result v3

    .line 27
    invoke-static {v3, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 30
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v2

    .line 34
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_33

    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 46
    iget-object v4, p0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 48
    invoke-virtual {v3, p1, v4}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->writeInto(Ljava/io/OutputStream;Lorg/jaudiotagger/audio/asf/data/ContainerType;)I

    .line 51
    goto :goto_21

    .line 52
    :cond_33
    return-wide v0
.end method
