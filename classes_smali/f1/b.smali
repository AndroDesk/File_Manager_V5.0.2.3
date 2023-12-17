.class public final Lf1/b;
.super Lf1/n;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/b$i;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Lf1/b$b;

.field public static final c:Lf1/b$c;

.field public static final d:Lf1/b$d;

.field public static final e:Lf1/b$e;

.field public static final f:Lf1/b$f;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    const-string v0, "android:changeBounds:bounds"

    .line 3
    const-string v1, "android:changeBounds:clip"

    .line 5
    const-string v2, "android:changeBounds:parent"

    .line 7
    const-string v3, "android:changeBounds:windowX"

    .line 9
    const-string v4, "android:changeBounds:windowY"

    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lf1/b;->a:[Ljava/lang/String;

    .line 17
    new-instance v0, Lf1/b$a;

    .line 19
    const-class v1, Landroid/graphics/PointF;

    .line 21
    invoke-direct {v0, v1}, Lf1/b$a;-><init>(Ljava/lang/Class;)V

    .line 24
    new-instance v0, Lf1/b$b;

    .line 26
    const-class v1, Landroid/graphics/PointF;

    .line 28
    invoke-direct {v0, v1}, Lf1/b$b;-><init>(Ljava/lang/Class;)V

    .line 31
    sput-object v0, Lf1/b;->b:Lf1/b$b;

    .line 33
    new-instance v0, Lf1/b$c;

    .line 35
    const-class v1, Landroid/graphics/PointF;

    .line 37
    invoke-direct {v0, v1}, Lf1/b$c;-><init>(Ljava/lang/Class;)V

    .line 40
    sput-object v0, Lf1/b;->c:Lf1/b$c;

    .line 42
    new-instance v0, Lf1/b$d;

    .line 44
    const-class v1, Landroid/graphics/PointF;

    .line 46
    invoke-direct {v0, v1}, Lf1/b$d;-><init>(Ljava/lang/Class;)V

    .line 49
    sput-object v0, Lf1/b;->d:Lf1/b$d;

    .line 51
    new-instance v0, Lf1/b$e;

    .line 53
    const-class v1, Landroid/graphics/PointF;

    .line 55
    invoke-direct {v0, v1}, Lf1/b$e;-><init>(Ljava/lang/Class;)V

    .line 58
    sput-object v0, Lf1/b;->e:Lf1/b$e;

    .line 60
    new-instance v0, Lf1/b$f;

    .line 62
    const-class v1, Landroid/graphics/PointF;

    .line 64
    invoke-direct {v0, v1}, Lf1/b$f;-><init>(Ljava/lang/Class;)V

    .line 67
    sput-object v0, Lf1/b;->f:Lf1/b$f;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lf1/n;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Lf1/t;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lf1/t;->b:Landroid/view/View;

    .line 3
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {v0}, Lm0/g0$g;->c(Landroid/view/View;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_16

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_16

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3f

    .line 23
    :cond_16
    iget-object v1, p0, Lf1/t;->a:Ljava/util/HashMap;

    .line 25
    new-instance v2, Landroid/graphics/Rect;

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 30
    move-result v3

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 34
    move-result v4

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 38
    move-result v5

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 42
    move-result v0

    .line 43
    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 46
    const-string v0, "android:changeBounds:bounds"

    .line 48
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lf1/t;->a:Ljava/util/HashMap;

    .line 53
    iget-object p0, p0, Lf1/t;->b:Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 58
    move-result-object p0

    .line 59
    const-string v1, "android:changeBounds:parent"

    .line 61
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_3f
    return-void
.end method


# virtual methods
.method public final captureEndValues(Lf1/t;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lf1/b;->a(Lf1/t;)V

    .line 4
    return-void
.end method

.method public final captureStartValues(Lf1/t;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lf1/b;->a(Lf1/t;)V

    .line 4
    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Lf1/t;Lf1/t;)Landroid/animation/Animator;
    .registers 22

    .line 1
    move-object/from16 v0, p2

    .line 3
    move-object/from16 v1, p3

    .line 5
    if-eqz v0, :cond_142

    .line 7
    if-nez v1, :cond_a

    .line 9
    goto/16 :goto_142

    .line 11
    :cond_a
    iget-object v3, v0, Lf1/t;->a:Ljava/util/HashMap;

    .line 13
    iget-object v4, v1, Lf1/t;->a:Ljava/util/HashMap;

    .line 15
    const-string v5, "android:changeBounds:parent"

    .line 17
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/view/ViewGroup;

    .line 23
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroid/view/ViewGroup;

    .line 29
    if-eqz v3, :cond_13e

    .line 31
    if-nez v4, :cond_22

    .line 33
    goto/16 :goto_13e

    .line 35
    :cond_22
    iget-object v3, v1, Lf1/t;->b:Landroid/view/View;

    .line 37
    iget-object v4, v0, Lf1/t;->a:Ljava/util/HashMap;

    .line 39
    const-string v5, "android:changeBounds:bounds"

    .line 41
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Landroid/graphics/Rect;

    .line 47
    iget-object v6, v1, Lf1/t;->a:Ljava/util/HashMap;

    .line 49
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroid/graphics/Rect;

    .line 55
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 57
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 59
    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 61
    iget v9, v5, Landroid/graphics/Rect;->top:I

    .line 63
    iget v10, v4, Landroid/graphics/Rect;->right:I

    .line 65
    iget v11, v5, Landroid/graphics/Rect;->right:I

    .line 67
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 69
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 71
    sub-int v12, v10, v6

    .line 73
    sub-int v13, v4, v8

    .line 75
    sub-int v14, v11, v7

    .line 77
    sub-int v15, v5, v9

    .line 79
    iget-object v0, v0, Lf1/t;->a:Ljava/util/HashMap;

    .line 81
    const-string v2, "android:changeBounds:clip"

    .line 83
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroid/graphics/Rect;

    .line 89
    iget-object v1, v1, Lf1/t;->a:Ljava/util/HashMap;

    .line 91
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Landroid/graphics/Rect;

    .line 97
    const/4 v2, 0x1

    .line 98
    if-eqz v12, :cond_65

    .line 100
    if-nez v13, :cond_69

    .line 102
    :cond_65
    if-eqz v14, :cond_7a

    .line 104
    if-eqz v15, :cond_7a

    .line 106
    :cond_69
    if-ne v6, v7, :cond_71

    .line 108
    if-eq v8, v9, :cond_6e

    .line 110
    goto :goto_71

    .line 111
    :cond_6e
    const/16 v16, 0x0

    .line 113
    goto :goto_73

    .line 114
    :cond_71
    :goto_71
    move/from16 v16, v2

    .line 116
    :goto_73
    if-ne v10, v11, :cond_77

    .line 118
    if-eq v4, v5, :cond_7c

    .line 120
    :cond_77
    add-int/lit8 v16, v16, 0x1

    .line 122
    goto :goto_7c

    .line 123
    :cond_7a
    const/16 v16, 0x0

    .line 125
    :cond_7c
    :goto_7c
    if-eqz v0, :cond_84

    .line 127
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v17

    .line 131
    if-eqz v17, :cond_88

    .line 133
    :cond_84
    if-nez v0, :cond_8a

    .line 135
    if-eqz v1, :cond_8a

    .line 137
    :cond_88
    add-int/lit8 v16, v16, 0x1

    .line 139
    :cond_8a
    move/from16 v0, v16

    .line 141
    if-lez v0, :cond_13a

    .line 143
    invoke-static {v3, v6, v8, v10, v4}, Lf1/w;->a(Landroid/view/View;IIII)V

    .line 146
    const/4 v1, 0x2

    .line 147
    if-ne v0, v1, :cond_ef

    .line 149
    if-ne v12, v14, :cond_ac

    .line 151
    if-ne v13, v15, :cond_ac

    .line 153
    invoke-virtual/range {p0 .. p0}, Lf1/n;->getPathMotion()Lf1/j;

    .line 156
    move-result-object v0

    .line 157
    int-to-float v1, v6

    .line 158
    int-to-float v4, v8

    .line 159
    int-to-float v5, v7

    .line 160
    int-to-float v6, v9

    .line 161
    invoke-virtual {v0, v1, v4, v5, v6}, Lf1/j;->getPath(FFFF)Landroid/graphics/Path;

    .line 164
    move-result-object v0

    .line 165
    sget-object v1, Lf1/b;->f:Lf1/b$f;

    .line 167
    const/4 v4, 0x0

    .line 168
    invoke-static {v3, v1, v4, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 171
    move-result-object v0

    .line 172
    goto :goto_11b

    .line 173
    :cond_ac
    new-instance v0, Lf1/b$i;

    .line 175
    invoke-direct {v0, v3}, Lf1/b$i;-><init>(Landroid/view/View;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lf1/n;->getPathMotion()Lf1/j;

    .line 181
    move-result-object v12

    .line 182
    int-to-float v6, v6

    .line 183
    int-to-float v8, v8

    .line 184
    int-to-float v7, v7

    .line 185
    int-to-float v9, v9

    .line 186
    invoke-virtual {v12, v6, v8, v7, v9}, Lf1/j;->getPath(FFFF)Landroid/graphics/Path;

    .line 189
    move-result-object v6

    .line 190
    sget-object v7, Lf1/b;->b:Lf1/b$b;

    .line 192
    const/4 v8, 0x0

    .line 193
    invoke-static {v0, v7, v8, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 196
    move-result-object v6

    .line 197
    invoke-virtual/range {p0 .. p0}, Lf1/n;->getPathMotion()Lf1/j;

    .line 200
    move-result-object v7

    .line 201
    int-to-float v9, v10

    .line 202
    int-to-float v4, v4

    .line 203
    int-to-float v10, v11

    .line 204
    int-to-float v5, v5

    .line 205
    invoke-virtual {v7, v9, v4, v10, v5}, Lf1/j;->getPath(FFFF)Landroid/graphics/Path;

    .line 208
    move-result-object v4

    .line 209
    sget-object v5, Lf1/b;->c:Lf1/b$c;

    .line 211
    invoke-static {v0, v5, v8, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 214
    move-result-object v4

    .line 215
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 217
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 220
    new-array v1, v1, [Landroid/animation/Animator;

    .line 222
    const/4 v7, 0x0

    .line 223
    aput-object v6, v1, v7

    .line 225
    aput-object v4, v1, v2

    .line 227
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 230
    new-instance v1, Lf1/b$g;

    .line 232
    invoke-direct {v1, v0}, Lf1/b$g;-><init>(Lf1/b$i;)V

    .line 235
    invoke-virtual {v5, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 238
    move-object v0, v5

    .line 239
    goto :goto_11b

    .line 240
    :cond_ef
    if-ne v6, v7, :cond_108

    .line 242
    if-eq v8, v9, :cond_f4

    .line 244
    goto :goto_108

    .line 245
    :cond_f4
    invoke-virtual/range {p0 .. p0}, Lf1/n;->getPathMotion()Lf1/j;

    .line 248
    move-result-object v0

    .line 249
    int-to-float v1, v10

    .line 250
    int-to-float v4, v4

    .line 251
    int-to-float v6, v11

    .line 252
    int-to-float v5, v5

    .line 253
    invoke-virtual {v0, v1, v4, v6, v5}, Lf1/j;->getPath(FFFF)Landroid/graphics/Path;

    .line 256
    move-result-object v0

    .line 257
    sget-object v1, Lf1/b;->d:Lf1/b$d;

    .line 259
    const/4 v4, 0x0

    .line 260
    invoke-static {v3, v1, v4, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 263
    move-result-object v0

    .line 264
    goto :goto_11b

    .line 265
    :cond_108
    :goto_108
    const/4 v4, 0x0

    .line 266
    invoke-virtual/range {p0 .. p0}, Lf1/n;->getPathMotion()Lf1/j;

    .line 269
    move-result-object v0

    .line 270
    int-to-float v1, v6

    .line 271
    int-to-float v5, v8

    .line 272
    int-to-float v6, v7

    .line 273
    int-to-float v7, v9

    .line 274
    invoke-virtual {v0, v1, v5, v6, v7}, Lf1/j;->getPath(FFFF)Landroid/graphics/Path;

    .line 277
    move-result-object v0

    .line 278
    sget-object v1, Lf1/b;->e:Lf1/b$e;

    .line 280
    invoke-static {v3, v1, v4, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 283
    move-result-object v0

    .line 284
    :goto_11b
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 287
    move-result-object v1

    .line 288
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 290
    if-eqz v1, :cond_137

    .line 292
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 295
    move-result-object v1

    .line 296
    check-cast v1, Landroid/view/ViewGroup;

    .line 298
    invoke-static {v1, v2}, Lf1/v;->a(Landroid/view/ViewGroup;Z)V

    .line 301
    new-instance v2, Lf1/b$h;

    .line 303
    invoke-direct {v2, v1}, Lf1/b$h;-><init>(Landroid/view/ViewGroup;)V

    .line 306
    move-object/from16 v1, p0

    .line 308
    invoke-virtual {v1, v2}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    .line 311
    goto :goto_139

    .line 312
    :cond_137
    move-object/from16 v1, p0

    .line 314
    :goto_139
    return-object v0

    .line 315
    :cond_13a
    move-object/from16 v1, p0

    .line 317
    const/4 v0, 0x0

    .line 318
    return-object v0

    .line 319
    :cond_13e
    :goto_13e
    move-object/from16 v1, p0

    .line 321
    const/4 v0, 0x0

    .line 322
    return-object v0

    .line 323
    :cond_142
    :goto_142
    move-object/from16 v1, p0

    .line 325
    const/4 v0, 0x0

    .line 326
    return-object v0
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lf1/b;->a:[Ljava/lang/String;

    .line 3
    return-object v0
.end method
