.class Lcom/bumptech/glide/load/ImageHeaderParserUtils$1;
.super Ljava/lang/Object;
.source "ImageHeaderParserUtils.java"

# interfaces
.implements Lcom/bumptech/glide/load/ImageHeaderParserUtils$TypeReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$finalIs:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$1;->val$finalIs:Ljava/io/InputStream;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getType(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$1;->val$finalIs:Ljava/io/InputStream;

    .line 3
    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/ImageHeaderParser;->getType(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 6
    move-result-object p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_c

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$1;->val$finalIs:Ljava/io/InputStream;

    .line 9
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 12
    return-object p1

    .line 13
    :catchall_c
    move-exception p1

    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$1;->val$finalIs:Ljava/io/InputStream;

    .line 16
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 19
    throw p1
.end method
