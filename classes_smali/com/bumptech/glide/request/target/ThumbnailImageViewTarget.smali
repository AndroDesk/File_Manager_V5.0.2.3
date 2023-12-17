.class public abstract Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;
.super Lcom/bumptech/glide/request/target/ImageViewTarget;
.source "ThumbnailImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/ImageViewTarget<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;Z)V

    return-void
.end method


# virtual methods
.method public abstract getDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation
.end method

.method public setResource(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;->getDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p1

    .line 13
    if-eqz v0, :cond_20

    .line 15
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 17
    if-lez v1, :cond_20

    .line 19
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    if-lez v1, :cond_20

    .line 23
    new-instance v1, Lcom/bumptech/glide/request/target/FixedSizeDrawable;

    .line 25
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    invoke-direct {v1, p1, v2, v0}, Lcom/bumptech/glide/request/target/FixedSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 32
    move-object p1, v1

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    .line 35
    check-cast v0, Landroid/widget/ImageView;

    .line 37
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void
.end method
