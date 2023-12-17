.class public final Lcom/android/fileexplorer/model/GlideOptions;
.super Lcom/bumptech/glide/request/RequestOptions;
.source "GlideOptions.java"


# static fields
.field private static centerCropTransform2:Lcom/android/fileexplorer/model/GlideOptions;

.field private static centerInsideTransform1:Lcom/android/fileexplorer/model/GlideOptions;

.field private static circleCropTransform3:Lcom/android/fileexplorer/model/GlideOptions;

.field private static fitCenterTransform0:Lcom/android/fileexplorer/model/GlideOptions;

.field private static noAnimation5:Lcom/android/fileexplorer/model/GlideOptions;

.field private static noTransformation4:Lcom/android/fileexplorer/model/GlideOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    return-void
.end method

.method public static bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/android/fileexplorer/model/GlideOptions;"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static centerCropTransform()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/model/GlideOptions;->centerCropTransform2:Lcom/android/fileexplorer/model/GlideOptions;

    if-nez v0, :cond_13

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/GlideOptions;->centerCrop()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/GlideOptions;->autoClone()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/model/GlideOptions;->centerCropTransform2:Lcom/android/fileexplorer/model/GlideOptions;

    :cond_13
    sget-object v0, Lcom/android/fileexplorer/model/GlideOptions;->centerCropTransform2:Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public static centerInsideTransform()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/model/GlideOptions;->centerInsideTransform1:Lcom/android/fileexplorer/model/GlideOptions;

    if-nez v0, :cond_13

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/GlideOptions;->centerInside()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/GlideOptions;->autoClone()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/model/GlideOptions;->centerInsideTransform1:Lcom/android/fileexplorer/model/GlideOptions;

    :cond_13
    sget-object v0, Lcom/android/fileexplorer/model/GlideOptions;->centerInsideTransform1:Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public static circleCropTransform()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/model/GlideOptions;->circleCropTransform3:Lcom/android/fileexplorer/model/GlideOptions;

    if-nez v0, :cond_13

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/GlideOptions;->circleCrop()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/GlideOptions;->autoClone()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/model/GlideOptions;->circleCropTransform3:Lcom/android/fileexplorer/model/GlideOptions;

    :cond_13
    sget-object v0, Lcom/android/fileexplorer/model/GlideOptions;->circleCropTransform3:Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public static decodeTypeOf(Ljava/lang/Class;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/fileexplorer/model/GlideOptions;"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->decode(Ljava/lang/Class;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static downsampleOf(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeFormatOf(Landroid/graphics/Bitmap$CompressFormat;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeQualityOf(I)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->encodeQuality(I)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(I)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->error(I)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static fitCenterTransform()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/model/GlideOptions;->fitCenterTransform0:Lcom/android/fileexplorer/model/GlideOptions;

    if-nez v0, :cond_13

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/GlideOptions;->fitCenter()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/GlideOptions;->autoClone()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/model/GlideOptions;->fitCenterTransform0:Lcom/android/fileexplorer/model/GlideOptions;

    :cond_13
    sget-object v0, Lcom/android/fileexplorer/model/GlideOptions;->fitCenterTransform0:Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public static formatOf(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static frameOf(J)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->frame(J)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static noAnimation()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/model/GlideOptions;->noAnimation5:Lcom/android/fileexplorer/model/GlideOptions;

    if-nez v0, :cond_13

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/GlideOptions;->dontAnimate()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/GlideOptions;->autoClone()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/model/GlideOptions;->noAnimation5:Lcom/android/fileexplorer/model/GlideOptions;

    :cond_13
    sget-object v0, Lcom/android/fileexplorer/model/GlideOptions;->noAnimation5:Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public static noTransformation()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/model/GlideOptions;->noTransformation4:Lcom/android/fileexplorer/model/GlideOptions;

    if-nez v0, :cond_13

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/GlideOptions;->dontTransform()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/GlideOptions;->autoClone()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/model/GlideOptions;->noTransformation4:Lcom/android/fileexplorer/model/GlideOptions;

    :cond_13
    sget-object v0, Lcom/android/fileexplorer/model/GlideOptions;->noTransformation4:Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public static option(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lcom/android/fileexplorer/model/GlideOptions;"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(I)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->override(I)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(II)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->override(II)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(I)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->placeholder(I)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static priorityOf(Lcom/bumptech/glide/Priority;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static sizeMultiplierOf(F)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->sizeMultiplier(F)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static skipMemoryCacheOf(Z)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->skipMemoryCache(Z)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static timeoutOf(I)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/GlideOptions;->timeout(I)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;)",
            "Lcom/android/fileexplorer/model/GlideOptions;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public autoClone()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideOptions;->autoClone()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideOptions;->centerCrop()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public centerInside()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideOptions;->centerInside()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public circleCrop()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideOptions;->circleCrop()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideOptions;->clone()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideOptions;->clone()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/lang/Class;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/fileexplorer/model/GlideOptions;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->decode(Ljava/lang/Class;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public disallowHardwareConfig()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideOptions;->disallowHardwareConfig()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public dontAnimate()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideOptions;->dontAnimate()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideOptions;->dontTransform()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public encodeQuality(I)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->encodeQuality(I)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public error(I)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->error(I)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public fallback(I)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->fallback(I)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public fitCenter()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideOptions;->fitCenter()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public frame(J)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/model/GlideOptions;->frame(J)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public lock()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic lock()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideOptions;->lock()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public onlyRetrieveFromCache(Z)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->onlyRetrieveFromCache(Z)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public optionalCenterCrop()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideOptions;->optionalCenterCrop()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalCenterInside()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideOptions;->optionalCenterInside()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalCircleCrop()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideOptions;->optionalCircleCrop()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalFitCenter()Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideOptions;->optionalFitCenter()Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/android/fileexplorer/model/GlideOptions;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TY;>;)",
            "Lcom/android/fileexplorer/model/GlideOptions;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/model/GlideOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public override(I)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public override(II)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic override(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->override(I)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/model/GlideOptions;->override(II)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(I)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->placeholder(I)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TY;>;TY;)",
            "Lcom/android/fileexplorer/model/GlideOptions;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/model/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public sizeMultiplier(F)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->sizeMultiplier(F)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public skipMemoryCache(Z)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->skipMemoryCache(Z)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public theme(Landroid/content/res/Resources$Theme;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public timeout(I)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->timeout(I)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lcom/bumptech/glide/load/Transformation;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/android/fileexplorer/model/GlideOptions;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TY;>;)",
            "Lcom/android/fileexplorer/model/GlideOptions;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public final varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/android/fileexplorer/model/GlideOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/model/GlideOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final varargs transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/android/fileexplorer/model/GlideOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public useAnimationPool(Z)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->useAnimationPool(Z)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public useUnlimitedSourceGeneratorsPool(Z)Lcom/android/fileexplorer/model/GlideOptions;
    .registers 2

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/android/fileexplorer/model/GlideOptions;

    move-result-object p1

    return-object p1
.end method
