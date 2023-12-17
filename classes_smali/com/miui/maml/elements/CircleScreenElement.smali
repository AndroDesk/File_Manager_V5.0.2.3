.class public Lcom/miui/maml/elements/CircleScreenElement;
.super Lcom/miui/maml/elements/GeometryScreenElement;
.source "CircleScreenElement.java"


# static fields
.field private static final PROPERTY_NAME_R:Ljava/lang/String; = "r"

.field public static final R:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final TAG_NAME:Ljava/lang/String; = "Circle"


# instance fields
.field private mRadiusProperty:Lcom/miui/maml/folme/PropertyWrapper;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/miui/maml/elements/CircleScreenElement$1;

    .line 3
    const-string v1, "r"

    .line 5
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/CircleScreenElement$1;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/miui/maml/elements/CircleScreenElement;->R:Lcom/miui/maml/folme/AnimatedProperty;

    .line 10
    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    const/16 v2, 0x3e9

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 11

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-virtual {p2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "r"

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object v4

    .line 18
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 20
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 22
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$AlignV;->CENTER:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 24
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 26
    new-instance p1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 35
    const-string v2, ".r"

    .line 37
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 48
    move-result v5

    .line 49
    const-wide/16 v6, 0x0

    .line 51
    move-object v1, p1

    .line 52
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 55
    iput-object p1, p0, Lcom/miui/maml/elements/CircleScreenElement;->mRadiusProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 57
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/CircleScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/CircleScreenElement;->mRadiusProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    return-object p0
.end method

.method private final getRadius()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/CircleScreenElement;->mRadiusProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 10
    move-result v0

    .line 11
    return v0
.end method


# virtual methods
.method public initProperties()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/GeometryScreenElement;->initProperties()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/CircleScreenElement;->mRadiusProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 9
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/CircleScreenElement;->getRadius()F

    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 7
    const/high16 v2, 0x40000000  # 2.0f

    .line 9
    if-ne p2, v1, :cond_f

    .line 11
    iget p2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 13
    div-float/2addr p2, v2

    .line 14
    add-float/2addr v0, p2

    .line 15
    goto :goto_17

    .line 16
    :cond_f
    sget-object v1, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 18
    if-ne p2, v1, :cond_17

    .line 20
    iget p2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 22
    div-float/2addr p2, v2

    .line 23
    sub-float/2addr v0, p2

    .line 24
    :cond_17
    :goto_17
    iget-object p2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1, v1, v1, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 30
    return-void
.end method
