.class public Lcom/miui/maml/elements/ArcScreenElement;
.super Lcom/miui/maml/elements/GeometryScreenElement;
.source "ArcScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Arc"


# instance fields
.field private mAngle:F

.field private mAngleExp:Lcom/miui/maml/data/Expression;

.field private mArcPath:Landroid/graphics/Path;

.field private mClose:Z

.field public mOvalRect:Landroid/graphics/RectF;

.field private mSweep:F

.field private mSweepExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    .line 18
    invoke-virtual {p2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 21
    move-result-object p2

    .line 22
    const-string v0, "startAngle"

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mAngleExp:Lcom/miui/maml/data/Expression;

    .line 34
    const-string v0, "sweep"

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mSweepExp:Lcom/miui/maml/data/Expression;

    .line 46
    const-string p2, "close"

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 55
    move-result p1

    .line 56
    iput-boolean p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mClose:Z

    .line 58
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 60
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 62
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$AlignV;->CENTER:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 64
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 66
    return-void
.end method


# virtual methods
.method public doTick(J)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;->doTick(J)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 13
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 16
    iget-object p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mAngleExp:Lcom/miui/maml/data/Expression;

    .line 18
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 21
    move-result-wide p1

    .line 22
    double-to-float p1, p1

    .line 23
    iput p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mAngle:F

    .line 25
    iget-object p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mSweepExp:Lcom/miui/maml/data/Expression;

    .line 27
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 30
    move-result-wide p1

    .line 31
    double-to-float p1, p1

    .line 32
    iput p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mSweep:F

    .line 34
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 8
    move-result v0

    .line 9
    const/high16 v1, 0x40000000  # 2.0f

    .line 11
    div-float v2, p2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    sub-float v2, v3, v2

    .line 16
    div-float v1, v0, v1

    .line 18
    sub-float/2addr v3, v1

    .line 19
    iget-object v1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    .line 21
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 24
    iget-object v1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    .line 26
    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 28
    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 30
    add-float/2addr v2, p2

    .line 31
    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 33
    add-float/2addr v3, v0

    .line 34
    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 36
    iget p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mSweep:F

    .line 38
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 41
    move-result p2

    .line 42
    const/high16 v0, 0x43b40000  # 360.0f

    .line 44
    cmpl-float p2, p2, v0

    .line 46
    if-ltz p2, :cond_37

    .line 48
    iget-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    .line 50
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 52
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 55
    goto :goto_6b

    .line 56
    :cond_37
    iget-boolean p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mClose:Z

    .line 58
    if-eqz p2, :cond_4c

    .line 60
    iget-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    .line 62
    iget-object v0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    .line 64
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 67
    move-result v0

    .line 68
    iget-object v1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    .line 70
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 73
    move-result v1

    .line 74
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 77
    :cond_4c
    iget-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    .line 79
    iget-object v0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    .line 81
    iget v1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mAngle:F

    .line 83
    iget v2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mSweep:F

    .line 85
    iget-boolean v3, p0, Lcom/miui/maml/elements/ArcScreenElement;->mClose:Z

    .line 87
    xor-int/lit8 v3, v3, 0x1

    .line 89
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 92
    iget-boolean p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mClose:Z

    .line 94
    if-eqz p2, :cond_64

    .line 96
    iget-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    .line 98
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 101
    :cond_64
    iget-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    .line 103
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 105
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 108
    :goto_6b
    return-void
.end method
