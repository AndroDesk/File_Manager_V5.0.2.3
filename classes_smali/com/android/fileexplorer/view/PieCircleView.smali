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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/PieCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/PieCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/PieCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 25

    move-object/from16 v0, p0

    const-string v1, "onDraw centerX = "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/fileexplorer/view/PieCircleView;->centerX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", centerY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/fileexplorer/view/PieCircleView;->centerY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", r = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/fileexplorer/view/PieCircleView;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", realWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, 0x41a00000  # 20.0f

    invoke-static {v2}, Lcom/android/fileexplorer/util/DisplayUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PieCircleView"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/fileexplorer/view/PieCircleView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f06052f

    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lcom/android/fileexplorer/view/PieCircleView;->piePercent:I

    mul-int/lit16 v1, v1, 0x168

    div-int/lit8 v1, v1, 0x64

    iget v2, v0, Lcom/android/fileexplorer/view/PieCircleView;->centerX:I

    iget v3, v0, Lcom/android/fileexplorer/view/PieCircleView;->r:I

    sub-int v4, v2, v3

    int-to-float v6, v4

    iget v4, v0, Lcom/android/fileexplorer/view/PieCircleView;->centerY:I

    sub-int v5, v4, v3

    int-to-float v7, v5

    add-int/2addr v2, v3

    int-to-float v8, v2

    add-int/2addr v4, v3

    int-to-float v9, v4

    int-to-float v11, v1

    iget-object v13, v0, Lcom/android/fileexplorer/view/PieCircleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v10, -0x3d4c0000  # -90.0f

    const/16 v21, 0x1

    move-object/from16 v5, p1

    move/from16 v12, v21

    invoke-virtual/range {v5 .. v13}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/fileexplorer/view/PieCircleView;->mPaint:Landroid/graphics/Paint;

    const v3, 0x7f060531

    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lcom/android/fileexplorer/view/PieCircleView;->centerX:I

    iget v3, v0, Lcom/android/fileexplorer/view/PieCircleView;->r:I

    sub-int v4, v2, v3

    int-to-float v15, v4

    iget v4, v0, Lcom/android/fileexplorer/view/PieCircleView;->centerY:I

    sub-int v5, v4, v3

    int-to-float v5, v5

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int/2addr v4, v3

    int-to-float v3, v4

    add-int/lit8 v4, v1, -0x5a

    int-to-float v4, v4

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    iget-object v6, v0, Lcom/android/fileexplorer/view/PieCircleView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move/from16 v16, v5

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v1

    move-object/from16 v22, v6

    invoke-virtual/range {v14 .. v22}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/fileexplorer/view/PieCircleView;->centerX:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/fileexplorer/view/PieCircleView;->centerY:I

    iget p2, p0, Lcom/android/fileexplorer/view/PieCircleView;->centerX:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/PieCircleView;->r:I

    const-string p1, "onMeasure centerX = "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/fileexplorer/view/PieCircleView;->centerX:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", centerY = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/fileexplorer/view/PieCircleView;->centerY:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", r = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/fileexplorer/view/PieCircleView;->r:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", realWidth = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p2, 0x41a00000  # 20.0f

    invoke-static {p2}, Lcom/android/fileexplorer/util/DisplayUtil;->dp2px(F)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PieCircleView"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPiePercent(I)V
    .registers 4

    iput p1, p0, Lcom/android/fileexplorer/view/PieCircleView;->piePercent:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPirProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PieCircleView"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
