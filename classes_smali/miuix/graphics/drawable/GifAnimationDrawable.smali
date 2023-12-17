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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 4
    new-instance v0, Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 6
    invoke-direct {v0}, Lmiuix/graphics/gif/DecodeGifImageHelper;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mDurations:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mOriginalDurations:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method private handleFirstDecodeResult(Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z
    .registers 9

    .line 1
    iget-object v0, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7a

    .line 6
    iget-boolean p1, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    .line 8
    if-nez p1, :cond_a

    .line 10
    goto :goto_7a

    .line 11
    :cond_a
    iget-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 13
    invoke-virtual {v0}, Lmiuix/graphics/gif/GifDecoder;->isDecodeToTheEnd()Z

    .line 16
    move-result v2

    .line 17
    iput-boolean v2, p1, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodedAllFrames:Z

    .line 19
    invoke-virtual {v0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    .line 22
    move-result p1

    .line 23
    if-gtz p1, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    move v2, v1

    .line 27
    :goto_1a
    if-ge v2, p1, :cond_4c

    .line 29
    iget-object v3, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 31
    iget-boolean v3, v3, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodedAllFrames:Z

    .line 33
    if-eqz v3, :cond_35

    .line 35
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 37
    iget-object v4, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mResources:Landroid/content/res/Resources;

    .line 39
    invoke-virtual {v0, v2}, Lmiuix/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    .line 42
    move-result-object v5

    .line 43
    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 46
    invoke-virtual {v0, v2}, Lmiuix/graphics/gif/GifDecoder;->getDelay(I)I

    .line 49
    move-result v4

    .line 50
    invoke-virtual {p0, v3, v4}, Lmiuix/graphics/drawable/GifAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 53
    goto :goto_49

    .line 54
    :cond_35
    invoke-virtual {v0, v2}, Lmiuix/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v2}, Lmiuix/graphics/gif/GifDecoder;->getDelay(I)I

    .line 61
    move-result v4

    .line 62
    iget-object v5, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 64
    iget-object v5, v5, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    .line 66
    new-instance v6, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;

    .line 68
    invoke-direct {v6, v3, v4, v2}, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;-><init>(Landroid/graphics/Bitmap;II)V

    .line 71
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :goto_49
    add-int/lit8 v2, v2, 0x1

    .line 76
    goto :goto_1a

    .line 77
    :cond_4c
    iget-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 79
    iget-boolean v0, p1, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodedAllFrames:Z

    .line 81
    if-nez v0, :cond_72

    .line 83
    invoke-virtual {p1}, Lmiuix/graphics/gif/DecodeGifImageHelper;->firstDecodeNextFrames()V

    .line 86
    iget-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 88
    iget-object p1, p1, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    .line 90
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;

    .line 96
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 98
    iget-object v2, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mResources:Landroid/content/res/Resources;

    .line 100
    iget-object v3, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mImage:Landroid/graphics/Bitmap;

    .line 102
    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 105
    iget v2, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mDuration:I

    .line 107
    invoke-virtual {p0, v0, v2}, Lmiuix/graphics/drawable/GifAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 110
    iget p1, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mDuration:I

    .line 112
    invoke-virtual {p0, v0, p1}, Lmiuix/graphics/drawable/GifAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 115
    :cond_72
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 118
    invoke-super {p0, v1}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    .line 121
    const/4 p1, 0x1

    .line 122
    return p1

    .line 123
    :cond_7a
    :goto_7a
    return v1
.end method

.method private internalLoad(Landroid/content/res/Resources;Lmiuix/io/ResettableInputStream;)Z
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mResources:Landroid/content/res/Resources;

    .line 3
    iget-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 5
    iput-object p2, p1, Lmiuix/graphics/gif/DecodeGifImageHelper;->mGifSource:Lmiuix/io/ResettableInputStream;

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Lmiuix/graphics/gif/DecodeGifImageHelper;->decodeFrom(I)Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lmiuix/graphics/drawable/GifAnimationDrawable;->handleFirstDecodeResult(Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private preSelectDrawable(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 3
    iget-object v0, v0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 14
    iget-object v0, v0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;

    .line 23
    iget-object v2, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 25
    iget-object v2, v2, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    if-le v2, v3, :cond_28

    .line 34
    iget-object v2, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 36
    iget-object v2, v2, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    .line 38
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 41
    :cond_28
    iget-object v1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 43
    invoke-virtual {v1}, Lmiuix/graphics/gif/DecodeGifImageHelper;->decodeNextFrames()V

    .line 46
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 48
    iget-object v2, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mResources:Landroid/content/res/Resources;

    .line 50
    iget-object v3, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mImage:Landroid/graphics/Bitmap;

    .line 52
    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 55
    iget-object v2, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 57
    invoke-virtual {v2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object v2

    .line 61
    aput-object v1, v2, p1

    .line 63
    iget-object v1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mDurations:Ljava/util/ArrayList;

    .line 65
    iget v0, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mDuration:I

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 74
    return-void
.end method


# virtual methods
.method public final addFrame(Landroid/graphics/drawable/Drawable;I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 4
    iget-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mDurations:Ljava/util/ArrayList;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mOriginalDurations:Ljava/util/ArrayList;

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public final getDuration(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mDurations:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public load(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .registers 5

    .line 3
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

    .line 1
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

    .line 2
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

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mOriginalDurations:Ljava/util/ArrayList;

    .line 7
    iget v3, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mCurrentFrame:I

    .line 9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/Integer;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result v2

    .line 19
    int-to-long v2, v2

    .line 20
    add-long/2addr v0, v2

    .line 21
    cmp-long v0, p2, v0

    .line 23
    if-nez v0, :cond_2c

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 28
    move-result-wide p2

    .line 29
    iget-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mDurations:Ljava/util/ArrayList;

    .line 31
    iget v1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mCurrentFrame:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Integer;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v0

    .line 43
    int-to-long v0, v0

    .line 44
    add-long/2addr p2, v0

    .line 45
    :cond_2c
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 48
    return-void
.end method

.method public final selectDrawable(I)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/graphics/drawable/GifAnimationDrawable;->preSelectDrawable(I)V

    .line 4
    iput p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mCurrentFrame:I

    .line 6
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 4
    iput-object p1, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 6
    return-void
.end method

.method public final setMaxDecodeSize(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/graphics/drawable/GifAnimationDrawable;->mHelper:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 3
    iput-wide p1, v0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    .line 5
    return-void
.end method
