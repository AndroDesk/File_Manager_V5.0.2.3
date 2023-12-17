.class public Lorg/jaudiotagger/audio/asf/AsfFileWriter;
.super Lorg/jaudiotagger/audio/generic/AudioFileWriter;
.source "AsfFileWriter.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;-><init>()V

    .line 4
    return-void
.end method

.method private searchExistence(Lorg/jaudiotagger/audio/asf/data/ChunkContainer;[Lorg/jaudiotagger/audio/asf/data/MetadataContainer;)[Z
    .registers 7

    .line 1
    array-length v0, p2

    .line 2
    new-array v1, v0, [Z

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_4
    if-ge v2, v0, :cond_19

    .line 7
    aget-object v3, p2, v2

    .line 9
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1, v3}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->hasChunkByGUID(Lorg/jaudiotagger/audio/asf/data/GUID;)Z

    .line 20
    move-result v3

    .line 21
    aput-boolean v3, v1, v2

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_4

    .line 26
    :cond_19
    return-object v1
.end method


# virtual methods
.method public deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 5

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTag;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/asf/AsfTag;-><init>(Z)V

    .line 7
    invoke-virtual {p0, v0, p1, p2}, Lorg/jaudiotagger/audio/asf/AsfFileWriter;->writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 10
    return-void
.end method

.method public writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 12

    .line 1
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/io/AsfHeaderReader;->readTagHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/asf/data/AsfHeader;

    .line 4
    move-result-object v0

    .line 5
    const-wide/16 v1, 0x0

    .line 7
    invoke-virtual {p2, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 10
    new-instance v1, Lorg/jaudiotagger/tag/asf/AsfTag;

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, p1, v2}, Lorg/jaudiotagger/tag/asf/AsfTag;-><init>(Lorg/jaudiotagger/tag/Tag;Z)V

    .line 16
    invoke-static {v1}, Lorg/jaudiotagger/audio/asf/util/TagConverter;->distributeMetadata(Lorg/jaudiotagger/tag/asf/AsfTag;)[Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/audio/asf/AsfFileWriter;->searchExistence(Lorg/jaudiotagger/audio/asf/data/ChunkContainer;[Lorg/jaudiotagger/audio/asf/data/MetadataContainer;)[Z

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getExtendedHeader()Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;

    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/audio/asf/AsfFileWriter;->searchExistence(Lorg/jaudiotagger/audio/asf/data/ChunkContainer;[Lorg/jaudiotagger/audio/asf/data/MetadataContainer;)[Z

    .line 31
    move-result-object v0

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    const/4 v5, 0x0

    .line 43
    :goto_2a
    array-length v6, p1

    .line 44
    if-ge v5, v6, :cond_56

    .line 46
    new-instance v6, Lorg/jaudiotagger/audio/asf/io/WriteableChunkModifer;

    .line 48
    aget-object v7, p1, v5

    .line 50
    invoke-direct {v6, v7}, Lorg/jaudiotagger/audio/asf/io/WriteableChunkModifer;-><init>(Lorg/jaudiotagger/audio/asf/io/WriteableChunk;)V

    .line 53
    aget-boolean v7, v1, v5

    .line 55
    if-eqz v7, :cond_3c

    .line 57
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_53

    .line 61
    :cond_3c
    aget-boolean v7, v0, v5

    .line 63
    if-eqz v7, :cond_44

    .line 65
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_53

    .line 69
    :cond_44
    if-eqz v5, :cond_50

    .line 71
    const/4 v7, 0x2

    .line 72
    if-eq v5, v7, :cond_50

    .line 74
    if-ne v5, v2, :cond_4c

    .line 76
    goto :goto_50

    .line 77
    :cond_4c
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_53

    .line 81
    :cond_50
    :goto_50
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :goto_53
    add-int/lit8 v5, v5, 0x1

    .line 86
    goto :goto_2a

    .line 87
    :cond_56
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_64

    .line 93
    new-instance p1, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderModifier;

    .line 95
    invoke-direct {p1, v4}, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderModifier;-><init>(Ljava/util/List;)V

    .line 98
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_64
    new-instance p1, Lorg/jaudiotagger/audio/asf/io/AsfStreamer;

    .line 103
    invoke-direct {p1}, Lorg/jaudiotagger/audio/asf/io/AsfStreamer;-><init>()V

    .line 106
    new-instance v0, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;

    .line 108
    invoke-direct {v0, p2}, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileInputstream;-><init>(Ljava/io/RandomAccessFile;)V

    .line 111
    new-instance p2, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileOutputStream;

    .line 113
    invoke-direct {p2, p3}, Lorg/jaudiotagger/audio/asf/io/RandomAccessFileOutputStream;-><init>(Ljava/io/RandomAccessFile;)V

    .line 116
    invoke-virtual {p1, v0, p2, v3}, Lorg/jaudiotagger/audio/asf/io/AsfStreamer;->createModifiedCopy(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/util/List;)V

    .line 119
    return-void
.end method
