.class public Lcom/android/cloud/widget/TransferStatusProgress;
.super Landroid/view/View;
.source "TransferStatusProgress.java"


# static fields
.field public static final FILL:I

.field public static final STROKE:I


# instance fields
.field private errorProgressColor:I

.field private mStatus:Lcom/android/cloud/bean/TransferState$Status;

.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private progressColor:I

.field private progressWidth:F

.field private roundColor:I

.field private roundWidth:F

.field private startAngle:I

.field private style:I

.field private viewMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/cloud/widget/TransferStatusProgress;->FILL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/cloud/widget/TransferStatusProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/cloud/widget/TransferStatusProgress;->viewMode:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/fileexplorer/R$styleable;->TransferStatusProgress:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x4

    const/high16 v1, -0x10000

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->roundColor:I

    const/4 v0, 0x5

    const/high16 v1, 0x40a00000  # 5.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->roundWidth:F

    const/4 v0, 0x2

    const v1, -0xffff01

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->progressColor:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->errorProgressColor:I

    iget v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->roundWidth:F

    const/4 v1, 0x3

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->progressWidth:F

    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->max:I

    const/4 v0, 0x7

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->style:I

    const/4 v0, 0x6

    const/16 v1, -0x5a

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->startAngle:I

    const/16 v0, 0x8

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/android/cloud/widget/TransferStatusProgress;->viewMode:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getStatusBitmapForGrid(Lcom/android/cloud/bean/TransferState$Status;)Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/cloud/util/TransferUtil;->getTransferStatusIcon(Lcom/android/cloud/bean/TransferState$Status;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getStatusBitmapForList(Lcom/android/cloud/bean/TransferState$Status;)Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/cloud/util/TransferUtil;->getTransferStatusIcon(Lcom/android/cloud/bean/TransferState$Status;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized getProgress()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->progress:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->roundWidth:F

    const/high16 v3, 0x40000000  # 2.0f

    div-float v3, v2, v3

    sub-float v3, v1, v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/cloud/widget/TransferStatusProgress;->roundColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->style:I

    if-eqz v2, :cond_34

    if-eq v2, v4, :cond_2c

    goto :goto_3b

    :cond_2c
    iget-object v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_3b

    :cond_34
    iget-object v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_3b
    int-to-float v2, v3

    iget-object v5, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->progressWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->progressColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/RectF;

    sub-int v1, v0, v3

    int-to-float v1, v1

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-direct {v6, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->mStatus:Lcom/android/cloud/bean/TransferState$Status;

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Loading:Lcom/android/cloud/bean/TransferState$Status;

    const/16 v2, 0x168

    if-eq v0, v1, :cond_7a

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_Loading:Lcom/android/cloud/bean/TransferState$Status;

    if-eq v0, v1, :cond_7a

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Pause:Lcom/android/cloud/bean/TransferState$Status;

    if-ne v0, v1, :cond_6a

    goto :goto_7a

    :cond_6a
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_error:Lcom/android/cloud/bean/TransferState$Status;

    if-eq v0, v1, :cond_72

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_error:Lcom/android/cloud/bean/TransferState$Status;

    if-ne v0, v1, :cond_81

    :cond_72
    iget-object v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/cloud/widget/TransferStatusProgress;->errorProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_81

    :cond_7a
    :goto_7a
    iget v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->progress:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/android/cloud/widget/TransferStatusProgress;->max:I

    div-int v2, v0, v1

    :cond_81
    :goto_81
    iget v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->style:I

    if-eqz v0, :cond_94

    if-eq v0, v4, :cond_88

    goto :goto_9f

    :cond_88
    iget v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->startAngle:I

    int-to-float v7, v0

    int-to-float v8, v2

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_9f

    :cond_94
    iget v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->startAngle:I

    int-to-float v7, v0

    int-to-float v8, v2

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_9f
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->viewMode:I

    if-nez v2, :cond_b2

    iget-object v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->mStatus:Lcom/android/cloud/bean/TransferState$Status;

    invoke-direct {p0, v2}, Lcom/android/cloud/widget/TransferStatusProgress;->getStatusBitmapForGrid(Lcom/android/cloud/bean/TransferState$Status;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_b8

    :cond_b2
    iget-object v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->mStatus:Lcom/android/cloud/bean/TransferState$Status;

    invoke-direct {p0, v2}, Lcom/android/cloud/widget/TransferStatusProgress;->getStatusBitmapForList(Lcom/android/cloud/bean/TransferState$Status;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_b8
    if-nez v2, :cond_bb

    return-void

    :cond_bb
    div-int/lit8 v3, v0, 0x5

    div-int/lit8 v4, v1, 0x5

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v3

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 3

    monitor-enter p0

    if-ltz p1, :cond_9

    :try_start_3
    iput p1, p0, Lcom/android/cloud/widget/TransferStatusProgress;->max:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    goto :goto_11

    :cond_9
    :try_start_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "max not less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_7

    :goto_11
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(I)V
    .registers 3

    monitor-enter p0

    if-ltz p1, :cond_11

    :try_start_3
    iget v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->max:I

    if-le p1, v0, :cond_8

    move p1, v0

    :cond_8
    iput p1, p0, Lcom/android/cloud/widget/TransferStatusProgress;->progress:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    goto :goto_19

    :cond_11
    :try_start_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "progress not less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_f

    :goto_19
    monitor-exit p0

    throw p1
.end method

.method public setStatus(Lcom/android/cloud/bean/TransferState$Status;)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->mStatus:Lcom/android/cloud/bean/TransferState$Status;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/android/cloud/widget/TransferStatusProgress;->mStatus:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
