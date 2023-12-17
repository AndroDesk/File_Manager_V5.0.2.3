.class public Lmiuix/graphics/drawable/GifAnimationDrawable;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "GifAnimationDrawable.java"


# instance fields
.field private mCurrentFrame:I

.field private mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

.field private mDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

.field private mOriginalDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    new-instance v0, Lmiuix/graphics/gif/DecodeGifImageHelper;

    invoke-direct {v0}, Lmiuix/graphics/gif/DecodeGifImageHelper;-><init>()V

    iput-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mDurations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mOriginalDurations:Ljava/util/ArrayList;

    return-void
.end method

.method private handleFirstDecodeResult(Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z
    .registers 9

    iget-object v0, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_7a

    iget-boolean p1, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    if-nez p1, :cond_a

    goto :goto_7a

    :cond_a
    iget-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    invoke-virtual {v0}, Lmiuix/graphics/gif/GifDecoder;->isDecodeToTheEnd()Z

    move-result v2

    iput-boolean v2, p1, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodedAllFrames:Z

    invoke-virtual {v0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    move-result p1

    if-gtz p1, :cond_19

    return v1

    :cond_19
    move v2, v1

    :goto_1a
    if-ge v2, p1, :cond_4c

    iget-object v3, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    iget-boolean v3, v3, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodedAllFrames:Z

    if-eqz v3, :cond_35

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Lmiuix/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Lmiuix/graphics/gif/GifDecoder;->getDelay(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lmiuix/graphics/drawable/GifAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_49

    :cond_35
    invoke-virtual {v0, v2}, Lmiuix/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v2}, Lmiuix/graphics/gif/GifDecoder;->getDelay(I)I

    move-result v4

    iget-object v5, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    iget-object v5, v5, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    new-instance v6, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;

    invoke-direct {v6, v3, v4, v2}, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_4c
    iget-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    iget-boolean v0, p1, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodedAllFrames:Z

    if-nez v0, :cond_72

    invoke-virtual {p1}, Lmiuix/graphics/gif/DecodeGifImageHelper;->firstDecodeNextFrames()V

    iget-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    iget-object p1, p1, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mResources:Landroid/content/res/Resources;

    iget-object v3, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mImage:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget v2, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mDuration:I

    invoke-virtual {p0, v0, v2}, Lmiuix/graphics/drawable/GifAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget p1, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mDuration:I

    invoke-virtual {p0, v0, p1}, Lmiuix/graphics/drawable/GifAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_72
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    invoke-super {p0, v1}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    const/4 p1, 0x1

    return p1

    :cond_7a
    :goto_7a
    return v1
.end method

.method private internalLoad(Landroid/content/res/Resources;Lmiuix/io/ResettableInputStream;)Z
    .registers 3

    iput-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mResources:Landroid/content/res/Resources;

    iget-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    iput-object p2, p1, Lmiuix/graphics/gif/DecodeGifImageHelper;->mGifSource:Lmiuix/io/ResettableInputStream;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/graphics/gif/DecodeGifImageHelper;->decodeFrom(I)Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiuix/graphics/drawable/GifAnimationDrawable;->handleFirstDecodeResult(Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z

    move-result p1

    return p1
.end method

.method private preSelectDrawable(I)V
    .registers 6

    iget-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    iget-object v0, v0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    iget-object v0, v0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;

    iget-object v2, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    iget-object v2, v2, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_28

    iget-object v2, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    iget-object v2, v2, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_28
    iget-object v1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    invoke-virtual {v1}, Lmiuix/graphics/gif/DecodeGifImageHelper;->decodeNextFrames()V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mResources:Landroid/content/res/Resources;

    iget-object v3, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mImage:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v1, v2, p1

    iget-object v1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mDurations:Ljava/util/ArrayList;

    iget v0, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mDuration:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addFrame(Landroid/graphics/drawable/Drawable;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mDurations:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mOriginalDurations:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getDuration(I)I
    .registers 3

    iget-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mDurations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public load(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v0, Lmiuix/io/ResettableInputStream;

    invoke-direct {v0, p2, p3}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lmiuix/graphics/drawable/GifAnimationDrawable;->internalLoad(Landroid/content/res/Resources;Lmiuix/io/ResettableInputStream;)Z

    move-result p1

    return p1
.end method

.method public load(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p1, p2}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p0, v0, v1}, Lmiuix/graphics/drawable/GifAnimationDrawable;->internalLoad(Landroid/content/res/Resources;Lmiuix/io/ResettableInputStream;)Z

    move-result p1

    return p1
.end method

.method public load(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v0, Lmiuix/io/ResettableInputStream;

    invoke-direct {v0, p2}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lmiuix/graphics/drawable/GifAnimationDrawable;->internalLoad(Landroid/content/res/Resources;Lmiuix/io/ResettableInputStream;)Z

    move-result p1

    return p1
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mOriginalDurations:Ljava/util/ArrayList;

    iget v3, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mCurrentFrame:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, p2, v0

    if-nez v0, :cond_2c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mDurations:Ljava/util/ArrayList;

    iget v1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mCurrentFrame:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p2, v0

    :cond_2c
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final selectDrawable(I)Z
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/graphics/drawable/GifAnimationDrawable;->preSelectDrawable(I)V

    iput p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mCurrentFrame:I

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    move-result p1

    return p1
.end method

.method public final setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    iput-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    return-void
.end method

.method public final setMaxDecodeSize(J)V
    .registers 4

    iget-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    iput-wide p1, v0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    return-void
.end method
