.class public Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;
.super Ljava/lang/Object;
.source "MetadataBlockDataPadding.java"

# interfaces
.implements Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;


# instance fields
.field private length:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;->length:I

    .line 6
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 5

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;->length:I

    .line 3
    new-array v0, v0, [B

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    iget v3, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;->length:I

    .line 9
    if-ge v2, v3, :cond_f

    .line 11
    aput-byte v1, v0, v2

    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 15
    goto :goto_6

    .line 16
    :cond_f
    return-object v0
.end method

.method public getLength()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;->length:I

    .line 3
    return v0
.end method
