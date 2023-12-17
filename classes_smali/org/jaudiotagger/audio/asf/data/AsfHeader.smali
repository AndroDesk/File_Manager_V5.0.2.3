.class public final Lorg/jaudiotagger/audio/asf/data/AsfHeader;
.super Lorg/jaudiotagger/audio/asf/data/ChunkContainer;
.source "AsfHeader.java"


# static fields
.field public static final ASF_CHARSET:Ljava/nio/charset/Charset;

.field public static final ZERO_TERM:[B


# instance fields
.field private final chunkCount:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "UTF-16LE"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    .line 9
    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [B

    .line 12
    fill-array-data v0, :array_1c

    .line 15
    sput-object v0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    .line 17
    new-instance v0, Ljava/util/HashSet;

    .line 19
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 22
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_STREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_1c
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(JLjava/math/BigInteger;J)V
    .registers 7

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 6
    iput-wide p4, p0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->chunkCount:J

    .line 8
    return-void
.end method


# virtual methods
.method public findContentDescription()Lorg/jaudiotagger/audio/asf/data/ContentDescription;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getContentDescription()Lorg/jaudiotagger/audio/asf/data/ContentDescription;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_14

    .line 7
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getExtendedHeader()Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;

    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_14

    .line 13
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getExtendedHeader()Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;->getContentDescription()Lorg/jaudiotagger/audio/asf/data/ContentDescription;

    .line 20
    move-result-object v0

    .line 21
    :cond_14
    return-object v0
.end method

.method public findExtendedContentDescription()Lorg/jaudiotagger/audio/asf/data/MetadataContainer;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getExtendedContentDescription()Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_14

    .line 7
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getExtendedHeader()Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;

    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_14

    .line 13
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getExtendedHeader()Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;->getExtendedContentDescription()Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    .line 20
    move-result-object v0

    .line 21
    :cond_14
    return-object v0
.end method

.method public findMetadataContainer(Lorg/jaudiotagger/audio/asf/data/ContainerType;)Lorg/jaudiotagger/audio/asf/data/MetadataContainer;
    .registers 4

    .line 1
    const-class v0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    .line 3
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->getFirst(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/jaudiotagger/audio/asf/data/Chunk;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    .line 13
    if-nez v1, :cond_1d

    .line 15
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getExtendedHeader()Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v1, p1, v0}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->getFirst(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/jaudiotagger/audio/asf/data/Chunk;

    .line 26
    move-result-object p1

    .line 27
    move-object v1, p1

    .line 28
    check-cast v1, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    .line 30
    :cond_1d
    return-object v1
.end method

.method public getAudioStreamChunk()Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;
    .registers 5

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_STREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->assertChunkList(Lorg/jaudiotagger/audio/asf/data/GUID;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v3

    .line 13
    if-ge v2, v3, :cond_21

    .line 15
    if-nez v1, :cond_21

    .line 17
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    instance-of v3, v3, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;

    .line 23
    if-eqz v3, :cond_1e

    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;

    .line 31
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_8

    .line 34
    :cond_21
    return-object v1
.end method

.method public getChunkCount()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->chunkCount:J

    .line 3
    return-wide v0
.end method

.method public getContentDescription()Lorg/jaudiotagger/audio/asf/data/ContentDescription;
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    const-class v1, Lorg/jaudiotagger/audio/asf/data/ContentDescription;

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->getFirst(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/jaudiotagger/audio/asf/data/Chunk;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/jaudiotagger/audio/asf/data/ContentDescription;

    .line 11
    return-object v0
.end method

.method public getEncodingChunk()Lorg/jaudiotagger/audio/asf/data/EncodingChunk;
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_ENCODING:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    const-class v1, Lorg/jaudiotagger/audio/asf/data/EncodingChunk;

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->getFirst(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/jaudiotagger/audio/asf/data/Chunk;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/jaudiotagger/audio/asf/data/EncodingChunk;

    .line 11
    return-object v0
.end method

.method public getEncryptionChunk()Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENT_ENCRYPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    const-class v1, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->getFirst(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/jaudiotagger/audio/asf/data/Chunk;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;

    .line 11
    return-object v0
.end method

.method public getExtendedContentDescription()Lorg/jaudiotagger/audio/asf/data/MetadataContainer;
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    const-class v1, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->getFirst(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/jaudiotagger/audio/asf/data/Chunk;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    .line 11
    return-object v0
.end method

.method public getExtendedHeader()Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    const-class v1, Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->getFirst(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/jaudiotagger/audio/asf/data/Chunk;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;

    .line 11
    return-object v0
.end method

.method public getFileHeader()Lorg/jaudiotagger/audio/asf/data/FileHeader;
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_FILE:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    const-class v1, Lorg/jaudiotagger/audio/asf/data/FileHeader;

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->getFirst(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/jaudiotagger/audio/asf/data/Chunk;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/jaudiotagger/audio/asf/data/FileHeader;

    .line 11
    return-object v0
.end method

.method public getStreamBitratePropertiesChunk()Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    const-class v1, Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->getFirst(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/jaudiotagger/audio/asf/data/Chunk;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/jaudiotagger/audio/asf/data/StreamBitratePropertiesChunk;

    .line 11
    return-object v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "  | : Contains: \""

    .line 5
    invoke-static {p1, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->getChunkCount()J

    .line 12
    move-result-wide v2

    .line 13
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, "\" chunks"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    sget-object v2, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-super {p0, p1, v1}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->prettyPrint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method
