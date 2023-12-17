.class public Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;
.super Ljava/lang/Object;
.source "MetadataBlock.java"


# instance fields
.field private mbd:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

.field private mbh:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->mbh:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 6
    iput-object p2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->mbd:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    .line 8
    return-void
.end method


# virtual methods
.method public getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->mbd:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    .line 3
    return-object v0
.end method

.method public getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->mbh:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 3
    return-object v0
.end method

.method public getLength()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->mbh:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x4

    .line 9
    return v0
.end method
