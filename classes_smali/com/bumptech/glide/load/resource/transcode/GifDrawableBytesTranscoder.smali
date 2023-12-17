.class public Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;
.super Ljava/lang/Object;
.source "GifDrawableBytesTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transcode(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 7
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getBuffer()Ljava/nio/ByteBuffer;

    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lcom/bumptech/glide/load/resource/bytes/BytesResource;

    .line 13
    invoke-static {p1}, Lcom/bumptech/glide/util/ByteBufferUtil;->toBytes(Ljava/nio/ByteBuffer;)[B

    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/resource/bytes/BytesResource;-><init>([B)V

    .line 20
    return-object p2
.end method
