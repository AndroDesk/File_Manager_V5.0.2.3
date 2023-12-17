.class public Lcom/miui/maml/folme/AnimatedTarget;
.super Lmiuix/animation/IAnimTarget;
.source "AnimatedTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/IAnimTarget<",
        "Lcom/miui/maml/elements/AnimatedScreenElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATE_TAG_FROM:Ljava/lang/String; = "from"

.field public static final STATE_TAG_SET_TO:Ljava/lang/String; = "setTo"

.field public static final STATE_TAG_TO:Ljava/lang/String; = "to"

.field public static sCreator:Lmiuix/animation/ITargetCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/ITargetCreator<",
            "Lcom/miui/maml/elements/AnimatedScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field public static sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field

.field public static sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lmiuix/animation/property/FloatProperty;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mElementRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/elements/AnimatedScreenElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 30

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    sput-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    sget-object v1, Lcom/miui/maml/folme/AnimatedProperty;->X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    sget-object v3, Lcom/miui/maml/folme/AnimatedProperty;->Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    sget-object v5, Lcom/miui/maml/folme/AnimatedProperty;->SCALE_X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 43
    const/4 v6, 0x2

    .line 44
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    sget-object v7, Lcom/miui/maml/folme/AnimatedProperty;->SCALE_Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 55
    const/4 v8, 0x3

    .line 56
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    sget-object v9, Lcom/miui/maml/folme/AnimatedProperty;->ALPHA:Lcom/miui/maml/folme/AnimatedProperty;

    .line 67
    const/4 v10, 0x4

    .line 68
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v10

    .line 72
    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    sget-object v11, Lcom/miui/maml/folme/AnimatedProperty;->HEIGHT:Lcom/miui/maml/folme/AnimatedProperty;

    .line 79
    const/4 v12, 0x5

    .line 80
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v12

    .line 84
    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    sget-object v13, Lcom/miui/maml/folme/AnimatedProperty;->WIDTH:Lcom/miui/maml/folme/AnimatedProperty;

    .line 91
    const/4 v14, 0x6

    .line 92
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v14

    .line 96
    invoke-virtual {v0, v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    sget-object v15, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION:Lcom/miui/maml/folme/AnimatedProperty;

    .line 103
    const/16 v16, 0x9

    .line 105
    move-object/from16 v17, v13

    .line 107
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v13

    .line 111
    invoke-virtual {v0, v15, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    move-object/from16 v16, v13

    .line 118
    sget-object v13, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 120
    const/16 v18, 0xa

    .line 122
    move-object/from16 v19, v15

    .line 124
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v15

    .line 128
    invoke-virtual {v0, v13, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    move-object/from16 v18, v13

    .line 135
    sget-object v13, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 137
    const/16 v20, 0xb

    .line 139
    move-object/from16 v21, v15

    .line 141
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    move-result-object v15

    .line 145
    invoke-virtual {v0, v13, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 150
    move-object/from16 v20, v13

    .line 152
    sget-object v13, Lcom/miui/maml/folme/AnimatedProperty;->TINT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 154
    const/16 v22, 0x3f0

    .line 156
    move-object/from16 v23, v15

    .line 158
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    move-result-object v15

    .line 162
    invoke-virtual {v0, v13, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 167
    move-object/from16 v22, v13

    .line 169
    sget-object v13, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 171
    const/16 v24, 0x3f1

    .line 173
    move-object/from16 v25, v15

    .line 175
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    move-result-object v15

    .line 179
    invoke-virtual {v0, v13, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 184
    move-object/from16 v24, v13

    .line 186
    sget-object v13, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 188
    const/16 v26, 0x3f2

    .line 190
    move-object/from16 v27, v15

    .line 192
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object v15

    .line 196
    invoke-virtual {v0, v13, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 201
    move-object/from16 v26, v13

    .line 203
    sget-object v13, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_Z:Lcom/miui/maml/folme/AnimatedProperty;

    .line 205
    const/16 v28, 0x3f3

    .line 207
    move-object/from16 v29, v15

    .line 209
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    move-result-object v15

    .line 213
    invoke-virtual {v0, v13, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 218
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 223
    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 228
    invoke-virtual {v0, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 233
    invoke-virtual {v0, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 238
    invoke-virtual {v0, v10, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 243
    invoke-virtual {v0, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 248
    move-object/from16 v1, v17

    .line 250
    invoke-virtual {v0, v14, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 255
    move-object/from16 v2, v16

    .line 257
    move-object/from16 v1, v19

    .line 259
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 264
    move-object/from16 v1, v18

    .line 266
    move-object/from16 v2, v21

    .line 268
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 273
    move-object/from16 v1, v20

    .line 275
    move-object/from16 v2, v23

    .line 277
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 282
    move-object/from16 v1, v22

    .line 284
    move-object/from16 v2, v25

    .line 286
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 291
    move-object/from16 v1, v24

    .line 293
    move-object/from16 v2, v27

    .line 295
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 300
    move-object/from16 v1, v26

    .line 302
    move-object/from16 v2, v29

    .line 304
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 309
    invoke-virtual {v0, v15, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v0, Lcom/miui/maml/folme/AnimatedTarget$1;

    .line 314
    invoke-direct {v0}, Lcom/miui/maml/folme/AnimatedTarget$1;-><init>()V

    .line 317
    sput-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    .line 319
    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lmiuix/animation/IAnimTarget;-><init>()V

    .line 4
    const/4 v0, 0x7

    .line 5
    new-array v0, v0, [Lmiuix/animation/property/FloatProperty;

    .line 7
    sget-object v1, Lcom/miui/maml/elements/TextScreenElement;->TEXT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 12
    sget-object v1, Lcom/miui/maml/elements/GeometryScreenElement;->FILL_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 14
    const/4 v2, 0x1

    .line 15
    aput-object v1, v0, v2

    .line 17
    sget-object v1, Lcom/miui/maml/elements/GeometryScreenElement;->STROKE_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 19
    const/4 v2, 0x2

    .line 20
    aput-object v1, v0, v2

    .line 22
    sget-object v1, Lcom/miui/maml/folme/AnimatedProperty;->TINT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 24
    const/4 v2, 0x3

    .line 25
    aput-object v1, v0, v2

    .line 27
    sget-object v1, Lcom/miui/maml/elements/TextScreenElement;->TEXT_SHADOW_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 29
    const/4 v2, 0x4

    .line 30
    aput-object v1, v0, v2

    .line 32
    sget-object v1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_1:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 34
    const/4 v2, 0x5

    .line 35
    aput-object v1, v0, v2

    .line 37
    sget-object v1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_2:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 39
    const/4 v2, 0x6

    .line 40
    aput-object v1, v0, v2

    .line 42
    const/high16 v1, 0x3b800000  # 0.00390625f

    .line 44
    invoke-virtual {p0, v1, v0}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 49
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 52
    iput-object v0, p0, Lcom/miui/maml/folme/AnimatedTarget;->mElementRef:Ljava/lang/ref/WeakReference;

    .line 54
    return-void
.end method


# virtual methods
.method public clean()V
    .registers 1

    return-void
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/folme/AnimatedTarget;->mElementRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 14
    :cond_d
    return-void
.end method

.method public getDefaultMinVisible()F
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public getLocationOnScreen([I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/folme/AnimatedTarget;->mElementRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 9
    if-eqz v0, :cond_1f

    .line 11
    if-eqz p1, :cond_1f

    .line 13
    array-length v1, p1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-le v1, v2, :cond_1f

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    .line 21
    move-result v3

    .line 22
    float-to-int v3, v3

    .line 23
    aput v3, p1, v1

    .line 25
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 28
    move-result v0

    .line 29
    float-to-int v0, v0

    .line 30
    aput v0, p1, v2

    .line 32
    :cond_1f
    return-void
.end method

.method public getTargetObject()Lcom/miui/maml/elements/AnimatedScreenElement;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/miui/maml/folme/AnimatedTarget;->mElementRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    return-object v0
.end method

.method public bridge synthetic getTargetObject()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/folme/AnimatedTarget;->getTargetObject()Lcom/miui/maml/elements/AnimatedScreenElement;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/folme/AnimatedTarget;->mElementRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method
