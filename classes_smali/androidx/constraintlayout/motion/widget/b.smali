.class public final Landroidx/constraintlayout/motion/widget/b;
.super Ljava/lang/Object;
.source "TouchResponse.java"


# static fields
.field public static final C:[[F

.field public static final D:[[F


# instance fields
.field public A:I

.field public B:I

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:F

.field public j:F

.field public k:Z

.field public l:[F

.field public m:[I

.field public n:F

.field public o:F

.field public final p:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public q:F

.field public r:F

.field public s:Z

.field public t:F

.field public u:I

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [[F

    .line 4
    const/4 v1, 0x2

    .line 5
    new-array v2, v1, [F

    .line 7
    fill-array-data v2, :array_6c

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v0, v3

    .line 13
    new-array v2, v1, [F

    .line 15
    fill-array-data v2, :array_74

    .line 18
    const/4 v4, 0x1

    .line 19
    aput-object v2, v0, v4

    .line 21
    new-array v2, v1, [F

    .line 23
    fill-array-data v2, :array_7c

    .line 26
    aput-object v2, v0, v1

    .line 28
    new-array v2, v1, [F

    .line 30
    fill-array-data v2, :array_84

    .line 33
    const/4 v5, 0x3

    .line 34
    aput-object v2, v0, v5

    .line 36
    new-array v2, v1, [F

    .line 38
    fill-array-data v2, :array_8c

    .line 41
    const/4 v6, 0x4

    .line 42
    aput-object v2, v0, v6

    .line 44
    new-array v2, v1, [F

    .line 46
    fill-array-data v2, :array_94

    .line 49
    const/4 v7, 0x5

    .line 50
    aput-object v2, v0, v7

    .line 52
    new-array v2, v1, [F

    .line 54
    fill-array-data v2, :array_9c

    .line 57
    const/4 v8, 0x6

    .line 58
    aput-object v2, v0, v8

    .line 60
    sput-object v0, Landroidx/constraintlayout/motion/widget/b;->C:[[F

    .line 62
    new-array v0, v8, [[F

    .line 64
    new-array v2, v1, [F

    .line 66
    fill-array-data v2, :array_a4

    .line 69
    aput-object v2, v0, v3

    .line 71
    new-array v2, v1, [F

    .line 73
    fill-array-data v2, :array_ac

    .line 76
    aput-object v2, v0, v4

    .line 78
    new-array v2, v1, [F

    .line 80
    fill-array-data v2, :array_b4

    .line 83
    aput-object v2, v0, v1

    .line 85
    new-array v2, v1, [F

    .line 87
    fill-array-data v2, :array_bc

    .line 90
    aput-object v2, v0, v5

    .line 92
    new-array v2, v1, [F

    .line 94
    fill-array-data v2, :array_c4

    .line 97
    aput-object v2, v0, v6

    .line 99
    new-array v1, v1, [F

    .line 101
    fill-array-data v1, :array_cc

    .line 104
    aput-object v1, v0, v7

    .line 106
    sput-object v0, Landroidx/constraintlayout/motion/widget/b;->D:[[F

    .line 108
    return-void

    .line 109
    :array_6c
    .array-data 4
        0x3f000000  # 0.5f
        0x0
    .end array-data

    .line 117
    :array_74
    .array-data 4
        0x0
        0x3f000000  # 0.5f
    .end array-data

    .line 125
    :array_7c
    .array-data 4
        0x3f800000  # 1.0f
        0x3f000000  # 0.5f
    .end array-data

    .line 133
    :array_84
    .array-data 4
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data

    .line 141
    :array_8c
    .array-data 4
        0x3f000000  # 0.5f
        0x3f000000  # 0.5f
    .end array-data

    .line 149
    :array_94
    .array-data 4
        0x0
        0x3f000000  # 0.5f
    .end array-data

    .line 157
    :array_9c
    .array-data 4
        0x3f800000  # 1.0f
        0x3f000000  # 0.5f
    .end array-data

    .line 165
    :array_a4
    .array-data 4
        0x0
        -0x40800000  # -1.0f
    .end array-data

    .line 173
    :array_ac
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    .line 181
    :array_b4
    .array-data 4
        -0x40800000  # -1.0f
        0x0
    .end array-data

    .line 189
    :array_bc
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    .line 197
    :array_c4
    .array-data 4
        -0x40800000  # -1.0f
        0x0
    .end array-data

    .line 205
    :array_cc
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/content/res/XmlResourceParser;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->a:I

    .line 7
    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->b:I

    .line 9
    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->c:I

    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->d:I

    .line 14
    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->e:I

    .line 16
    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->f:I

    .line 18
    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->g:I

    .line 20
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/b;->h:Z

    .line 22
    const/4 v1, 0x0

    .line 23
    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->i:F

    .line 25
    const/high16 v1, 0x3f800000  # 1.0f

    .line 27
    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->j:F

    .line 29
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/b;->k:Z

    .line 31
    const/4 v2, 0x2

    .line 32
    new-array v3, v2, [F

    .line 34
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/b;->l:[F

    .line 36
    new-array v2, v2, [I

    .line 38
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/b;->m:[I

    .line 40
    const/high16 v2, 0x40800000  # 4.0f

    .line 42
    iput v2, p0, Landroidx/constraintlayout/motion/widget/b;->q:F

    .line 44
    const v2, 0x3f99999a  # 1.2f

    .line 47
    iput v2, p0, Landroidx/constraintlayout/motion/widget/b;->r:F

    .line 49
    const/4 v2, 0x1

    .line 50
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/b;->s:Z

    .line 52
    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->t:F

    .line 54
    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->u:I

    .line 56
    const/high16 v3, 0x41200000  # 10.0f

    .line 58
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->v:F

    .line 60
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->w:F

    .line 62
    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->x:F

    .line 64
    const/high16 v1, 0x7fc00000  # Float.NaN

    .line 66
    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->y:F

    .line 68
    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->z:F

    .line 70
    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->A:I

    .line 72
    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->B:I

    .line 74
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 76
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 79
    move-result-object p2

    .line 80
    sget-object p3, Lz/d;->OnSwipe:[I

    .line 82
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 89
    move-result p2

    .line 90
    move p3, v0

    .line 91
    :goto_5a
    if-ge p3, p2, :cond_17f

    .line 93
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 96
    move-result v3

    .line 97
    sget v4, Lz/d;->OnSwipe_touchAnchorId:I

    .line 99
    if-ne v3, v4, :cond_6e

    .line 101
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->d:I

    .line 103
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 106
    move-result v3

    .line 107
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->d:I

    .line 109
    goto/16 :goto_17b

    .line 111
    :cond_6e
    sget v4, Lz/d;->OnSwipe_touchAnchorSide:I

    .line 113
    if-ne v3, v4, :cond_84

    .line 115
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->a:I

    .line 117
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 120
    move-result v3

    .line 121
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->a:I

    .line 123
    sget-object v4, Landroidx/constraintlayout/motion/widget/b;->C:[[F

    .line 125
    aget-object v3, v4, v3

    .line 127
    aget v4, v3, v0

    .line 129
    aget v3, v3, v2

    .line 131
    goto/16 :goto_17b

    .line 133
    :cond_84
    sget v4, Lz/d;->OnSwipe_dragDirection:I

    .line 135
    if-ne v3, v4, :cond_a9

    .line 137
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->b:I

    .line 139
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 142
    move-result v3

    .line 143
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->b:I

    .line 145
    sget-object v4, Landroidx/constraintlayout/motion/widget/b;->D:[[F

    .line 147
    const/4 v5, 0x6

    .line 148
    if-ge v3, v5, :cond_a1

    .line 150
    aget-object v3, v4, v3

    .line 152
    aget v4, v3, v0

    .line 154
    iput v4, p0, Landroidx/constraintlayout/motion/widget/b;->i:F

    .line 156
    aget v3, v3, v2

    .line 158
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->j:F

    .line 160
    goto/16 :goto_17b

    .line 162
    :cond_a1
    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->j:F

    .line 164
    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->i:F

    .line 166
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/b;->h:Z

    .line 168
    goto/16 :goto_17b

    .line 170
    :cond_a9
    sget v4, Lz/d;->OnSwipe_maxVelocity:I

    .line 172
    if-ne v3, v4, :cond_b7

    .line 174
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->q:F

    .line 176
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 179
    move-result v3

    .line 180
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->q:F

    .line 182
    goto/16 :goto_17b

    .line 184
    :cond_b7
    sget v4, Lz/d;->OnSwipe_maxAcceleration:I

    .line 186
    if-ne v3, v4, :cond_c5

    .line 188
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->r:F

    .line 190
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 193
    move-result v3

    .line 194
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->r:F

    .line 196
    goto/16 :goto_17b

    .line 198
    :cond_c5
    sget v4, Lz/d;->OnSwipe_moveWhenScrollAtTop:I

    .line 200
    if-ne v3, v4, :cond_d3

    .line 202
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/b;->s:Z

    .line 204
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 207
    move-result v3

    .line 208
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/b;->s:Z

    .line 210
    goto/16 :goto_17b

    .line 212
    :cond_d3
    sget v4, Lz/d;->OnSwipe_dragScale:I

    .line 214
    if-ne v3, v4, :cond_e1

    .line 216
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->t:F

    .line 218
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 221
    move-result v3

    .line 222
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->t:F

    .line 224
    goto/16 :goto_17b

    .line 226
    :cond_e1
    sget v4, Lz/d;->OnSwipe_dragThreshold:I

    .line 228
    if-ne v3, v4, :cond_ef

    .line 230
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->v:F

    .line 232
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 235
    move-result v3

    .line 236
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->v:F

    .line 238
    goto/16 :goto_17b

    .line 240
    :cond_ef
    sget v4, Lz/d;->OnSwipe_touchRegionId:I

    .line 242
    if-ne v3, v4, :cond_fd

    .line 244
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->e:I

    .line 246
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 249
    move-result v3

    .line 250
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->e:I

    .line 252
    goto/16 :goto_17b

    .line 254
    :cond_fd
    sget v4, Lz/d;->OnSwipe_onTouchUp:I

    .line 256
    if-ne v3, v4, :cond_10b

    .line 258
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->c:I

    .line 260
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 263
    move-result v3

    .line 264
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->c:I

    .line 266
    goto/16 :goto_17b

    .line 268
    :cond_10b
    sget v4, Lz/d;->OnSwipe_nestedScrollFlags:I

    .line 270
    if-ne v3, v4, :cond_116

    .line 272
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 275
    move-result v3

    .line 276
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->u:I

    .line 278
    goto :goto_17b

    .line 279
    :cond_116
    sget v4, Lz/d;->OnSwipe_limitBoundsTo:I

    .line 281
    if-ne v3, v4, :cond_121

    .line 283
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 286
    move-result v3

    .line 287
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->f:I

    .line 289
    goto :goto_17b

    .line 290
    :cond_121
    sget v4, Lz/d;->OnSwipe_rotationCenterId:I

    .line 292
    if-ne v3, v4, :cond_12e

    .line 294
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->g:I

    .line 296
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 299
    move-result v3

    .line 300
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->g:I

    .line 302
    goto :goto_17b

    .line 303
    :cond_12e
    sget v4, Lz/d;->OnSwipe_springDamping:I

    .line 305
    if-ne v3, v4, :cond_13b

    .line 307
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->w:F

    .line 309
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 312
    move-result v3

    .line 313
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->w:F

    .line 315
    goto :goto_17b

    .line 316
    :cond_13b
    sget v4, Lz/d;->OnSwipe_springMass:I

    .line 318
    if-ne v3, v4, :cond_148

    .line 320
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->x:F

    .line 322
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 325
    move-result v3

    .line 326
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->x:F

    .line 328
    goto :goto_17b

    .line 329
    :cond_148
    sget v4, Lz/d;->OnSwipe_springStiffness:I

    .line 331
    if-ne v3, v4, :cond_155

    .line 333
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->y:F

    .line 335
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 338
    move-result v3

    .line 339
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->y:F

    .line 341
    goto :goto_17b

    .line 342
    :cond_155
    sget v4, Lz/d;->OnSwipe_springStopThreshold:I

    .line 344
    if-ne v3, v4, :cond_162

    .line 346
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->z:F

    .line 348
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 351
    move-result v3

    .line 352
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->z:F

    .line 354
    goto :goto_17b

    .line 355
    :cond_162
    sget v4, Lz/d;->OnSwipe_springBoundary:I

    .line 357
    if-ne v3, v4, :cond_16f

    .line 359
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->A:I

    .line 361
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 364
    move-result v3

    .line 365
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->A:I

    .line 367
    goto :goto_17b

    .line 368
    :cond_16f
    sget v4, Lz/d;->OnSwipe_autoCompleteMode:I

    .line 370
    if-ne v3, v4, :cond_17b

    .line 372
    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->B:I

    .line 374
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 377
    move-result v3

    .line 378
    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->B:I

    .line 380
    :cond_17b
    :goto_17b
    add-int/lit8 p3, p3, 0x1

    .line 382
    goto/16 :goto_5a

    .line 384
    :cond_17f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 387
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 6

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/b;->f:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    if-ne v0, v2, :cond_7

    .line 7
    return-object v1

    .line 8
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_e

    .line 14
    return-object v1

    .line 15
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 23
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 28
    move-result v2

    .line 29
    int-to-float v2, v2

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 33
    move-result p1

    .line 34
    int-to-float p1, p1

    .line 35
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 38
    return-object p2
.end method

.method public final b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 6

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/b;->e:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    if-ne v0, v2, :cond_7

    .line 7
    return-object v1

    .line 8
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_e

    .line 14
    return-object v1

    .line 15
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 23
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 28
    move-result v2

    .line 29
    int-to-float v2, v2

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 33
    move-result p1

    .line 34
    int-to-float p1, p1

    .line 35
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 38
    return-object p2
.end method

.method public final c(Z)V
    .registers 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x6

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x5

    .line 6
    const/4 v5, 0x2

    .line 7
    if-eqz p1, :cond_1d

    .line 9
    sget-object p1, Landroidx/constraintlayout/motion/widget/b;->D:[[F

    .line 11
    aget-object v0, p1, v0

    .line 13
    aput-object v0, p1, v1

    .line 15
    aget-object v0, p1, v5

    .line 17
    aput-object v0, p1, v4

    .line 19
    sget-object p1, Landroidx/constraintlayout/motion/widget/b;->C:[[F

    .line 21
    aget-object v0, p1, v5

    .line 23
    aput-object v0, p1, v4

    .line 25
    aget-object v0, p1, v3

    .line 27
    aput-object v0, p1, v2

    .line 29
    goto :goto_31

    .line 30
    :cond_1d
    sget-object p1, Landroidx/constraintlayout/motion/widget/b;->D:[[F

    .line 32
    aget-object v6, p1, v5

    .line 34
    aput-object v6, p1, v1

    .line 36
    aget-object v0, p1, v0

    .line 38
    aput-object v0, p1, v4

    .line 40
    sget-object p1, Landroidx/constraintlayout/motion/widget/b;->C:[[F

    .line 42
    aget-object v0, p1, v3

    .line 44
    aput-object v0, p1, v4

    .line 46
    aget-object v0, p1, v5

    .line 48
    aput-object v0, p1, v2

    .line 50
    :goto_31
    sget-object p1, Landroidx/constraintlayout/motion/widget/b;->C:[[F

    .line 52
    iget v0, p0, Landroidx/constraintlayout/motion/widget/b;->a:I

    .line 54
    aget-object p1, p1, v0

    .line 56
    const/4 v0, 0x0

    .line 57
    aget v1, p1, v0

    .line 59
    aget p1, p1, v3

    .line 61
    iget p1, p0, Landroidx/constraintlayout/motion/widget/b;->b:I

    .line 63
    sget-object v1, Landroidx/constraintlayout/motion/widget/b;->D:[[F

    .line 65
    if-lt p1, v2, :cond_43

    .line 67
    return-void

    .line 68
    :cond_43
    aget-object p1, v1, p1

    .line 70
    aget v0, p1, v0

    .line 72
    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->i:F

    .line 74
    aget p1, p1, v3

    .line 76
    iput p1, p0, Landroidx/constraintlayout/motion/widget/b;->j:F

    .line 78
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/b;->i:F

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    const-string v0, "rotation"

    .line 11
    goto :goto_23

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    iget v1, p0, Landroidx/constraintlayout/motion/widget/b;->i:F

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " , "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Landroidx/constraintlayout/motion/widget/b;->j:F

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    :goto_23
    return-object v0
.end method
