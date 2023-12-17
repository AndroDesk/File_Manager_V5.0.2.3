.class public Lcom/android/fileexplorer/view/RoundFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RoundFrameLayout.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRadius:F

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702cd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/RoundFrameLayout;->mRadius:F

    .line 5
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundFrameLayout;->mPath:Landroid/graphics/Path;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 7
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/view/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private dispatchDraw27(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1f

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 12
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundFrameLayout;->genPath()Landroid/graphics/Path;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 24
    return-void
.end method

.method private dispatchDraw28(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundFrameLayout;->genPath()Landroid/graphics/Path;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 11
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 17
    return-void
.end method

.method private draw27(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1f

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 12
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundFrameLayout;->genPath()Landroid/graphics/Path;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 24
    return-void
.end method

.method private draw28(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RoundFrameLayout;->genPath()Landroid/graphics/Path;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 11
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 17
    return-void
.end method

.method private genPath()Landroid/graphics/Path;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundFrameLayout;->mPath:Landroid/graphics/Path;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundFrameLayout;->mPath:Landroid/graphics/Path;

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/view/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    .line 10
    iget v2, p0, Lcom/android/fileexplorer/view/RoundFrameLayout;->mRadius:F

    .line 12
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 14
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/RoundFrameLayout;->mPath:Landroid/graphics/Path;

    .line 19
    return-object v0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_a

    .line 7
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundFrameLayout;->dispatchDraw28(Landroid/graphics/Canvas;)V

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundFrameLayout;->dispatchDraw27(Landroid/graphics/Canvas;)V

    .line 14
    :goto_d
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_a

    .line 7
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundFrameLayout;->draw28(Landroid/graphics/Canvas;)V

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RoundFrameLayout;->draw27(Landroid/graphics/Canvas;)V

    .line 14
    :goto_d
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    iget-object p3, p0, Lcom/android/fileexplorer/view/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    .line 6
    int-to-float p1, p1

    .line 7
    int-to-float p2, p2

    .line 8
    const/4 p4, 0x0

    .line 9
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 12
    return-void
.end method
