.class public abstract Lcom/miui/maml/elements/GeometryScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "GeometryScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;
    }
.end annotation


# static fields
.field public static final FILL_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field private static final LOG_TAG:Ljava/lang/String; = "GeometryScreenElement"

.field private static final PROPERTY_NAME_FILL_COLOR:Ljava/lang/String; = "fillColor"

.field private static final PROPERTY_NAME_STROKE_COLOR:Ljava/lang/String; = "strokeColor"

.field private static final PROPERTY_NAME_STROKE_WEIGHT:Ljava/lang/String; = "strokeWeight"

.field public static final STROKE_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final STROKE_WEIGHT:Lcom/miui/maml/folme/AnimatedProperty;


# instance fields
.field private mFillColor:I

.field public mFillColorParser:Lcom/miui/maml/util/ColorParser;

.field private mFillColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mFillShadersElement:Lcom/miui/maml/shader/ShadersElement;

.field public mPaint:Landroid/graphics/Paint;

.field private final mStrokeAlign:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

.field private mStrokeColor:I

.field public mStrokeColorParser:Lcom/miui/maml/util/ColorParser;

.field private mStrokeColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mStrokeShadersElement:Lcom/miui/maml/shader/ShadersElement;

.field private mStrokeWeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mWeight:F

