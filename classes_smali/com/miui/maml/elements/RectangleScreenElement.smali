.class public Lcom/miui/maml/elements/RectangleScreenElement;
.super Lcom/miui/maml/elements/GeometryScreenElement;
.source "RectangleScreenElement.java"


# static fields
.field public static final CORNER_RADIUS_X:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final CORNER_RADIUS_Y:Lcom/miui/maml/folme/AnimatedProperty;

.field private static final LOG_TAG:Ljava/lang/String; = "RectangleScreenElement"

.field private static final PROPERTY_NAME_CORNER_RADIUS_X:Ljava/lang/String; = "cornerRadiusX"

.field private static final PROPERTY_NAME_CORNER_RADIUS_Y:Ljava/lang/String; = "cornerRadiusY"

.field public static final TAG_NAME:Ljava/lang/String; = "Rectangle"


# instance fields
.field private mCornerRadiusX:F

.field private mCornerRadiusY:F

.field private mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/miui/maml/elements/RectangleScreenElement$1;

    .line 3
    const-string v1, "cornerRadiusX"

    .line 5
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/RectangleScreenElement$1;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 10
    new-instance v2, Lcom/miui/maml/elements/RectangleScreenElement$2;

    .line 12
    const-string v3, "cornerRadiusY"

    .line 14
    invoke-direct {v2, v3}, Lcom/miui/maml/elements/RectangleScreenElement$2;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v2, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 19
    sget-object v4, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    invoke-virtual {v4, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    const/16 v4, 0x3ec

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    const/16 v4, 0x3ee

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    const/16 v1, 0x3ed

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    const/16 v1, 0x3ef

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/RectangleScreenElement;->resolveCornerRadius(Lorg/w3c/dom/Element;)V

    .line 7
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/RectangleScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/RectangleScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    return-object p0
.end method

.method private resolveCornerRadius(Lorg/w3c/dom/Element;)V
    .registers 16

    .line 1
    const-string v0, "cornerRadiusExp"

    .line 3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v0, :cond_57

    .line 19
    const-string v3, "cornerRadius"

    .line 21
    invoke-virtual {p0, p1, v3}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    const-string v3, ","

    .line 27
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    :try_start_1e
    array-length v3, p1

    .line 32
    if-ge v3, v2, :cond_22

    .line 34
    return-void

    .line 35
    :cond_22
    array-length v3, p1

    .line 36
    if-ne v3, v2, :cond_35

    .line 38
    aget-object p1, p1, v1

    .line 40
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 43
    move-result p1

    .line 44
    float-to-double v3, p1

    .line 45
    invoke-virtual {p0, v3, v4}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 48
    move-result p1

    .line 49
    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    .line 51
    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 53
    goto :goto_57

    .line 54
    :cond_35
    aget-object v3, p1, v1

    .line 56
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 59
    move-result v3

    .line 60
    float-to-double v3, v3

    .line 61
    invoke-virtual {p0, v3, v4}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 64
    move-result v3

    .line 65
    iput v3, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 67
    aget-object p1, p1, v2

    .line 69
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 72
    move-result p1

    .line 73
    float-to-double v3, p1

    .line 74
    invoke-virtual {p0, v3, v4}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 77
    move-result p1

    .line 78
    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_4f} :catch_50

    .line 80
    goto :goto_57

    .line 81
    :catch_50
    const-string p1, "RectangleScreenElement"

    .line 83
    const-string v3, "illegal number format of cornerRadius."

    .line 85
    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_57
    :goto_57
    if-eqz v0, :cond_5f

    .line 90
    array-length p1, v0

    .line 91
    if-lez p1, :cond_5f

    .line 93
    aget-object p1, v0, v1

    .line 95
    goto :goto_60

    .line 96
    :cond_5f
    const/4 p1, 0x0

    .line 97
    :goto_60
    move-object v6, p1

    .line 98
    if-eqz v0, :cond_6a

    .line 100
    array-length p1, v0

    .line 101
    if-le p1, v2, :cond_6a

    .line 103
    aget-object p1, v0, v2

    .line 105
    move-object v10, p1

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    move-object v10, v6

    .line 108
    :goto_6b
    new-instance p1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 117
    const-string v2, ".cornerRadiusX"

    .line 119
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 130
    move-result v7

    .line 131
    iget v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 133
    float-to-double v0, v0

    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 137
    move-result-wide v8

    .line 138
    move-object v3, p1

    .line 139
    invoke-direct/range {v3 .. v9}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 142
    iput-object p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 144
    new-instance p1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 153
    const-string v2, ".cornerRadiusY"

    .line 155
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    move-result-object v8

    .line 159
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 162
    move-result-object v9

    .line 163
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 166
    move-result v11

    .line 167
    iget v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    .line 169
    float-to-double v0, v0

    .line 170
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 173
    move-result-wide v12

    .line 174
    move-object v7, p1

    .line 175
    invoke-direct/range {v7 .. v13}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 178
    iput-object p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 180
    return-void
