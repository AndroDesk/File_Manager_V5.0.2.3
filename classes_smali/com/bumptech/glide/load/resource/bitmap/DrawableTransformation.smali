.class public Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;
.super Ljava/lang/Object;
.source "DrawableTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final isRequired:Z

.field private final wrapped:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/Transformation;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    .line 6
    iput-boolean p2, p0, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;->isRequired:Z

    .line 8
    return-void
.end method

.method private newDrawableResource(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/LazyBitmapDrawableResource;->obtain(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method


# virtual methods
.method public asBitmapDrawable()Lcom/bumptech/glide/load/Transformation;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    .line 9
    iget-object p1, p1, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-static {v0, v1, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/DrawableToBitmapConverter;->convert(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/drawable/Drawable;II)Lcom/bumptech/glide/load/engine/Resource;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_35

    .line 21
    iget-boolean p1, p0, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;->isRequired:Z

    .line 23
    if-nez p1, :cond_19

    .line 25
    return-object p2

    .line 26
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string p3, "Unable to convert "

    .line 35
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string p3, " to a Bitmap"

    .line 43
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1

    .line 54
    :cond_35
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    .line 56
    invoke-interface {v1, p1, v0, p3, p4}, Lcom/bumptech/glide/load/Transformation;->transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p4

    .line 64
    if-eqz p4, :cond_45

    .line 66
    invoke-interface {p3}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 69
    return-object p2

    .line 70
    :cond_45
    invoke-direct {p0, p1, p3}, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;->newDrawableResource(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    .line 3
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 6
    return-void
.end method
