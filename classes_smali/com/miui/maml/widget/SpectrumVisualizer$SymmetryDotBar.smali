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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v2, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    int-to-float v3, v2

    iget-object v4, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    aget v4, v4, p2

    const/high16 v5, 0x3f800000  # 1.0f

    sub-float/2addr v5, v4

    mul-float/2addr v5, v3

    iget v12, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    int-to-float v3, v12

    div-float/2addr v5, v3

    float-to-double v3, v5

    const-wide/high16 v16, 0x3fe0000000000000L  # 0.5

    add-double v3, v3, v16

    double-to-int v3, v3

    mul-int v11, v3, v12

    if-ge v11, v2, :cond_2e

    iget-object v7, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPixels:[I

    mul-int v8, v12, v11

    mul-int v10, v12, p2

    sub-int v13, v2, v11

    const/4 v14, 0x1

    iget-object v15, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v9, v12

    invoke-virtual/range {v6 .. v15}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    :cond_2e
    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v2, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    int-to-float v3, v2

    iget-object v4, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    aget v4, v4, p2

    mul-float/2addr v3, v4

    iget v10, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    int-to-float v4, v10

    div-float/2addr v3, v4

    float-to-double v3, v3

    add-double v3, v3, v16

    double-to-int v3, v3

    mul-int/2addr v3, v10

    if-le v3, v2, :cond_45

    move v11, v2

    goto :goto_46

    :cond_45
    move v11, v3

    :goto_46
    if-lez v11, :cond_58

    iget-object v5, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowPixels:[I

    const/4 v6, 0x0

    mul-int v8, v10, p2

    iget v9, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    const/4 v12, 0x1

    iget-object v13, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v7, v10

    invoke-virtual/range {v4 .. v13}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    :cond_58
    return-void
.end method
