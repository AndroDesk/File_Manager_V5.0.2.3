.class public final Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder;
.super Ljava/lang/Object;
.source "UnitBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder$NonOwnedBitmapResource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Landroid/graphics/Bitmap;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p2, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder$NonOwnedBitmapResource;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder$NonOwnedBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder;->decode(Landroid/graphics/Bitmap;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Options;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .registers 3

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder;->handles(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Options;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
