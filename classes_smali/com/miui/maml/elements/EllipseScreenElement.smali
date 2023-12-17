.class public Lcom/miui/maml/elements/EllipseScreenElement;
.super Lcom/miui/maml/elements/GeometryScreenElement;
.source "EllipseScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Ellipse"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 6
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 8
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$AlignV;->CENTER:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 10
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 12
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    cmpg-float v3, v0, v2

    .line 12
    if-ltz v3, :cond_41

    .line 14
    cmpg-float v3, v1, v2

    .line 16
    if-gez v3, :cond_12

    .line 18
    goto :goto_41

    .line 19
    :cond_12
    sget-object v3, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 21
    if-ne p2, v3, :cond_1b

    .line 23
    iget p2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 25
    add-float/2addr v0, p2

    .line 26
    add-float/2addr v1, p2

    .line 27
    goto :goto_2c

    .line 28
    :cond_1b
    sget-object v3, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 30
    if-ne p2, v3, :cond_2c

    .line 32
    iget p2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 34
    sub-float/2addr v0, p2

    .line 35
    sub-float/2addr v1, p2

    .line 36
    cmpg-float p2, v0, v2

    .line 38
    if-ltz p2, :cond_2b

    .line 40
    cmpg-float p2, v1, v2

    .line 42
    if-gez p2, :cond_2c

    .line 44
    :cond_2b
    return-void

    .line 45
    :cond_2c
    :goto_2c
    const/high16 p2, 0x40000000  # 2.0f

    .line 47
    div-float v3, v0, p2

    .line 49
    sub-float v3, v2, v3

    .line 51
    div-float p2, v1, p2

    .line 53
    sub-float/2addr v2, p2

    .line 54
    new-instance p2, Landroid/graphics/RectF;

    .line 56
    add-float/2addr v0, v3

    .line 57
    add-float/2addr v1, v2

    .line 58
    invoke-direct {p2, v3, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 61
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 63
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 66
    :cond_41
    :goto_41
    return-void
.end method
