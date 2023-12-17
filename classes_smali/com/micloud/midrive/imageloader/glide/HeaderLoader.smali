.class Lcom/micloud/midrive/imageloader/glide/HeaderLoader;
.super Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;
.source "HeaderLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getHeaders(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/Headers;
    .registers 5

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/imageloader/glide/HeaderLoader;->getHeaders(Ljava/lang/String;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/Headers;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders(Ljava/lang/String;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/Headers;
    .registers 5

    invoke-static {}, Lcom/micloud/midrive/imageloader/glide/ImageUrlHelper;->getHeaders()Lcom/bumptech/glide/load/model/Headers;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getUrl(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Ljava/lang/String;
    .registers 5

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/imageloader/glide/HeaderLoader;->getUrl(Ljava/lang/String;IILcom/bumptech/glide/load/Options;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;IILcom/bumptech/glide/load/Options;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Lcom/micloud/midrive/imageloader/glide/ImageUrlHelper;->getEncryptedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/imageloader/glide/HeaderLoader;->handles(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public handles(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Lcom/micloud/midrive/imageloader/glide/ImageUrlHelper;->isNetUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/micloud/midrive/imageloader/glide/ImageUrlHelper;->isDirectUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method
