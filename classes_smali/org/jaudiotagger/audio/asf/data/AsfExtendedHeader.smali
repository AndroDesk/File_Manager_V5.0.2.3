.class public final Lorg/jaudiotagger/audio/asf/data/AsfExtendedHeader;
.super Lorg/jaudiotagger/audio/asf/data/ChunkContainer;
.source "AsfExtendedHeader.java"


# direct methods
.method public constructor <init>(JLjava/math/BigInteger;)V
    .registers 5

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 6
    return-void
.end method


# virtual methods
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

.method public getLanguageList()Lorg/jaudiotagger/audio/asf/data/LanguageList;
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    const-class v1, Lorg/jaudiotagger/audio/asf/data/LanguageList;

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/ChunkContainer;->getFirst(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/jaudiotagger/audio/asf/data/Chunk;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/jaudiotagger/audio/asf/data/LanguageList;

    .line 11
    return-object v0
.end method

.method public getMetadataLibraryObject()Lorg/jaudiotagger/audio/asf/data/MetadataContainer;
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_METADATA_LIBRARY:Lorg/jaudiotagger/audio/asf/data/GUID;

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

.method public getMetadataObject()Lorg/jaudiotagger/audio/asf/data/MetadataContainer;
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_METADATA:Lorg/jaudiotagger/audio/asf/data/GUID;

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
