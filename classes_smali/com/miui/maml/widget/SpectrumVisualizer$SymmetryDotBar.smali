.class Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SymmetryDotBar"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/widget/SpectrumVisualizer;


# direct methods
.method public constructor <init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 5
    iget v2, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 7
    int-to-float v3, v2

    .line 8
    iget-object v4, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    .line 10
    aget v4, v4, p2

    .line 12
    const/high16 v5, 0x3f800000  # 1.0f

    .line 14
    sub-float/2addr v5, v4

    .line 15
    mul-float/2addr v5, v3

    .line 16
    iget v12, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    .line 18
    int-to-float v3, v12

    .line 19
    div-float/2addr v5, v3

    .line 20
    float-to-double v3, v5

    .line 21
    const-wide/high16 v16, 0x3fe0000000000000L  # 0.5

    .line 23
    add-double v3, v3, v16

    .line 25
    double-to-int v3, v3

    .line 26
    mul-int v11, v3, v12

    .line 28
    if-ge v11, v2, :cond_2e

    .line 30
    iget-object v7, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPixels:[I

    .line 32
    mul-int v8, v12, v11

    .line 34
    mul-int v10, v12, p2

    .line 36
    sub-int v13, v2, v11

    .line 38
    const/4 v14, 0x1

    .line 39
    iget-object v15, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 41
    move-object/from16 v6, p1

    .line 43
    move v9, v12

    .line 44
    invoke-virtual/range {v6 .. v15}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 47
    :cond_2e
    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 49
    iget v2, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 51
    int-to-float v3, v2

    .line 52
    iget-object v4, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    .line 54
    aget v4, v4, p2

    .line 56
    mul-float/2addr v3, v4

    .line 57
    iget v10, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    .line 59
    int-to-float v4, v10

    .line 60
    div-float/2addr v3, v4

    .line 61
    float-to-double v3, v3

    .line 62
    add-double v3, v3, v16

    .line 64
    double-to-int v3, v3

    .line 65
    mul-int/2addr v3, v10

    .line 66
    if-le v3, v2, :cond_45

    .line 68
    move v11, v2

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move v11, v3

    .line 71
    :goto_46
    if-lez v11, :cond_58

    .line 73
    iget-object v5, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowPixels:[I

    .line 75
    const/4 v6, 0x0

    .line 76
    mul-int v8, v10, p2

    .line 78
    iget v9, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 80
    const/4 v12, 0x1

    .line 81
    iget-object v13, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 83
    move-object/from16 v4, p1

    .line 85
    move v7, v10

    .line 86
    invoke-virtual/range {v4 .. v13}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 89
    :cond_58
    return-void
.end method
