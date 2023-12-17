.class public Lcom/bumptech/glide/load/resource/gif/GifDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    }
.end annotation


# static fields
.field private static final GRAVITY:I = 0x77

.field public static final LOOP_FOREVER:I = -0x1

.field public static final LOOP_INTRINSIC:I


# instance fields
.field private animationCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg1/b;",
            ">;"
        }
    .end annotation
.end field

.field private applyGravity:Z

.field private destRect:Landroid/graphics/Rect;

.field private isRecycled:Z

.field private isRunning:Z

.field private isStarted:Z

.field private isVisible:Z

.field private loopCount:I

.field private maxLoopCount:I

.field private paint:Landroid/graphics/Paint;

.field private final state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/load/Transformation;IILandroid/graphics/Bitmap;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    new-instance v8, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/gifdecoder/GifDecoder;IILcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v8}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILandroid/graphics/Bitmap;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/load/Transformation;IILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    .line 8
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;Landroid/graphics/Paint;)V
    .registers 4

    .line 9
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    .line 10
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private findCallback()Landroid/graphics/drawable/Drawable$Callback;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object v0

    .line 5
    :goto_4
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    .line 7
    if-eqz v1, :cond_f

    .line 9
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_4

    .line 16
    :cond_f
    return-object v0
.end method

.method private getDestRect()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    .line 14
    return-object v0
.end method

.method private getPaint()Landroid/graphics/Paint;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    .line 3
    if-nez v0, :cond_c

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    .line 15
    return-object v0
.end method

.method private notifyAnimationEndToListeners()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->animationCallbacks:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    :goto_9
    if-ge v1, v0, :cond_19

    .line 12
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->animationCallbacks:Ljava/util/List;

    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lg1/b;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method private resetLoopCount()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    .line 4
    return-void
.end method

.method private startRunning()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    .line 7
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 12
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 14
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getFrameCount()I

    .line 17
    move-result v0

    .line 18
    if-ne v0, v1, :cond_17

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 23
    goto :goto_27

    .line 24
    :cond_17
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 26
    if-nez v0, :cond_27

    .line 28
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 32
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 34
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->subscribe(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;)V

    .line 37
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 40
    :cond_27
    :goto_27
    return-void
.end method

.method private stopRunning()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 6
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 8
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->unsubscribe(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;)V

    .line 11
    return-void
.end method


# virtual methods
.method public clearAnimationCallbacks()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->animationCallbacks:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    .line 8
    if-eqz v0, :cond_21

    .line 10
    const/16 v0, 0x77

    .line 12
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicWidth()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicHeight()I

    .line 19
    move-result v2

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 23
    move-result-object v3

    .line 24
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getDestRect()Landroid/graphics/Rect;

    .line 27
    move-result-object v4

    .line 28
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 36
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 38
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getDestRect()Landroid/graphics/Rect;

    .line 46
    move-result-object v2

    .line 47
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getPaint()Landroid/graphics/Paint;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 54
    return-void
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getBuffer()Ljava/nio/ByteBuffer;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 3
    return-object v0
.end method

.method public getFirstFrame()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getFirstFrame()Landroid/graphics/Bitmap;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getFrameCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getFrameCount()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getFrameIndex()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getCurrentIndex()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getFrameTransformation()Lcom/bumptech/glide/load/Transformation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getFrameTransformation()Lcom/bumptech/glide/load/Transformation;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getHeight()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getWidth()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x2

    return v0
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getSize()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isRecycled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    .line 3
    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 3
    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    .line 7
    return-void
.end method

.method public onFrameReady()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->findCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_d

    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    return-void

    .line 14
    :cond_d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 17
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFrameIndex()I

    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFrameCount()I

    .line 24
    move-result v1

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 27
    if-ne v0, v1, :cond_22

    .line 29
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 33
    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    .line 35
    :cond_22
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    .line 37
    const/4 v1, -0x1

    .line 38
    if-eq v0, v1, :cond_31

    .line 40
    iget v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    .line 42
    if-lt v1, v0, :cond_31

    .line 44
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->notifyAnimationEndToListeners()V

    .line 47
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 50
    :cond_31
    return-void
.end method

.method public recycle()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 6
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 8
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->clear()V

    .line 11
    return-void
.end method

.method public registerAnimationCallback(Lg1/b;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->animationCallbacks:Ljava/util/List;

    .line 6
    if-nez v0, :cond_e

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->animationCallbacks:Ljava/util/List;

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->animationCallbacks:Ljava/util/List;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getPaint()Landroid/graphics/Paint;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getPaint()Landroid/graphics/Paint;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 8
    return-void
.end method

.method public setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    .line 8
    return-void
.end method

.method public setIsRunning(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 3
    return-void
.end method

.method public setLoopCount(I)V
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-gtz p1, :cond_10

    .line 4
    if-eq p1, v0, :cond_10

    .line 6
    if-nez p1, :cond_8

    .line 8
    goto :goto_10

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string v0, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1

    .line 17
    :cond_10
    :goto_10
    if-nez p1, :cond_21

    .line 19
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 21
    iget-object p1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 23
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getLoopCount()I

    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1d

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v0, p1

    .line 31
    :goto_1e
    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    .line 36
    :goto_23
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 5
    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    .line 7
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 10
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    .line 12
    if-nez p1, :cond_11

    .line 14
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stopRunning()V

    .line 17
    goto :goto_18

    .line 18
    :cond_11
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isStarted:Z

    .line 20
    if-eqz v0, :cond_18

    .line 22
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->startRunning()V

    .line 25
    :cond_18
    :goto_18
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public start()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isStarted:Z

    .line 4
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->resetLoopCount()V

    .line 7
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->startRunning()V

    .line 14
    :cond_d
    return-void
.end method

.method public startFromFirstFrame()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 5
    const-string v1, "You cannot restart a currently running animation."

    .line 7
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 12
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 14
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->setNextStartFromFirstFrame()V

    .line 17
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->start()V

    .line 20
    return-void
.end method

.method public stop()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isStarted:Z

    .line 4
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stopRunning()V

    .line 7
    return-void
.end method

.method public unregisterAnimationCallback(Lg1/b;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->animationCallbacks:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    if-nez p1, :cond_7

    .line 7
    goto :goto_c

    .line 8
    :cond_7
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_c
    :goto_c
    const/4 p1, 0x0

    .line 14
    return p1
.end method
