.class public Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataSeekTable;
.super Ljava/lang/Object;
.source "MetadataBlockDataSeekTable.java"

# interfaces
.implements Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    .line 7
    move-result p1

    .line 8
    new-array p1, p1, [B

    .line 10
    iput-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataSeekTable;->data:[B

    .line 12
    invoke-virtual {p2, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 15
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataSeekTable;->data:[B

    .line 3
    return-object v0
.end method

.method public getLength()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataSeekTable;->data:[B

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method
