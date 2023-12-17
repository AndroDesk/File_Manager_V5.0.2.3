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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->roundRect:Landroid/graphics/RectF;

    const/high16 v0, 0x41a00000  # 20.0f

    iput v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->mRadius:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->maskPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->zonePaint:Landroid/graphics/Paint;

    return-void
.end method

.method private initRoundFilter()V
    .registers 5

    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->maskPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->maskPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->zonePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->zonePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public drawLayer(Landroid/graphics/Canvas;)V
    .registers 6

    iget-boolean v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->mRound:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->roundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/fileexplorer/advert/util/RoundWrap;->zonePaint:Landroid/graphics/Paint;

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->roundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/fileexplorer/advert/util/RoundWrap;->mRadius:F

    iget-object v3, p0, Lcom/fileexplorer/advert/util/RoundWrap;->zonePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->roundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/fileexplorer/advert/util/RoundWrap;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    :cond_1d
    return-void
.end method

.method public onLayout(II)V
    .registers 5

    iget-boolean v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->mRound:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->roundRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_c
    return-void
.end method

.method public setRadius(F)V
    .registers 3

    iput p1, p0, Lcom/fileexplorer/advert/util/RoundWrap;->mRadius:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iput-boolean p1, p0, Lcom/fileexplorer/advert/util/RoundWrap;->mRound:Z

    if-eqz p1, :cond_11

    invoke-direct {p0}, Lcom/fileexplorer/advert/util/RoundWrap;->initRoundFilter()V

    :cond_11
    return-void
.end method

.method public tryRestore(Landroid/graphics/Canvas;)V
    .registers 3

    iget-boolean v0, p0, Lcom/fileexplorer/advert/util/RoundWrap;->mRound:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method
