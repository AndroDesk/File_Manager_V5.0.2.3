.class public Lcom/android/fileexplorer/view/PieCircleView;
.super Landroid/view/View;
.source "PieCircleView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PieCircleView"


# instance fields
.field private centerX:I

.field private centerY:I

.field private mPaint:Landroid/graphics/Paint;

.field private piePercent:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/PieCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/PieCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/PieCircleView;->mPaint:Landroid/graphics/Paint;

    .line 5
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "onDraw centerX = "

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    iget v2, v0, Lcom/android/fileexplorer/view/PieCircleView;->centerX:I

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, ", centerY = "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v2, v0, Lcom/android/fileexplorer/view/PieCircleView;->centerY:I

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string v2, ", r = "

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget v2, v0, Lcom/android/fileexplorer/view/PieCircleView;->r:I

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, ", realWidth = "

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const/high16 v2, 0x41a00000  # 20.0f

    .line 41
    invoke-static {v2}, Lcom/android/fileexplorer/util/DisplayUtil;->dp2px(F)I

    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    const-string v2, "PieCircleView"

    .line 54
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, v0, Lcom/android/fileexplorer/view/PieCircleView;->mPaint:Landroid/graphics/Paint;

    .line 59
    const v2, 0x7f06052f

    .line 62
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    .line 65
    move-result v2

    .line 66
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget v1, v0, Lcom/android/fileexplorer/view/PieCircleView;->piePercent:I

    .line 71
    mul-int/lit16 v1, v1, 0x168

    .line 73
    div-int/lit8 v1, v1, 0x64

    .line 75
    iget v2, v0, Lcom/android/fileexplorer/view/PieCircleView;->centerX:I

    .line 77
    iget v3, v0, Lcom/android/fileexplorer/view/PieCircleView;->r:I

    .line 79
    sub-int v4, v2, v3

    .line 81
    int-to-float v6, v4

    .line 82
    iget v4, v0, Lcom/android/fileexplorer/view/PieCircleView;->centerY:I

    .line 84
    sub-int v5, v4, v3

    .line 86
    int-to-float v7, v5

    .line 87
    add-int/2addr v2, v3

    .line 88
    int-to-float v8, v2

    .line 89
    add-int/2addr v4, v3

    .line 90
    int-to-float v9, v4

    .line 91
    int-to-float v11, v1

    .line 92
    iget-object v13, v0, Lcom/android/fileexplorer/view/PieCircleView;->mPaint:Landroid/graphics/Paint;

    .line 94
    const/high16 v10, -0x3d4c0000  # -90.0f

    .line 96
    const/16 v21, 0x1

    .line 98
    move-object/from16 v5, p1

    .line 100
    move/from16 v12, v21

    .line 102
    invoke-virtual/range {v5 .. v13}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 105
    iget-object v2, v0, Lcom/android/fileexplorer/view/PieCircleView;->mPaint:Landroid/graphics/Paint;

    .line 107
    const v3, 0x7f060531

    .line 110
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    .line 113
    move-result v3

    .line 114
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget v2, v0, Lcom/android/fileexplorer/view/PieCircleView;->centerX:I

    .line 119
    iget v3, v0, Lcom/android/fileexplorer/view/PieCircleView;->r:I

    .line 121
    sub-int v4, v2, v3

    .line 123
    int-to-float v15, v4

    .line 124
    iget v4, v0, Lcom/android/fileexplorer/view/PieCircleView;->centerY:I

    .line 126
    sub-int v5, v4, v3

    .line 128
    int-to-float v5, v5

    .line 129
    add-int/2addr v2, v3

    .line 130
    int-to-float v2, v2

    .line 131
    add-int/2addr v4, v3

    .line 132
    int-to-float v3, v4

    .line 133
    add-int/lit8 v4, v1, -0x5a

    .line 135
    int-to-float v4, v4

    .line 136
    rsub-int v1, v1, 0x168

    .line 138
    int-to-float v1, v1

    .line 139
    iget-object v6, v0, Lcom/android/fileexplorer/view/PieCircleView;->mPaint:Landroid/graphics/Paint;

    .line 141
    move-object/from16 v14, p1

    .line 143
    move/from16 v16, v5

    .line 145
    move/from16 v17, v2

    .line 147
    move/from16 v18, v3

    .line 149
    move/from16 v19, v4

    .line 151
    move/from16 v20, v1

    .line 153
    move-object/from16 v22, v6

    .line 155
    invoke-virtual/range {v14 .. v22}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 158
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 7
    move-result p1

    .line 8
    div-int/lit8 p1, p1, 0x2

    .line 10
    iput p1, p0, Lcom/android/fileexplorer/view/PieCircleView;->centerX:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 15
    move-result p1

    .line 16
    div-int/lit8 p1, p1, 0x2

    .line 18
    iput p1, p0, Lcom/android/fileexplorer/view/PieCircleView;->centerY:I

    .line 20
    iget p2, p0, Lcom/android/fileexplorer/view/PieCircleView;->centerX:I

    .line 22
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/android/fileexplorer/view/PieCircleView;->r:I

    .line 28
    const-string p1, "onMeasure centerX = "

    .line 30
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move-result-object p1

    .line 34
    iget p2, p0, Lcom/android/fileexplorer/view/PieCircleView;->centerX:I

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string p2, ", centerY = "

    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget p2, p0, Lcom/android/fileexplorer/view/PieCircleView;->centerY:I

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string p2, ", r = "

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget p2, p0, Lcom/android/fileexplorer/view/PieCircleView;->r:I

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string p2, ", realWidth = "

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const/high16 p2, 0x41a00000  # 20.0f

    .line 66
    invoke-static {p2}, Lcom/android/fileexplorer/util/DisplayUtil;->dp2px(F)I

    .line 69
    move-result p2

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    const-string p2, "PieCircleView"

    .line 79
    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public setPiePercent(I)V
    .registers 4

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/PieCircleView;->piePercent:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v1, "setPirProgress = "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const-string v0, "PieCircleView"

    .line 22
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 28
    return-void
.end method
