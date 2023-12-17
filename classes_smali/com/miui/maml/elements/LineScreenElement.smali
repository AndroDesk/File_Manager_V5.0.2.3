.class public Lcom/miui/maml/elements/LineScreenElement;
.super Lcom/miui/maml/elements/GeometryScreenElement;
.source "LineScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Line"


# instance fields
.field private mEndXExp:Lcom/miui/maml/data/Expression;

.field private mEndYExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-virtual {p2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "x1"

    .line 10
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/elements/LineScreenElement;->mEndXExp:Lcom/miui/maml/data/Expression;

    .line 20
    invoke-virtual {p2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 23
    move-result-object p2

    .line 24
    const-string v0, "y1"

    .line 26
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/miui/maml/elements/LineScreenElement;->mEndYExp:Lcom/miui/maml/data/Expression;

    .line 36
    return-void
.end method

.method private final getEndX()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/LineScreenElement;->mEndXExp:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 8
    move-result-wide v0

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const-wide/16 v0, 0x0

    .line 12
    :goto_b
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method private final getEndY()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/LineScreenElement;->mEndYExp:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 8
    move-result-wide v0

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const-wide/16 v0, 0x0

    .line 12
    :goto_b
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 15
    move-result v0

    .line 16
    return v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/LineScreenElement;->getEndX()F

    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    .line 8
    move-result v0

    .line 9
    sub-float v4, p2, v0

    .line 11
    invoke-direct {p0}, Lcom/miui/maml/elements/LineScreenElement;->getEndY()F

    .line 14
    move-result p2

    .line 15
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 18
    move-result v0

    .line 19
    sub-float v5, p2, v0

    .line 21
    iget-object v6, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    move-object v1, p1

    .line 26
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 29
    return-void
.end method
