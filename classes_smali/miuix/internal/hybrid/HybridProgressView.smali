.class public Lmiuix/internal/hybrid/HybridProgressView;
.super Landroid/widget/ImageView;
.source "HybridProgressView.java"


# static fields
.field private static final DELAY:I = 0x28

.field private static final MAX_CUR_PROGRESS:I = 0x251c

.field private static final MAX_PROGRESS:I = 0x2710

.field private static final MIN_CUR_PROGRESS:I = 0x320

.field private static final MSG_UPDATE:I = 0x2a

.field private static final STEPS:I = 0xa


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCurrentProgress:I

.field private mHandler:Landroid/os/Handler;

.field private mIncrement:I

.field private mReverseBounds:Landroid/graphics/Rect;

.field private mReverseDrawable:Landroid/graphics/drawable/Drawable;

.field private mTargetProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/HybridProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/HybridProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/HybridProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/internal/hybrid/HybridProgressView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lmiuix/internal/hybrid/HybridProgressView;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lmiuix/internal/hybrid/HybridProgressView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/internal/hybrid/HybridProgressView;->mTargetProgress:I

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lmiuix/internal/hybrid/HybridProgressView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/internal/hybrid/HybridProgressView;->mIncrement:I

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lmiuix/internal/hybrid/HybridProgressView;)Landroid/graphics/Rect;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/internal/hybrid/HybridProgressView;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mContext:Landroid/content/Context;

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    iput-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;

    .line 11
    iput v0, p0, Lmiuix/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    .line 13
    iput v0, p0, Lmiuix/internal/hybrid/HybridProgressView;->mTargetProgress:I

    .line 15
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p1

    .line 21
    sget v1, Lmiuix/hybrid/R$drawable;->hybrid_progress_reverse:I

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mReverseDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    new-instance p1, Lmiuix/internal/hybrid/HybridProgressView$1;

    .line 31
    invoke-direct {p1, p0}, Lmiuix/internal/hybrid/HybridProgressView$1;-><init>(Lmiuix/internal/hybrid/HybridProgressView;)V

    .line 34
    iput-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance p1, Landroid/graphics/Rect;

    .line 38
    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 41
    iput-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mReverseBounds:Landroid/graphics/Rect;

    .line 43
    return-void
.end method


# virtual methods
.method public getMax()I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    iget v2, p0, Lmiuix/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    .line 25
    int-to-float v2, v2

    .line 26
    mul-float/2addr v1, v2

    .line 27
    const v2, 0x461c4000  # 10000.0f

    .line 30
    div-float/2addr v1, v2

    .line 31
    sub-float/2addr v0, v1

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 35
    neg-float v1, v0

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    iget-object v1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mReverseBounds:Landroid/graphics/Rect;

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 45
    move-result v3

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 54
    iget-object v1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mReverseDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object v3, p0, Lmiuix/internal/hybrid/HybridProgressView;->mReverseBounds:Landroid/graphics/Rect;

    .line 58
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 61
    iget-object v1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mReverseDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 72
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 7

    .line 1
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;

    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 6
    sub-int/2addr p4, p2

    .line 7
    iget p2, p0, Lmiuix/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    .line 9
    mul-int/2addr p4, p2

    .line 10
    div-int/lit16 p4, p4, 0x2710

    .line 12
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 14
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 16
    sub-int/2addr p5, p3

    .line 17
    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    .line 19
    return-void
.end method

.method public setProgress(I)V
    .registers 4

    .line 1
    mul-int/lit8 p1, p1, 0x64

    .line 3
    iget v0, p0, Lmiuix/internal/hybrid/HybridProgressView;->mTargetProgress:I

    .line 5
    const/16 v1, 0x320

    .line 7
    if-gt v0, v1, :cond_a

    .line 9
    iput v0, p0, Lmiuix/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    .line 11
    :cond_a
    iput p1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mTargetProgress:I

    .line 13
    iget v0, p0, Lmiuix/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    .line 15
    sub-int/2addr p1, v0

    .line 16
    div-int/lit8 p1, p1, 0xa

    .line 18
    iput p1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mIncrement:I

    .line 20
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    .line 22
    const/16 v0, 0x2a

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 32
    return-void
.end method
