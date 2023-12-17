.class Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;
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
    name = "AsymmetryDotBar"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/widget/SpectrumVisualizer;


# direct methods
.method public constructor <init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

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
    const-wide/high16 v5, 0x3fe0000000000000L  # 0.5

    .line 23
    add-double/2addr v3, v5

    .line 24
    double-to-int v3, v3

    .line 25
    mul-int v11, v3, v12

    .line 27
    if-ge v11, v2, :cond_2d

    .line 29
    iget-object v7, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPixels:[I

    .line 31
    mul-int v8, v12, v11

    .line 33
    mul-int v10, v12, p2

    .line 35
    sub-int v13, v2, v11

    .line 37
    const/4 v14, 0x1

    .line 38
    iget-object v15, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 40
    move-object/from16 v6, p1

    .line 42
    move v9, v12

    .line 43
    invoke-virtual/range {v6 .. v15}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 46
    :cond_2d
    return-void
.end method
