.class public Lcom/android/fileexplorer/view/crop/HighlightCropView;
.super Landroid/view/View;
.source "HighlightCropView.java"


# instance fields
.field public mCropRect:Landroid/graphics/RectF;

.field private final mFocusPaint:Landroid/graphics/Paint;

.field private final mNoFocusPaint:Landroid/graphics/Paint;

.field private final mOutlinePaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mFocusPaint:Landroid/graphics/Paint;

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mNoFocusPaint:Landroid/graphics/Paint;

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/HighlightCropView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mFocusPaint:Landroid/graphics/Paint;

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mNoFocusPaint:Landroid/graphics/Paint;

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/HighlightCropView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mFocusPaint:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mNoFocusPaint:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/view/crop/HighlightCropView;->init()V

    return-void
.end method

.method private init()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mFocusPaint:Landroid/graphics/Paint;

    .line 3
    const/16 v1, 0x7d

    .line 5
    const/16 v2, 0x32

    .line 7
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mNoFocusPaint:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 17
    const/high16 v1, 0x40400000  # 3.0f

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 24
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    new-instance v1, Landroid/graphics/RectF;

    .line 11
    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    .line 13
    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 16
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 21
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 23
    const-string v2, "#f1be23"

    .line 25
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mRect:Landroid/graphics/RectF;

    .line 39
    iget-object v2, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mNoFocusPaint:Landroid/graphics/Paint;

    .line 41
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 47
    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 52
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    move-result p1

    .line 8
    div-int/lit8 p1, p1, 0x14

    .line 10
    new-instance p2, Landroid/graphics/RectF;

    .line 12
    int-to-float p3, p1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    move-result p4

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    move-result p5

    .line 21
    sub-int/2addr p4, p5

    .line 22
    mul-int/lit8 p5, p1, 0x2

    .line 24
    add-int/2addr p4, p5

    .line 25
    div-int/lit8 p4, p4, 0x2

    .line 27
    int-to-float p4, p4

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    move-result v0

    .line 32
    sub-int/2addr v0, p1

    .line 33
    int-to-float p1, v0

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 41
    move-result v1

    .line 42
    sub-int/2addr v0, v1

    .line 43
    add-int/2addr v0, p5

    .line 44
    div-int/lit8 v0, v0, 0x2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 49
    move-result v1

    .line 50
    add-int/2addr v1, v0

    .line 51
    sub-int/2addr v1, p5

    .line 52
    int-to-float p5, v1

    .line 53
    invoke-direct {p2, p3, p4, p1, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 56
    iput-object p2, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mCropRect:Landroid/graphics/RectF;

    .line 58
    new-instance p1, Landroid/graphics/RectF;

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 63
    move-result p2

    .line 64
    int-to-float p2, p2

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 68
    move-result p3

    .line 69
    int-to-float p3, p3

    .line 70
    const/4 p4, 0x0

    .line 71
    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 74
    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/HighlightCropView;->mRect:Landroid/graphics/RectF;

    .line 76
    return-void
.end method
