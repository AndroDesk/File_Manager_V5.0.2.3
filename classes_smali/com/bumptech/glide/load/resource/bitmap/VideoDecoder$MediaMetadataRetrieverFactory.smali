.class Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaMetadataRetrieverFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/MediaMetadataRetriever;
    .registers 2

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    .line 3
    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 6
    return-object v0
.end method
