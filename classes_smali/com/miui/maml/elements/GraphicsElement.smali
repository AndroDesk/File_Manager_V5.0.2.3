.class public Lcom/miui/maml/elements/GraphicsElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "GraphicsElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;,
        Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;,
        Lcom/miui/maml/elements/GraphicsElement$Callbacks;
    }
.end annotation


# static fields
.field public static final LINEAR_GRADIENT:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "MAML_Graphics"

.field public static final RADIAL_GRADIENT:I = 0x2

.field public static final TAG_NAME:Ljava/lang/String; = "Graphics"


# instance fields
.field private mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCanvasBounds:Landroid/graphics/Rect;

.field private mCurrentX:F

.field private mCurrentY:F

.field public mFillPaint:Landroid/graphics/Paint;

.field private mInitRawHeight:F

.field private mInitRawWidth:F

.field private mLastAlpha:I

.field private mMode:Landroid/graphics/PorterDuff$Mode;

.field private mPath:Landroid/graphics/Path;

.field private mRenderListener:Lcom/miui/maml/elements/FunctionElement;

.field public mStrokePaint:Landroid/graphics/Paint;

.field private mXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mXfermodeNumExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 6
    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 8
    new-instance p2, Landroid/graphics/Paint;

    .line 10
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 15
    new-instance p2, Landroid/graphics/Paint;

    .line 17
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 22
    new-instance p2, Landroid/graphics/Rect;

    .line 24
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    .line 29
    new-instance p2, Landroid/graphics/Path;

    .line 31
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 36
    const-string p2, "OnDraw"

    .line 38
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 41
    move-result-object p2

    .line 42
    if-eqz p2, :cond_32

    .line 44
    new-instance v0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 46
    invoke-direct {v0, p2, p0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 49
    iput-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 51
    :cond_32
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 54
    move-result-object p2

    .line 55
    const-string v0, "xfermodeNum"

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 64
    move-result-object p2

    .line 65
    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 67
    const-string p2, "xfermode"

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 75
    if-nez p2, :cond_6d

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    move-result p2

    .line 81
    if-nez p2, :cond_6d

    .line 83
    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 89
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 91
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 93
    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 96
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 98
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 100
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 103
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 105
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 107
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 110
    :cond_6d
    return-void
.end method

.method private getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;
    .registers 16

    .line 1
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 3
    if-ltz p6, :cond_11

    .line 5
    invoke-static {}, Landroid/graphics/Shader$TileMode;->values()[Landroid/graphics/Shader$TileMode;

    .line 8
    move-result-object v1

    .line 9
    array-length v1, v1

    .line 10
    if-ge p6, v1, :cond_11

    .line 12
    invoke-static {}, Landroid/graphics/Shader$TileMode;->values()[Landroid/graphics/Shader$TileMode;

    .line 15
    move-result-object v0

    .line 16
    aget-object v0, v0, p6

    .line 18
    :cond_11
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 21
    move-result-object p6

    .line 22
    invoke-virtual {p6, p5}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p6

    .line 26
    const/4 v8, 0x0

    .line 27
    if-nez p6, :cond_2a

    .line 29
    new-instance p6, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    .line 31
    invoke-direct {p6, v8}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;-><init>(Lcom/miui/maml/elements/GraphicsElement$1;)V

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, p5, p6}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    const/4 v1, 0x0

    .line 44
    :goto_2b
    instance-of p5, p6, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    .line 46
    if-eqz p5, :cond_53

    .line 48
    check-cast p6, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    .line 50
    if-nez v1, :cond_3e

    .line 52
    move-object v1, p0

    .line 53
    move-object v2, p6

    .line 54
    move v3, p1

    .line 55
    move-object v4, p2

    .line 56
    move-object v5, p3

    .line 57
    move-object v6, p4

    .line 58
    move-object v7, v0

    .line 59
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/elements/GraphicsElement;->isShaderParmsChanged(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z

    .line 62
    move-result v1

    .line 63
    :cond_3e
    move p5, v1

    .line 64
    if-eqz p5, :cond_4f

    .line 66
    move-object v1, p0

    .line 67
    move-object v2, p6

    .line 68
    move v3, p1

    .line 69
    move-object v4, p2

    .line 70
    move-object v5, p3

    .line 71
    move-object v6, p4

    .line 72
    move-object v7, v0

    .line 73
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/elements/GraphicsElement;->resetShader(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z

    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_4f

    .line 79
    return-object v8

    .line 80
    :cond_4f
    invoke-direct {p0, p5, p6, p1, p4}, Lcom/miui/maml/elements/GraphicsElement;->resetMatrixIfNecessary(ZLcom/miui/maml/elements/GraphicsElement$GraphicsShader;ILjava/lang/String;)V

    .line 83
    return-object p6

    .line 84
    :cond_53
    return-object v8
.end method

.method private isShaderParmsChanged(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z
    .registers 9

    .line 1
    iget-object v0, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_4c

    .line 6
    invoke-static {p1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$100(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)I

    .line 9
    move-result v0

    .line 10
    if-ne p2, v0, :cond_4c

    .line 12
    array-length p2, p3

    .line 13
    iget-object v0, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    .line 15
    array-length v0, v0

    .line 16
    if-ne p2, v0, :cond_4c

    .line 18
    if-eqz p4, :cond_17

    .line 20
    iget-object p2, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    .line 22
    if-nez p2, :cond_1d

    .line 24
    :cond_17
    if-nez p4, :cond_4c

    .line 26
    iget-object p2, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    .line 28
    if-nez p2, :cond_4c

    .line 30
    :cond_1d
    invoke-static {p1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$200(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Landroid/graphics/Shader$TileMode;

    .line 33
    move-result-object p2

    .line 34
    if-ne p6, p2, :cond_4c

    .line 36
    invoke-static {p1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$000(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Ljava/lang/String;

    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_4c

    .line 46
    const/4 p2, 0x0

    .line 47
    move p5, p2

    .line 48
    :goto_2f
    array-length p6, p3

    .line 49
    if-ge p5, p6, :cond_4b

    .line 51
    iget-object p6, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    .line 53
    aget p6, p6, p5

    .line 55
    aget v0, p3, p5

    .line 57
    if-eq p6, v0, :cond_3b

    .line 59
    return v1

    .line 60
    :cond_3b
    if-eqz p4, :cond_48

    .line 62
    iget-object p6, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    .line 64
    aget p6, p6, p5

    .line 66
    aget v0, p4, p5

    .line 68
    cmpl-float p6, p6, v0

    .line 70
    if-eqz p6, :cond_48

    .line 72
    return v1

    .line 73
    :cond_48
    add-int/lit8 p5, p5, 0x1

    .line 75
    goto :goto_2f

    .line 76
    :cond_4b
    return p2

    .line 77
    :cond_4c
    return v1
.end method

.method private isValid()Z
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_11

    .line 11
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_11
    :goto_11
    const-string v0, "MAML_Graphics"

    .line 20
    const-string v1, "Call maml graphics api not in onDraw callback"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method private resetMatrixIfNecessary(ZLcom/miui/maml/elements/GraphicsElement$GraphicsShader;ILjava/lang/String;)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p4}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p4

    .line 9
    if-eqz p4, :cond_5a

    .line 11
    instance-of v0, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    .line 13
    if-eqz v0, :cond_5a

    .line 15
    iget-object v0, p2, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 17
    if-eqz v0, :cond_5a

    .line 19
    check-cast p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    .line 21
    if-nez p1, :cond_1a

    .line 23
    iget-boolean p1, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    .line 25
    if-eqz p1, :cond_5a

    .line 27
    :cond_1a
    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    .line 30
    const/4 p1, 0x0

    .line 31
    const/4 v0, 0x1

    .line 32
    if-ne p3, v0, :cond_31

    .line 34
    const/4 p3, 0x4

    .line 35
    new-array v2, p3, [F

    .line 37
    fill-array-data v2, :array_5c

    .line 40
    const/4 v3, 0x0

    .line 41
    iget-object v4, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x2

    .line 45
    move-object v1, p4

    .line 46
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 49
    goto :goto_53

    .line 50
    :cond_31
    const/4 v1, 0x2

    .line 51
    if-ne p3, v1, :cond_53

    .line 53
    iget-object p3, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    .line 55
    aget v2, p3, p1

    .line 57
    neg-float v2, v2

    .line 58
    aget p3, p3, v0

    .line 60
    neg-float p3, p3

    .line 61
    invoke-virtual {p4, v2, p3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 64
    iget-object p3, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    .line 66
    aget v1, p3, v1

    .line 68
    const/4 v2, 0x3

    .line 69
    aget p3, p3, v2

    .line 71
    neg-float p3, p3

    .line 72
    invoke-virtual {p4, v1, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 75
    iget-object p3, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    .line 77
    aget v1, p3, p1

    .line 79
    aget p3, p3, v0

    .line 81
    invoke-virtual {p4, v1, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 84
    :cond_53
    :goto_53
    iput-boolean p1, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    .line 86
    iget-object p1, p2, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 88
    invoke-virtual {p1, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 91
    :cond_5a
    return-void

    .line 92
    nop

    .line 93
    :array_5c
    .array-data 4
        0x0
        0x0
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private resetShader(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z
    .registers 19

    .line 1
    move-object v0, p1

    .line 2
    move v1, p2

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ne v1, v2, :cond_19

    .line 6
    new-instance v11, Landroid/graphics/LinearGradient;

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    const/high16 v6, 0x3f800000  # 1.0f

    .line 12
    const/high16 v7, 0x3f800000  # 1.0f

    .line 14
    move-object v3, v11

    .line 15
    move-object v8, p3

    .line 16
    move-object/from16 v9, p4

    .line 18
    move-object/from16 v10, p6

    .line 20
    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 23
    iput-object v11, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 25
    goto :goto_2d

    .line 26
    :cond_19
    const/4 v3, 0x2

    .line 27
    if-ne v1, v3, :cond_51

    .line 29
    new-instance v3, Landroid/graphics/RadialGradient;

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/high16 v7, 0x3f800000  # 1.0f

    .line 35
    move-object v4, v3

    .line 36
    move-object v8, p3

    .line 37
    move-object/from16 v9, p4

    .line 39
    move-object/from16 v10, p6

    .line 41
    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 44
    iput-object v3, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 46
    :goto_2d
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    check-cast v3, [I

    .line 52
    iput-object v3, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    .line 54
    if-eqz p4, :cond_40

    .line 56
    invoke-virtual/range {p4 .. p4}, [F->clone()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    check-cast v3, [F

    .line 62
    iput-object v3, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    .line 64
    goto :goto_43

    .line 65
    :cond_40
    const/4 v3, 0x0

    .line 66
    iput-object v3, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    .line 68
    :goto_43
    move-object/from16 v3, p5

    .line 70
    invoke-static {p1, v3}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$002(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    invoke-static {p1, p2}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$102(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I)I

    .line 76
    move-object/from16 v1, p6

    .line 78
    invoke-static {p1, v1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$202(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;

    .line 81
    return v2

    .line 82
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v2, "wrong shader type "

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    const-string v1, "MAML_Graphics"

    .line 101
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    .line 105
    return v0
.end method

.method private setColorFilterInternal(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 11
    return-void
.end method


# virtual methods
.method public beginFill(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    return-void
.end method

.method public beginGradientFill(I[I[FLjava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_19

    .line 7
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_19

    .line 13
    invoke-direct/range {p0 .. p6}, Lcom/miui/maml/elements/GraphicsElement;->getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_19

    .line 19
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 21
    iget-object p1, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 23
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 26
    :cond_19
    return-void
.end method

.method public createOrUpdateGradientBox(FFFFLjava/lang/String;)V
    .registers 12

    .line 1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4b

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p5}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1d

    .line 17
    new-instance v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;-><init>(Lcom/miui/maml/elements/GraphicsElement$1;)V

    .line 23
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, p5, v0}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    :cond_1d
    instance-of p5, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    .line 32
    if-eqz p5, :cond_4b

    .line 34
    check-cast v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    .line 36
    iget-object p5, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    .line 38
    const/4 v1, 0x0

    .line 39
    aget v2, p5, v1

    .line 41
    cmpl-float v2, v2, p1

    .line 43
    const/4 v3, 0x3

    .line 44
    const/4 v4, 0x2

    .line 45
    const/4 v5, 0x1

    .line 46
    if-nez v2, :cond_41

    .line 48
    aget v2, p5, v5

    .line 50
    cmpl-float v2, v2, p2

    .line 52
    if-nez v2, :cond_41

    .line 54
    aget v2, p5, v4

    .line 56
    cmpl-float v2, v2, p3

    .line 58
    if-nez v2, :cond_41

    .line 60
    aget v2, p5, v3

    .line 62
    cmpl-float v2, v2, p4

    .line 64
    if-eqz v2, :cond_4b

    .line 66
    :cond_41
    aput p1, p5, v1

    .line 68
    aput p2, p5, v5

    .line 70
    aput p3, p5, v4

    .line 72
    aput p4, p5, v3

    .line 74
    iput-boolean v5, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    .line 76
    :cond_4b
    return-void
.end method

.method public cubicCurveTo(FFFFFF)V
    .registers 18

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_33

    .line 8
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 13
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 15
    iget v2, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 17
    iget v3, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 22
    iget-object v4, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 24
    move v5, p1

    .line 25
    move v6, p2

    .line 26
    move v7, p3

    .line 27
    move v8, p4

    .line 28
    move/from16 v9, p5

    .line 30
    move/from16 v10, p6

    .line 32
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 35
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 37
    iget-object v2, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 39
    iget-object v3, v0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 44
    move/from16 v1, p5

    .line 46
    iput v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 48
    move/from16 v1, p6

    .line 50
    iput v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 52
    :cond_33
    return-void
.end method

.method public curveTo(FFFF)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_26

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 12
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 14
    iget v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 16
    iget v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 21
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 23
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 26
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 28
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 32
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 35
    iput p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 37
    iput p4, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 39
    :cond_26
    return-void
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 9
    move-result v1

    .line 10
    float-to-int v1, v1

    .line 11
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 16
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    .line 18
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 20
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 22
    sub-int/2addr v3, v4

    .line 23
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 25
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 27
    sub-int/2addr v5, v2

    .line 28
    if-lez v3, :cond_20

    .line 30
    if-ge v3, v0, :cond_20

    .line 32
    move v0, v3

    .line 33
    :cond_20
    if-lez v5, :cond_25

    .line 35
    if-ge v5, v1, :cond_25

    .line 37
    move v1, v5

    .line 38
    :cond_25
    invoke-virtual {p1, v4, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 41
    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 44
    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 46
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 48
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 50
    if-eqz p1, :cond_36

    .line 52
    invoke-virtual {p1}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->perform()V

    .line 55
    :cond_36
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mRenderListener:Lcom/miui/maml/elements/FunctionElement;

    .line 57
    if-eqz p1, :cond_3d

    .line 59
    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    .line 62
    :cond_3d
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 65
    return-void
.end method

.method public doTick(J)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

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
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 13
    if-eqz p1, :cond_32

    .line 15
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 18
    move-result-wide p1

    .line 19
    double-to-int p1, p1

    .line 20
    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 26
    if-eq p1, p2, :cond_32

    .line 28
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 30
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 32
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 34
    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 37
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 39
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 41
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 44
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 46
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 48
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 51
    :cond_32
    iget p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mLastAlpha:I

    .line 53
    iget p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 55
    if-eq p1, p2, :cond_48

    .line 57
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 64
    iget p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 66
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    iget p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 71
    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mLastAlpha:I

    .line 73
    :cond_48
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 75
    if-eqz p1, :cond_51

    .line 77
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 79
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GraphicsElement;->setColorFilterInternal(Landroid/graphics/ColorFilter;)V

    .line 82
    :cond_51
    return-void
.end method

.method public drawCircle(FFF)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_29

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 23
    if-lez v0, :cond_29

    .line 25
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 27
    iget-object v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 32
    move-result v1

    .line 33
    const/high16 v2, 0x40000000  # 2.0f

    .line 35
    div-float/2addr v1, v2

    .line 36
    add-float/2addr v1, p3

    .line 37
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 42
    :cond_29
    return-void
.end method

.method public drawEllipse(FFFF)V
    .registers 14

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_40

    .line 7
    const/4 v0, 0x0

    .line 8
    cmpg-float v1, p3, v0

    .line 10
    if-ltz v1, :cond_40

    .line 12
    cmpg-float v1, p4, v0

    .line 14
    if-gez v1, :cond_10

    .line 16
    goto :goto_40

    .line 17
    :cond_10
    const/high16 v1, 0x40000000  # 2.0f

    .line 19
    div-float/2addr p4, v1

    .line 20
    sub-float v8, p2, p4

    .line 22
    add-float/2addr p2, p4

    .line 23
    div-float/2addr p3, v1

    .line 24
    sub-float p4, p1, p3

    .line 26
    add-float/2addr p1, p3

    .line 27
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 29
    iget-object v7, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 31
    move v3, p4

    .line 32
    move v4, v8

    .line 33
    move v5, p1

    .line 34
    move v6, p2

    .line 35
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 38
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 43
    move-result p3

    .line 44
    cmpl-float v0, p3, v0

    .line 46
    if-lez v0, :cond_40

    .line 48
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 50
    div-float/2addr p3, v1

    .line 51
    sub-float v3, p4, p3

    .line 53
    sub-float v4, v8, p3

    .line 55
    add-float v5, p1, p3

    .line 57
    add-float v6, p2, p3

    .line 59
    iget-object v7, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 61
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 64
    nop

    .line 65
    :cond_40
    :goto_40
    return-void
.end method

.method public drawRect(FFFF)V
    .registers 12

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/miui/maml/elements/GraphicsElement;->drawRoundRect(FFFFFF)V

    .line 11
    return-void
.end method

.method public drawRoundRect(FFFFFF)V
    .registers 27

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4a

    .line 9
    const/4 v9, 0x0

    .line 10
    cmpg-float v1, p3, v9

    .line 12
    if-ltz v1, :cond_4a

    .line 14
    cmpg-float v1, p4, v9

    .line 16
    if-gez v1, :cond_12

    .line 18
    goto :goto_4a

    .line 19
    :cond_12
    add-float v10, p2, p4

    .line 21
    add-float v11, p1, p3

    .line 23
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 25
    iget-object v8, v0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 27
    move/from16 v2, p1

    .line 29
    move/from16 v3, p2

    .line 31
    move v4, v11

    .line 32
    move v5, v10

    .line 33
    move/from16 v6, p5

    .line 35
    move/from16 v7, p6

    .line 37
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 40
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 45
    move-result v1

    .line 46
    cmpl-float v2, v1, v9

    .line 48
    if-lez v2, :cond_4a

    .line 50
    iget-object v12, v0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 52
    const/high16 v2, 0x40000000  # 2.0f

    .line 54
    div-float/2addr v1, v2

    .line 55
    sub-float v13, p1, v1

    .line 57
    sub-float v14, p2, v1

    .line 59
    add-float v15, v11, v1

    .line 61
    add-float v16, v10, v1

    .line 63
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 65
    move/from16 v17, p5

    .line 67
    move/from16 v18, p6

    .line 69
    move-object/from16 v19, v1

    .line 71
    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 74
    nop

    .line 75
    :cond_4a
    :goto_4a
    return-void
.end method

.method public finish()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->finish()V

    .line 11
    :cond_a
    return-void
.end method

.method public getScaleX()F
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawWidth:F

    .line 7
    const/4 v2, 0x0

    .line 8
    cmpl-float v3, v1, v2

    .line 10
    if-lez v3, :cond_16

    .line 12
    cmpl-float v2, v0, v2

    .line 14
    if-lez v2, :cond_16

    .line 16
    div-float/2addr v0, v1

    .line 17
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    .line 20
    move-result v1

    .line 21
    mul-float/2addr v0, v1

    .line 22
    return v0

    .line 23
    :cond_16
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public getScaleY()F
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawHeight:F

    .line 7
    const/4 v2, 0x0

    .line 8
    cmpl-float v3, v1, v2

    .line 10
    if-lez v3, :cond_16

    .line 12
    cmpl-float v2, v0, v2

    .line 14
    if-lez v2, :cond_16

    .line 16
    div-float/2addr v0, v1

    .line 17
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    .line 20
    move-result v1

    .line 21
    mul-float/2addr v0, v1

    .line 22
    return v0

    .line 23
    :cond_16
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public init()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawWidth:F

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawHeight:F

    .line 16
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 18
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 25
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 38
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 43
    if-eqz v0, :cond_2f

    .line 45
    invoke-virtual {v0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->init()V

    .line 48
    :cond_2f
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->evaluateAlpha()I

    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mLastAlpha:I

    .line 54
    return-void
.end method

.method public lineGradientStyle(I[I[FLjava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_19

    .line 7
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_19

    .line 13
    invoke-direct/range {p0 .. p6}, Lcom/miui/maml/elements/GraphicsElement;->getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_19

    .line 19
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 21
    iget-object p1, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 23
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 26
    :cond_19
    return-void
.end method

.method public lineStyle(FIIIF)V
    .registers 9

    .line 1
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 3
    if-ltz p3, :cond_11

    .line 5
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    .line 8
    move-result-object v1

    .line 9
    array-length v1, v1

    .line 10
    if-ge p3, v1, :cond_11

    .line 12
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    .line 15
    move-result-object v0

    .line 16
    aget-object v0, v0, p3

    .line 18
    :cond_11
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 20
    if-ltz p4, :cond_22

    .line 22
    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    .line 25
    move-result-object v2

    .line 26
    array-length v2, v2

    .line 27
    if-ge p4, v2, :cond_22

    .line 29
    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    .line 32
    move-result-object p4

    .line 33
    aget-object v1, p4, p3

    .line 35
    :cond_22
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 37
    const/4 p4, 0x0

    .line 38
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 41
    const/4 p3, 0x0

    .line 42
    cmpl-float p4, p1, p3

    .line 44
    if-ltz p4, :cond_32

    .line 46
    iget-object p4, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    :cond_32
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 61
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 63
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 66
    cmpl-float p1, p5, p3

    .line 68
    if-lez p1, :cond_4a

    .line 70
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 75
    :cond_4a
    return-void
.end method

.method public lineTo(FF)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_17

    .line 7
    iget-object v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 9
    iget v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 11
    iget v3, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 13
    iget-object v6, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 15
    move v4, p1

    .line 16
    move v5, p2

    .line 17
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 20
    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 22
    iput p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 24
    :cond_17
    return-void
.end method

.method public moveTo(FF)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 9
    iput p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 11
    :cond_a
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->pause()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->pause()V

    .line 11
    :cond_a
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->resume()V

    .line 11
    :cond_a
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GraphicsElement;->setColorFilterInternal(Landroid/graphics/ColorFilter;)V

    .line 7
    return-void
.end method

.method public setRenderListener(Lcom/miui/maml/elements/FunctionElement;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mRenderListener:Lcom/miui/maml/elements/FunctionElement;

    .line 3
    return-void
.end method
