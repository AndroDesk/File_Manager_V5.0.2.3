.class public Lcom/fileexplorer/advert/util/RoundWrap;
.super Ljava/lang/Object;
.source "RoundWrap.java"


# instance fields
.field private mRadius:F

.field private mRound:Z

.field private final maskPaint:Landroid/graphics/Paint;

.field private final roundRect:Landroid/graphics/RectF;

.field private final zonePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    .line 6
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->roundRect:Landroid/graphics/RectF;

    .line 11
    const/high16 v0, 0x41a00000  # 20.0f

    .line 13
    iput v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->mRadius:F

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    .line 17
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->maskPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    .line 24
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->zonePaint:Landroid/graphics/Paint;

    .line 29
    return-void
.end method

.method private initRoundFilter()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->maskPaint:Landroid/graphics/Paint;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->maskPaint:Landroid/graphics/Paint;

    .line 9
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    .line 11
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 13
    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 16
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 19
    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->zonePaint:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->zonePaint:Landroid/graphics/Paint;

    .line 26
    const/4 v1, -0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public drawLayer(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->mRound:Z

    .line 3
    if-eqz v0, :cond_1d

    .line 5
    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->roundRect:Landroid/graphics/RectF;

    .line 7
    iget-object v1, p0, Lcom/fileexplorer/advert/util/RoundWrap;->zonePaint:Landroid/graphics/Paint;

    .line 9
    const/16 v2, 0x1f

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 14
    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->roundRect:Landroid/graphics/RectF;

    .line 16
    iget v1, p0, Lcom/fileexplorer/advert/util/RoundWrap;->mRadius:F

    .line 18
    iget-object v3, p0, Lcom/fileexplorer/advert/util/RoundWrap;->zonePaint:Landroid/graphics/Paint;

    .line 20
    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 23
    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->roundRect:Landroid/graphics/RectF;

    .line 25
    iget-object v1, p0, Lcom/fileexplorer/advert/util/RoundWrap;->maskPaint:Landroid/graphics/Paint;

    .line 27
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 30
    :cond_1d
    return-void
.end method

.method public onLayout(II)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->mRound:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->roundRect:Landroid/graphics/RectF;

    .line 7
    int-to-float p1, p1

    .line 8
    int-to-float p2, p2

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    :cond_c
    return-void
.end method

.method public setRadius(F)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/fileexplorer/advert/util/RoundWrap;->mRadius:F

    .line 3
    const/4 v0, 0x0

    .line 4
    cmpl-float p1, p1, v0

    .line 6
    if-lez p1, :cond_9

    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    :goto_a
    iput-boolean p1, p0, Lcom/fileexplorer/advert/util/RoundWrap;->mRound:Z

    .line 13
    if-eqz p1, :cond_11

    .line 15
    invoke-direct {p0}, Lcom/fileexplorer/advert/util/RoundWrap;->initRoundFilter()V

    .line 18
    :cond_11
    return-void
.end method

.method public tryRestore(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->mRound:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 8
    :cond_7
    return-void
.end method