.field public mXfermodeNumExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/miui/maml/elements/GeometryScreenElement$1;

    .line 3
    const-string v1, "fillColor"

    .line 5
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/GeometryScreenElement$1;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/miui/maml/elements/GeometryScreenElement;->FILL_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 10
    new-instance v2, Lcom/miui/maml/elements/GeometryScreenElement$2;

    .line 12
    const-string v3, "strokeColor"

    .line 14
    invoke-direct {v2, v3}, Lcom/miui/maml/elements/GeometryScreenElement$2;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v2, Lcom/miui/maml/elements/GeometryScreenElement;->STROKE_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 19
    new-instance v4, Lcom/miui/maml/elements/GeometryScreenElement$3;

    .line 21
    const-string v5, "strokeWeight"

    .line 23
    invoke-direct {v4, v5}, Lcom/miui/maml/elements/GeometryScreenElement$3;-><init>(Ljava/lang/String;)V

    .line 26
    sput-object v4, Lcom/miui/maml/elements/GeometryScreenElement;->STROKE_WEIGHT:Lcom/miui/maml/folme/AnimatedProperty;

    .line 28
    sget-object v6, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    invoke-virtual {v6, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    const/16 v6, 0x3ec

    .line 37
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v1, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    invoke-virtual {v1, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    const/16 v1, 0x3ed

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    const/16 v1, 0x3f4

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-direct/range {p0 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 8
    new-instance v2, Landroid/graphics/Paint;

    .line 10
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 13
    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 15
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 17
    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 20
    move-result v2

    .line 21
    iput v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 23
    const-string v2, "strokeColor"

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 32
    move-result-object v3

    .line 33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_2d

    .line 39
    new-instance v4, Lcom/miui/maml/util/ColorParser;

    .line 41
    invoke-direct {v4, v3, v2}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    .line 44
    iput-object v4, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lcom/miui/maml/util/ColorParser;

    .line 46
    :cond_2d
    const-string v2, "fillColor"

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_40

    .line 58
    new-instance v4, Lcom/miui/maml/util/ColorParser;

    .line 60
    invoke-direct {v4, v3, v2}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    .line 63
    iput-object v4, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorParser:Lcom/miui/maml/util/ColorParser;

    .line 65
    :cond_40
    const-string v2, "weight"

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    invoke-static {v3, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 74
    move-result-object v7

    .line 75
    const-string v2, "cap"

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    invoke-direct {v0, v2}, Lcom/miui/maml/elements/GeometryScreenElement;->getCap(Ljava/lang/String;)Landroid/graphics/Paint$Cap;

    .line 84
    move-result-object v2

    .line 85
    iget-object v4, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 90
    invoke-direct/range {p0 .. p1}, Lcom/miui/maml/elements/GeometryScreenElement;->resolveDashIntervals(Lorg/w3c/dom/Element;)[F

    .line 93
    move-result-object v2

    .line 94
    if-eqz v2, :cond_6a

    .line 96
    iget-object v4, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 98
    new-instance v5, Landroid/graphics/DashPathEffect;

    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-direct {v5, v2, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 104
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 107
    :cond_6a
    const-string v2, "strokeAlign"

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    invoke-static {v2}, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->getStrokeAlign(Ljava/lang/String;)Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 116
    move-result-object v2

    .line 117
    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeAlign:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 119
    const-string v2, "xfermodeNum"

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 125
    invoke-static {v3, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 128
    move-result-object v2

    .line 129
    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 131
    if-nez v2, :cond_98

    .line 133
    const-string v2, "xfermode"

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object v2

    .line 139
    invoke-static {v2}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    .line 142
    move-result-object v2

    .line 143
    iget-object v3, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 145
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    .line 147
    invoke-direct {v4, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 150
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 153
    :cond_98
    iget-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 155
    const/4 v3, 0x1

    .line 156
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lcom/miui/maml/util/ColorParser;

    .line 161
    const/4 v3, 0x0

    .line 162
    if-eqz v2, :cond_a8

    .line 164
    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 167
    move-result v2

    .line 168
    goto :goto_a9

    .line 169
    :cond_a8
    move v2, v3

    .line 170
    :goto_a9
    iput v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 172
    iget-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorParser:Lcom/miui/maml/util/ColorParser;

    .line 174
    if-eqz v2, :cond_b3

    .line 176
    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 179
    move-result v3

    .line 180
    :cond_b3
    iput v3, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    .line 182
    new-instance v2, Lcom/miui/maml/folme/PropertyWrapper;

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    iget-object v4, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 191
    const-string v5, ".fillColor"

    .line 193
    invoke-static {v3, v4, v5}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    move-result-object v9

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 200
    move-result-object v10

    .line 201
    const/4 v11, 0x0

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 205
    move-result v12

    .line 206
    iget v3, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    .line 208
    int-to-double v13, v3

    .line 209
    move-object v8, v2

    .line 210
    invoke-direct/range {v8 .. v14}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 213
    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 215
    new-instance v2, Lcom/miui/maml/folme/PropertyWrapper;

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    .line 219
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    iget-object v4, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 224
    const-string v5, ".strokeColor"

    .line 226
    invoke-static {v3, v4, v5}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    move-result-object v16

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 233
    move-result-object v17

    .line 234
    const/16 v18, 0x0

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 239
    move-result v19

    .line 240
    iget v3, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 242
    int-to-double v3, v3

    .line 243
    move-object v15, v2

    .line 244
    move-wide/from16 v20, v3

    .line 246
    invoke-direct/range {v15 .. v21}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 249
    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 251
    new-instance v2, Lcom/miui/maml/folme/PropertyWrapper;

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    .line 255
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    iget-object v4, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 260
    const-string v5, ".strokeWeight"

    .line 262
    invoke-static {v3, v4, v5}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    move-result-object v5

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 269
    move-result-object v6

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 273
    move-result v8

    .line 274
    const-wide/16 v9, 0x0

    .line 276
    move-object v4, v2

    .line 277
    invoke-direct/range {v4 .. v10}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 280
    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 282
    invoke-direct/range {p0 .. p2}, Lcom/miui/maml/elements/GeometryScreenElement;->loadShadersElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 285
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/GeometryScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/GeometryScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/GeometryScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    return-object p0
.end method

.method private final getCap(Ljava/lang/String;)Landroid/graphics/Paint$Cap;
    .registers 4

    .line 1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 9
    return-object v0

    .line 10
    :cond_9
    const-string v1, "round"

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_14

    .line 18
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 20
    goto :goto_1e

    .line 21
    :cond_14
    const-string v1, "square"

    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1e

    .line 29
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 31
    :cond_1e
    :goto_1e
    return-object v0
.end method

.method private loadShadersElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 5

    .line 1
    const-string v0, "StrokeShaders"

    .line 3
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_f

    .line 9
    new-instance v1, Lcom/miui/maml/shader/ShadersElement;

    .line 11
    invoke-direct {v1, v0, p2}, Lcom/miui/maml/shader/ShadersElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 14
    iput-object v1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 16
    :cond_f
    const-string v0, "FillShaders"

    .line 18
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1e

    .line 24
    new-instance v0, Lcom/miui/maml/shader/ShadersElement;

    .line 26
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/shader/ShadersElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 29
    iput-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 31
    :cond_1e
    return-void
.end method

.method private resolveDashIntervals(Lorg/w3c/dom/Element;)[F
    .registers 6

    .line 1
    const-string v0, "dash"

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_e

    .line 14
    return-object v1

    .line 15
    :cond_e
    const-string v0, ","

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    array-length v0, p1

    .line 22
    const/4 v2, 0x2

    .line 23
    if-lt v0, v2, :cond_30

    .line 25
    array-length v0, p1

    .line 26
    rem-int/2addr v0, v2

    .line 27
    if-nez v0, :cond_30

    .line 29
    array-length v0, p1

    .line 30
    new-array v0, v0, [F

    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_20
    array-length v3, p1

    .line 34
    if-ge v2, v3, :cond_2f

    .line 36
    :try_start_23
    aget-object v3, p1, v2

    .line 38
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 41
    move-result v3

    .line 42
    aput v3, v0, v2
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2b} :catch_2e

    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_20

    .line 47
    :catch_2e
    return-object v1

    .line 48
    :cond_2f
    return-object v0

    .line 49
    :cond_30
    return-object v1
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_9

    .line 6
    iget v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    .line 8
    if-eqz v0, :cond_45

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 12
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 14
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 19
    if-eqz v0, :cond_25

    .line 21
    iget-object v2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 23
    invoke-virtual {v0}, Lcom/miui/maml/shader/ShadersElement;->getShader()Landroid/graphics/Shader;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 32
    iget v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 34
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 37
    goto :goto_40

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 43
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 45
    iget v2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    .line 47
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 55
    move-result v2

    .line 56
    iget v3, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 58
    invoke-static {v2, v3}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    .line 61
    move-result v2

    .line 62
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    :goto_40
    sget-object v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->FILL:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/GeometryScreenElement;->onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V

    .line 70
    :cond_45
    iget v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 72
    const/4 v2, 0x0

    .line 73
    cmpl-float v0, v0, v2

    .line 75
    if-lez v0, :cond_97

    .line 77
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 79
    if-nez v0, :cond_54

    .line 81
    iget v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 83
    if-eqz v0, :cond_97

    .line 85
    :cond_54
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 87
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 89
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 94
    iget v2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 96
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 101
    if-eqz v0, :cond_77

    .line 103
    iget-object v1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 105
    invoke-virtual {v0}, Lcom/miui/maml/shader/ShadersElement;->getShader()Landroid/graphics/Shader;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 112
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 114
    iget v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 116
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    goto :goto_92

    .line 120
    :cond_77
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 122
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 125
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 127
    iget v1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 129
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 134
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 137
    move-result v1

    .line 138
    iget v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 140
    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    .line 143
    move-result v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 147
    :goto_92
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeAlign:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/GeometryScreenElement;->onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V

    .line 152
    :cond_97
    return-void
.end method

.method public doTick(J)V
    .registers 4

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
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_25

    .line 17
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 19
    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 22
    move-result-wide p1

    .line 23
    double-to-long p1, p1

    .line 24
    long-to-int p1, p1

    .line 25
    iput p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 27
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 29
    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 32
    move-result-wide p1

    .line 33
    double-to-long p1, p1

    .line 34
    long-to-int p1, p1

    .line 35
    iput p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    .line 37
    goto :goto_39

    .line 38
    :cond_25
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lcom/miui/maml/util/ColorParser;

    .line 40
    if-eqz p1, :cond_2f

    .line 42
    invoke-virtual {p1}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 48
    :cond_2f
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorParser:Lcom/miui/maml/util/ColorParser;

    .line 50
    if-eqz p1, :cond_39

    .line 52
    invoke-virtual {p1}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    .line 58
    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 60
    if-eqz p1, :cond_40

    .line 62
    invoke-virtual {p1}, Lcom/miui/maml/shader/ShadersElement;->updateShader()V

    .line 65
    :cond_40
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 67
    if-eqz p1, :cond_47

    .line 69
    invoke-virtual {p1}, Lcom/miui/maml/shader/ShadersElement;->updateShader()V

    .line 72
    :cond_47
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 74
    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 77
    move-result-wide p1

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 81
    move-result p1

    .line 82
    iput p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 84
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 86
    if-eqz p1, :cond_6a

    .line 88
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 91
    move-result-wide p1

    .line 92
    double-to-int p1, p1

    .line 93
    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    .line 96
    move-result-object p1

    .line 97
    iget-object p2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 101
    invoke-direct {v0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 104
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 107
    :cond_6a
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 109
    if-eqz p1, :cond_75

    .line 111
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 113
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 115
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 118
    :cond_75
    return-void
.end method

.method public initProperties()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->initProperties()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 16
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 19
    return-void
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 11
    :cond_a
    return-void
.end method
