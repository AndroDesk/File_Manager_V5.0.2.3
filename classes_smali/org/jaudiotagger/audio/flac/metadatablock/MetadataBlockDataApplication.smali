.class public Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;
.super Ljava/lang/Object;
.source "MetadataBlockDataApplication.java"

# interfaces
.implements Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;


# instance fields
.field private data:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;->data:[B

    invoke-virtual {p2, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;->data:[B

    return-object v0
.end method

.method public getLength()I
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;->data:[B

    array-length v0, v0

    return v0
.end method
