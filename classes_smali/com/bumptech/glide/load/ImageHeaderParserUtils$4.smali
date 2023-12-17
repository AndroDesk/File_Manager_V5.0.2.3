.class Lcom/bumptech/glide/load/ImageHeaderParserUtils$4;
.super Ljava/lang/Object;
.source "ImageHeaderParserUtils.java"

# interfaces
.implements Lcom/bumptech/glide/load/ImageHeaderParserUtils$OrientationReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field public final synthetic val$finalIs:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$4;->val$finalIs:Ljava/io/InputStream;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$4;->val$byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getOrientation(Lcom/bumptech/glide/load/ImageHeaderParser;)I
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$4;->val$finalIs:Ljava/io/InputStream;

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$4;->val$byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/ImageHeaderParser;->getOrientation(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    .line 8
    move-result p1
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_e

    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$4;->val$finalIs:Ljava/io/InputStream;

    .line 11
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 14
    return p1

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$4;->val$finalIs:Ljava/io/InputStream;

    .line 18
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 21
    throw p1
.end method
