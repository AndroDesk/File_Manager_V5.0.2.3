.class public Lcom/android/cloud/widget/TransferStatusProgress;
.super Landroid/view/View;
.source "TransferStatusProgress.java"


# static fields
.field public static final FILL:I = 0x1

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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/cloud/widget/TransferStatusProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lcom/android/cloud/widget/TransferStatusProgress;->viewMode:I

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    .line 6
    sget-object v0, Lcom/android/fileexplorer/R$styleable;->TransferStatusProgress:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x4

    const/high16 v1, -0x10000

    .line 7
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->roundColor:I

    const/4 v0, 0x5

    const/high16 v1, 0x40a00000  # 5.0f

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->roundWidth:F

    const/4 v0, 0x2

    const v1, -0xffff01

    .line 9
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->progressColor:I

    const/4 v0, -0x1

    .line 10
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->errorProgressColor:I

    .line 11
    iget v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->roundWidth:F

    const/4 v1, 0x3

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->progressWidth:F

    const/4 v0, 0x1

    const/16 v1, 0x64

    .line 12
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->max:I

    const/4 v0, 0x7

    .line 13
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->style:I

    const/4 v0, 0x6

    const/16 v1, -0x5a

    .line 14
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->startAngle:I

    const/16 v0, 0x8

    .line 15
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/android/cloud/widget/TransferStatusProgress;->viewMode:I

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getStatusBitmapForGrid(Lcom/android/cloud/bean/TransferState$Status;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/android/cloud/util/TransferUtil;->getTransferStatusIcon(Lcom/android/cloud/bean/TransferState$Status;I)Landroid/graphics/drawable/Drawable;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method private getStatusBitmapForList(Lcom/android/cloud/bean/TransferState$Status;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/android/cloud/util/TransferUtil;->getTransferStatusIcon(Lcom/android/cloud/bean/TransferState$Status;I)Landroid/graphics/drawable/Drawable;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method


# virtual methods
.method public declared-synchronized getProgress()I
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->progress:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    move-result v0

    .line 8
    div-int/lit8 v0, v0, 0x2

    .line 10
    int-to-float v1, v0

    .line 11
    iget v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->roundWidth:F

    .line 13
    const/high16 v3, 0x40000000  # 2.0f

    .line 15
    div-float v3, v2, v3

    .line 17
    sub-float v3, v1, v3

    .line 19
    float-to-int v3, v3

    .line 20
    iget-object v4, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    iget-object v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    .line 27
    iget v4, p0, Lcom/android/cloud/widget/TransferStatusProgress;->roundColor:I

    .line 29
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->style:I

    .line 40
    if-eqz v2, :cond_34

    .line 42
    if-eq v2, v4, :cond_2c

    .line 44
    goto :goto_3b

    .line 45
    :cond_2c
    iget-object v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    .line 47
    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 49
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    goto :goto_3b

    .line 53
    :cond_34
    iget-object v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    .line 55
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 57
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    :goto_3b
    int-to-float v2, v3

    .line 61
    iget-object v5, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    .line 63
    invoke-virtual {p1, v1, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    iget-object v1, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    .line 68
    iget v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->progressWidth:F

    .line 70
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v1, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    .line 75
    iget v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->progressColor:I

    .line 77
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    new-instance v6, Landroid/graphics/RectF;

    .line 82
    sub-int v1, v0, v3

    .line 84
    int-to-float v1, v1

    .line 85
    add-int/2addr v0, v3

    .line 86
    int-to-float v0, v0

    .line 87
    invoke-direct {v6, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 90
    iget-object v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->mStatus:Lcom/android/cloud/bean/TransferState$Status;

    .line 92
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Loading:Lcom/android/cloud/bean/TransferState$Status;

    .line 94
    const/16 v2, 0x168

    .line 96
    if-eq v0, v1, :cond_7a

    .line 98
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_Loading:Lcom/android/cloud/bean/TransferState$Status;

    .line 100
    if-eq v0, v1, :cond_7a

    .line 102
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Pause:Lcom/android/cloud/bean/TransferState$Status;

    .line 104
    if-ne v0, v1, :cond_6a

    .line 106
    goto :goto_7a

    .line 107
    :cond_6a
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_error:Lcom/android/cloud/bean/TransferState$Status;

    .line 109
    if-eq v0, v1, :cond_72

    .line 111
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_error:Lcom/android/cloud/bean/TransferState$Status;

    .line 113
    if-ne v0, v1, :cond_81

    .line 115
    :cond_72
    iget-object v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    .line 117
    iget v1, p0, Lcom/android/cloud/widget/TransferStatusProgress;->errorProgressColor:I

    .line 119
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    goto :goto_81

    .line 123
    :cond_7a
    :goto_7a
    iget v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->progress:I

    .line 125
    mul-int/2addr v0, v2

    .line 126
    iget v1, p0, Lcom/android/cloud/widget/TransferStatusProgress;->max:I

    .line 128
    div-int v2, v0, v1

    .line 130
    :cond_81
    :goto_81
    iget v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->style:I

    .line 132
    if-eqz v0, :cond_94

    .line 134
    if-eq v0, v4, :cond_88

    .line 136
    goto :goto_9f

    .line 137
    :cond_88
    iget v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->startAngle:I

    .line 139
    int-to-float v7, v0

    .line 140
    int-to-float v8, v2

    .line 141
    const/4 v9, 0x1

    .line 142
    iget-object v10, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    .line 144
    move-object v5, p1

    .line 145
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 148
    goto :goto_9f

    .line 149
    :cond_94
    iget v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->startAngle:I

    .line 151
    int-to-float v7, v0

    .line 152
    int-to-float v8, v2

    .line 153
    const/4 v9, 0x0

    .line 154
    iget-object v10, p0, Lcom/android/cloud/widget/TransferStatusProgress;->paint:Landroid/graphics/Paint;

    .line 156
    move-object v5, p1

    .line 157
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 160
    :goto_9f
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 163
    move-result v0

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 167
    move-result v1

    .line 168
    iget v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->viewMode:I

    .line 170
    if-nez v2, :cond_b2

    .line 172
    iget-object v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->mStatus:Lcom/android/cloud/bean/TransferState$Status;

    .line 174
    invoke-direct {p0, v2}, Lcom/android/cloud/widget/TransferStatusProgress;->getStatusBitmapForGrid(Lcom/android/cloud/bean/TransferState$Status;)Landroid/graphics/drawable/Drawable;

    .line 177
    move-result-object v2

    .line 178
    goto :goto_b8

    .line 179
    :cond_b2
    iget-object v2, p0, Lcom/android/cloud/widget/TransferStatusProgress;->mStatus:Lcom/android/cloud/bean/TransferState$Status;

    .line 181
    invoke-direct {p0, v2}, Lcom/android/cloud/widget/TransferStatusProgress;->getStatusBitmapForList(Lcom/android/cloud/bean/TransferState$Status;)Landroid/graphics/drawable/Drawable;

    .line 184
    move-result-object v2

    .line 185
    :goto_b8
    if-nez v2, :cond_bb

    .line 187
    return-void

    .line 188
    :cond_bb
    div-int/lit8 v3, v0, 0x5

    .line 190
    div-int/lit8 v4, v1, 0x5

    .line 192
    mul-int/lit8 v0, v0, 0x3

    .line 194
    div-int/lit8 v0, v0, 0x5

    .line 196
    add-int/2addr v0, v3

    .line 197
    mul-int/lit8 v1, v1, 0x3

    .line 199
    div-int/lit8 v1, v1, 0x5

    .line 201
    add-int/2addr v1, v4

    .line 202
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 205
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 208
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_9

    .line 4
    :try_start_3
    iput p1, p0, Lcom/android/cloud/widget/TransferStatusProgress;->max:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_7
    move-exception p1

    .line 9
    goto :goto_11

    .line 10
    :cond_9
    :try_start_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    const-string v0, "max not less than 0"

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_7

    .line 18
    :goto_11
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public declared-synchronized setProgress(I)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_11

    .line 4
    :try_start_3
    iget v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->max:I

    .line 6
    if-le p1, v0, :cond_8

    .line 8
    move p1, v0

    .line 9
    :cond_8
    iput p1, p0, Lcom/android/cloud/widget/TransferStatusProgress;->progress:I

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    goto :goto_19

    .line 18
    :cond_11
    :try_start_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string v0, "progress not less than 0"

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_f

    .line 26
    :goto_19
    monitor-exit p0

    .line 27
    throw p1
.end method

.method public setStatus(Lcom/android/cloud/bean/TransferState$Status;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/TransferStatusProgress;->mStatus:Lcom/android/cloud/bean/TransferState$Status;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lcom/android/cloud/widget/TransferStatusProgress;->mStatus:Lcom/android/cloud/bean/TransferState$Status;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    return-void
.end method