.end method


# virtual methods
.method public doTick(J)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;->doTick(J)V

    .line 4
    iget-object p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 6
    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 9
    move-result-wide p1

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 16
    iget-object p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 18
    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 21
    move-result-wide p1

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    .line 28
    return-void
.end method

.method public initProperties()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/GeometryScreenElement;->initProperties()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 14
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .registers 14

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
    invoke-virtual {p0, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 13
    move-result v3

    .line 14
    invoke-virtual {p0, v2, v1}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 17
    move-result v4

    .line 18
    cmpl-float v5, v0, v2

    .line 20
    if-lez v5, :cond_16

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v0, v2

    .line 24
    :goto_17
    add-float/2addr v0, v3

    .line 25
    cmpl-float v5, v1, v2

    .line 27
    if-lez v5, :cond_1d

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v1, v2

    .line 31
    :goto_1e
    add-float/2addr v1, v4

    .line 32
    sget-object v5, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 34
    const/high16 v6, 0x40000000  # 2.0f

    .line 36
    if-ne p2, v5, :cond_33

    .line 38
    iget p2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 40
    div-float v5, p2, v6

    .line 42
    sub-float/2addr v3, v5

    .line 43
    div-float v5, p2, v6

    .line 45
    sub-float/2addr v4, v5

    .line 46
    div-float v5, p2, v6

    .line 48
    add-float/2addr v0, v5

    .line 49
    div-float/2addr p2, v6

    .line 50
    add-float/2addr v1, p2

    .line 51
    goto :goto_44

    .line 52
    :cond_33
    sget-object v5, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 54
    if-ne p2, v5, :cond_44

    .line 56
    iget p2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 58
    div-float v5, p2, v6

    .line 60
    add-float/2addr v3, v5

    .line 61
    div-float v5, p2, v6

    .line 63
    add-float/2addr v4, v5

    .line 64
    div-float v5, p2, v6

    .line 66
    sub-float/2addr v0, v5

    .line 67
    div-float/2addr p2, v6

    .line 68
    sub-float/2addr v1, p2

    .line 69
    :cond_44
    :goto_44
    move v8, v0

    .line 70
    move v9, v1

    .line 71
    move v6, v3

    .line 72
    move v7, v4

    .line 73
    iget p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 75
    cmpg-float p2, p2, v2

    .line 77
    if-lez p2, :cond_64

    .line 79
    iget p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    .line 81
    cmpg-float p2, p2, v2

    .line 83
    if-gtz p2, :cond_55

    .line 85
    goto :goto_64

    .line 86
    :cond_55
    new-instance p2, Landroid/graphics/RectF;

    .line 88
    invoke-direct {p2, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 91
    iget v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 93
    iget v1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    .line 95
    iget-object v2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 97
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 100
    goto :goto_6a

    .line 101
    :cond_64
    :goto_64
    iget-object v10, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 103
    move-object v5, p1

    .line 104
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    :goto_6a
    return-void
.end method
