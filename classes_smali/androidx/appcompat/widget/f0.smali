.class public Landroidx/appcompat/widget/f0;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/f0$c;,
        Landroidx/appcompat/widget/f0$e;,
        Landroidx/appcompat/widget/f0$a;,
        Landroidx/appcompat/widget/f0$b;,
        Landroidx/appcompat/widget/f0$f;,
        Landroidx/appcompat/widget/f0$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroidx/appcompat/widget/f0$d;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Landroidx/core/widget/f;

.field public l:Landroidx/appcompat/widget/f0$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 1
    sget v0, Lh/a;->dropDownListViewStyle:I

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    .line 9
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 12
    iput-object p1, p0, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Landroidx/appcompat/widget/f0;->b:I

    .line 17
    iput p1, p0, Landroidx/appcompat/widget/f0;->c:I

    .line 19
    iput p1, p0, Landroidx/appcompat/widget/f0;->d:I

    .line 21
    iput p1, p0, Landroidx/appcompat/widget/f0;->e:I

    .line 23
    iput-boolean p2, p0, Landroidx/appcompat/widget/f0;->i:Z

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 28
    return-void
.end method

.method private setSelectorEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->g:Landroidx/appcompat/widget/f0$d;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    iput-boolean p1, v0, Landroidx/appcompat/widget/f0$d;->b:Z

    .line 7
    :cond_6
    return-void
.end method


# virtual methods
.method public final a(II)I
    .registers 14

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 20
    move-result-object v4

    .line 21
    add-int/2addr v0, v1

    .line 22
    if-nez v4, :cond_18

    .line 24
    return v0

    .line 25
    :cond_18
    const/4 v1, 0x0

    .line 26
    if-lez v2, :cond_1e

    .line 28
    if-eqz v3, :cond_1e

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v2, v1

    .line 32
    :goto_1f
    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    .line 35
    move-result v3

    .line 36
    const/4 v5, 0x0

    .line 37
    move v6, v1

    .line 38
    move v7, v6

    .line 39
    move-object v8, v5

    .line 40
    :goto_27
    if-ge v6, v3, :cond_65

    .line 42
    invoke-interface {v4, v6}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 45
    move-result v9

    .line 46
    if-eq v9, v7, :cond_31

    .line 48
    move-object v8, v5

    .line 49
    move v7, v9

    .line 50
    :cond_31
    invoke-interface {v4, v6, v8, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    move-result-object v9

    .line 58
    if-nez v9, :cond_42

    .line 60
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    :cond_42
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    if-lez v9, :cond_4d

    .line 71
    const/high16 v10, 0x40000000  # 2.0f

    .line 73
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 76
    move-result v9

    .line 77
    goto :goto_51

    .line 78
    :cond_4d
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 81
    move-result v9

    .line 82
    :goto_51
    invoke-virtual {v8, p1, v9}, Landroid/view/View;->measure(II)V

    .line 85
    invoke-virtual {v8}, Landroid/view/View;->forceLayout()V

    .line 88
    if-lez v6, :cond_5a

    .line 90
    add-int/2addr v0, v2

    .line 91
    :cond_5a
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 94
    move-result v9

    .line 95
    add-int/2addr v0, v9

    .line 96
    if-lt v0, p2, :cond_62

    .line 98
    return p2

    .line 99
    :cond_62
    add-int/lit8 v6, v6, 0x1

    .line 101
    goto :goto_27

    .line 102
    :cond_65
    return v0
.end method

.method public final b(Landroid/view/MotionEvent;I)Z
    .registers 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    move-result v3

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eq v3, v5, :cond_17

    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq v3, v0, :cond_15

    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq v3, v0, :cond_1e

    .line 19
    move v0, v5

    .line 20
    goto/16 :goto_143

    .line 22
    :cond_15
    move v0, v5

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v0, v4

    .line 25
    :goto_18
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 28
    move-result v6

    .line 29
    if-gez v6, :cond_21

    .line 31
    :cond_1e
    move v0, v4

    .line 32
    goto/16 :goto_143

    .line 34
    :cond_21
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 37
    move-result v7

    .line 38
    float-to-int v7, v7

    .line 39
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 42
    move-result v6

    .line 43
    float-to-int v6, v6

    .line 44
    invoke-virtual {v1, v7, v6}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 47
    move-result v8

    .line 48
    const/4 v9, -0x1

    .line 49
    if-ne v8, v9, :cond_35

    .line 51
    move v4, v5

    .line 52
    goto/16 :goto_143

    .line 54
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 57
    move-result v0

    .line 58
    sub-int v0, v8, v0

    .line 60
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    move-result-object v10

    .line 64
    int-to-float v7, v7

    .line 65
    int-to-float v6, v6

    .line 66
    iput-boolean v5, v1, Landroidx/appcompat/widget/f0;->j:Z

    .line 68
    invoke-static {v1, v7, v6}, Landroidx/appcompat/widget/f0$a;->a(Landroid/view/View;FF)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPressed()Z

    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_4f

    .line 77
    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 80
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 83
    iget v0, v1, Landroidx/appcompat/widget/f0;->f:I

    .line 85
    if-eq v0, v9, :cond_6c

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 90
    move-result v11

    .line 91
    sub-int/2addr v0, v11

    .line 92
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_6c

    .line 98
    if-eq v0, v10, :cond_6c

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    .line 103
    move-result v11

    .line 104
    if-eqz v11, :cond_6c

    .line 106
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 109
    :cond_6c
    iput v8, v1, Landroidx/appcompat/widget/f0;->f:I

    .line 111
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 114
    move-result v0

    .line 115
    int-to-float v0, v0

    .line 116
    sub-float v0, v7, v0

    .line 118
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    .line 121
    move-result v11

    .line 122
    int-to-float v11, v11

    .line 123
    sub-float v11, v6, v11

    .line 125
    invoke-static {v10, v0, v11}, Landroidx/appcompat/widget/f0$a;->a(Landroid/view/View;FF)V

    .line 128
    invoke-virtual {v10}, Landroid/view/View;->isPressed()Z

    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_88

    .line 134
    invoke-virtual {v10, v5}, Landroid/view/View;->setPressed(Z)V

    .line 137
    :cond_88
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 140
    move-result-object v11

    .line 141
    if-eqz v11, :cond_92

    .line 143
    if-eq v8, v9, :cond_92

    .line 145
    move v12, v5

    .line 146
    goto :goto_93

    .line 147
    :cond_92
    move v12, v4

    .line 148
    :goto_93
    if-eqz v12, :cond_98

    .line 150
    invoke-virtual {v11, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 153
    :cond_98
    iget-object v0, v1, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    .line 155
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 158
    move-result v13

    .line 159
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    .line 162
    move-result v14

    .line 163
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    .line 166
    move-result v15

    .line 167
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    .line 170
    move-result v4

    .line 171
    invoke-virtual {v0, v13, v14, v15, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 174
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 176
    iget v13, v1, Landroidx/appcompat/widget/f0;->b:I

    .line 178
    sub-int/2addr v4, v13

    .line 179
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 181
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 183
    iget v13, v1, Landroidx/appcompat/widget/f0;->c:I

    .line 185
    sub-int/2addr v4, v13

    .line 186
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 188
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 190
    iget v13, v1, Landroidx/appcompat/widget/f0;->d:I

    .line 192
    add-int/2addr v4, v13

    .line 193
    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 195
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 197
    iget v13, v1, Landroidx/appcompat/widget/f0;->e:I

    .line 199
    add-int/2addr v4, v13

    .line 200
    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 202
    invoke-static {}, Li0/a;->a()Z

    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_d4

    .line 208
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/f0$c;->a(Landroid/widget/AbsListView;)Z

    .line 211
    move-result v0

    .line 212
    goto :goto_e3

    .line 213
    :cond_d4
    sget-object v0, Landroidx/appcompat/widget/f0$e;->a:Ljava/lang/reflect/Field;

    .line 215
    if-eqz v0, :cond_e2

    .line 217
    :try_start_d8
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    .line 220
    move-result v0
    :try_end_dc
    .catch Ljava/lang/IllegalAccessException; {:try_start_d8 .. :try_end_dc} :catch_dd

    .line 221
    goto :goto_e3

    .line 222
    :catch_dd
    move-exception v0

    .line 223
    move-object v4, v0

    .line 224
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 227
    :cond_e2
    const/4 v0, 0x0

    .line 228
    :goto_e3
    invoke-virtual {v10}, Landroid/view/View;->isEnabled()Z

    .line 231
    move-result v4

    .line 232
    if-eq v4, v0, :cond_109

    .line 234
    xor-int/2addr v0, v5

    .line 235
    invoke-static {}, Li0/a;->a()Z

    .line 238
    move-result v4

    .line 239
    if-eqz v4, :cond_f4

    .line 241
    invoke-static {v1, v0}, Landroidx/appcompat/widget/f0$c;->b(Landroid/widget/AbsListView;Z)V

    .line 244
    goto :goto_104

    .line 245
    :cond_f4
    sget-object v4, Landroidx/appcompat/widget/f0$e;->a:Ljava/lang/reflect/Field;

    .line 247
    if-eqz v4, :cond_104

    .line 249
    :try_start_f8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v4, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ff
    .catch Ljava/lang/IllegalAccessException; {:try_start_f8 .. :try_end_ff} :catch_100

    .line 256
    goto :goto_104

    .line 257
    :catch_100
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 261
    :cond_104
    :goto_104
    if-eq v8, v9, :cond_109

    .line 263
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->refreshDrawableState()V

    .line 266
    :cond_109
    if-eqz v12, :cond_126

    .line 268
    iget-object v0, v1, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    .line 270
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    .line 273
    move-result v4

    .line 274
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    .line 277
    move-result v0

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    .line 281
    move-result v12

    .line 282
    if-nez v12, :cond_11d

    .line 284
    move v12, v5

    .line 285
    goto :goto_11e

    .line 286
    :cond_11d
    const/4 v12, 0x0

    .line 287
    :goto_11e
    const/4 v13, 0x0

    .line 288
    invoke-virtual {v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 291
    invoke-static {v11, v4, v0}, Lg0/a$b;->e(Landroid/graphics/drawable/Drawable;FF)V

    .line 294
    goto :goto_127

    .line 295
    :cond_126
    const/4 v13, 0x0

    .line 296
    :goto_127
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 299
    move-result-object v0

    .line 300
    if-eqz v0, :cond_132

    .line 302
    if-eq v8, v9, :cond_132

    .line 304
    invoke-static {v0, v7, v6}, Lg0/a$b;->e(Landroid/graphics/drawable/Drawable;FF)V

    .line 307
    :cond_132
    invoke-direct {v1, v13}, Landroidx/appcompat/widget/f0;->setSelectorEnabled(Z)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->refreshDrawableState()V

    .line 313
    if-ne v3, v5, :cond_141

    .line 315
    invoke-virtual {v1, v8}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 318
    move-result-wide v3

    .line 319
    invoke-virtual {v1, v10, v8, v3, v4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 322
    :cond_141
    move v0, v5

    .line 323
    const/4 v4, 0x0

    .line 324
    :goto_143
    if-eqz v0, :cond_147

    .line 326
    if-eqz v4, :cond_160

    .line 328
    :cond_147
    const/4 v3, 0x0

    .line 329
    iput-boolean v3, v1, Landroidx/appcompat/widget/f0;->j:Z

    .line 331
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 334
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/f0;->drawableStateChanged()V

    .line 337
    iget v4, v1, Landroidx/appcompat/widget/f0;->f:I

    .line 339
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 342
    move-result v6

    .line 343
    sub-int/2addr v4, v6

    .line 344
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 347
    move-result-object v4

    .line 348
    if-eqz v4, :cond_160

    .line 350
    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    .line 353
    :cond_160
    if-eqz v0, :cond_177

    .line 355
    iget-object v3, v1, Landroidx/appcompat/widget/f0;->k:Landroidx/core/widget/f;

    .line 357
    if-nez v3, :cond_16d

    .line 359
    new-instance v3, Landroidx/core/widget/f;

    .line 361
    invoke-direct {v3, v1}, Landroidx/core/widget/f;-><init>(Landroid/widget/ListView;)V

    .line 364
    iput-object v3, v1, Landroidx/appcompat/widget/f0;->k:Landroidx/core/widget/f;

    .line 366
    :cond_16d
    iget-object v3, v1, Landroidx/appcompat/widget/f0;->k:Landroidx/core/widget/f;

    .line 368
    iget-boolean v4, v3, Landroidx/core/widget/a;->p:Z

    .line 370
    iput-boolean v5, v3, Landroidx/core/widget/a;->p:Z

    .line 372
    invoke-virtual {v3, v1, v2}, Landroidx/core/widget/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 375
    goto :goto_185

    .line 376
    :cond_177
    iget-object v2, v1, Landroidx/appcompat/widget/f0;->k:Landroidx/core/widget/f;

    .line 378
    if-eqz v2, :cond_185

    .line 380
    iget-boolean v3, v2, Landroidx/core/widget/a;->p:Z

    .line 382
    if-eqz v3, :cond_182

    .line 384
    invoke-virtual {v2}, Landroidx/core/widget/a;->d()V

    .line 387
    :cond_182
    const/4 v3, 0x0

    .line 388
    iput-boolean v3, v2, Landroidx/core/widget/a;->p:Z

    .line 390
    :cond_185
    :goto_185
    return v0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_16

    .line 9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_16

    .line 15
    iget-object v1, p0, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 20
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 23
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 26
    return-void
.end method

.method public final drawableStateChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->l:Landroidx/appcompat/widget/f0$f;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/f0;->setSelectorEnabled(Z)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_23

    .line 19
    iget-boolean v1, p0, Landroidx/appcompat/widget/f0;->j:Z

    .line 21
    if-eqz v1, :cond_23

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_23

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 36
    :cond_23
    return-void
.end method

.method public final hasFocus()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/f0;->i:Z

    .line 3
    if-nez v0, :cond_d

    .line 5
    invoke-super {p0}, Landroid/view/View;->hasFocus()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method public final hasWindowFocus()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/f0;->i:Z

    .line 3
    if-nez v0, :cond_d

    .line 5
    invoke-super {p0}, Landroid/view/View;->hasWindowFocus()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method public final isFocused()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/f0;->i:Z

    .line 3
    if-nez v0, :cond_d

    .line 5
    invoke-super {p0}, Landroid/view/View;->isFocused()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method public final isInTouchMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/f0;->i:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    iget-boolean v0, p0, Landroidx/appcompat/widget/f0;->h:Z

    .line 7
    if-nez v0, :cond_e

    .line 9
    :cond_8
    invoke-super {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    :cond_e
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/appcompat/widget/f0;->l:Landroidx/appcompat/widget/f0$f;

    .line 4
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 7
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-ge v0, v1, :cond_b

    .line 7
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    move-result v1

    .line 16
    const/16 v2, 0xa

    .line 18
    if-ne v1, v2, :cond_21

    .line 20
    iget-object v2, p0, Landroidx/appcompat/widget/f0;->l:Landroidx/appcompat/widget/f0$f;

    .line 22
    if-nez v2, :cond_21

    .line 24
    new-instance v2, Landroidx/appcompat/widget/f0$f;

    .line 26
    invoke-direct {v2, p0}, Landroidx/appcompat/widget/f0$f;-><init>(Landroidx/appcompat/widget/f0;)V

    .line 29
    iput-object v2, p0, Landroidx/appcompat/widget/f0;->l:Landroidx/appcompat/widget/f0$f;

    .line 31
    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    :cond_21
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 37
    move-result v2

    .line 38
    const/16 v3, 0x9

    .line 40
    const/4 v4, -0x1

    .line 41
    if-eq v1, v3, :cond_33

    .line 43
    const/4 v3, 0x7

    .line 44
    if-ne v1, v3, :cond_2e

    .line 46
    goto :goto_33

    .line 47
    :cond_2e
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 50
    goto/16 :goto_d1

    .line 52
    :cond_33
    :goto_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 55
    move-result v1

    .line 56
    float-to-int v1, v1

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 60
    move-result p1

    .line 61
    float-to-int p1, p1

    .line 62
    invoke-virtual {p0, v1, p1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 65
    move-result p1

    .line 66
    if-eq p1, v4, :cond_d1

    .line 68
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 71
    move-result v1

    .line 72
    if-eq p1, v1, :cond_d1

    .line 74
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 77
    move-result v1

    .line 78
    sub-int v1, p1, v1

    .line 80
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_ba

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 93
    const/16 v3, 0x1e

    .line 95
    if-lt v0, v3, :cond_ae

    .line 97
    sget-boolean v0, Landroidx/appcompat/widget/f0$b;->d:Z

    .line 99
    if-eqz v0, :cond_ae

    .line 101
    :try_start_64
    sget-object v0, Landroidx/appcompat/widget/f0$b;->a:Ljava/lang/reflect/Method;

    .line 103
    const/4 v3, 0x5

    .line 104
    new-array v3, v3, [Ljava/lang/Object;

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v5

    .line 110
    const/4 v6, 0x0

    .line 111
    aput-object v5, v3, v6

    .line 113
    const/4 v5, 0x1

    .line 114
    aput-object v1, v3, v5

    .line 116
    const/4 v1, 0x2

    .line 117
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    aput-object v7, v3, v1

    .line 121
    const/4 v1, 0x3

    .line 122
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object v7

    .line 126
    aput-object v7, v3, v1

    .line 128
    const/4 v1, 0x4

    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v4

    .line 133
    aput-object v4, v3, v1

    .line 135
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Landroidx/appcompat/widget/f0$b;->b:Ljava/lang/reflect/Method;

    .line 140
    new-array v1, v5, [Ljava/lang/Object;

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object v3

    .line 146
    aput-object v3, v1, v6

    .line 148
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Landroidx/appcompat/widget/f0$b;->c:Ljava/lang/reflect/Method;

    .line 153
    new-array v1, v5, [Ljava/lang/Object;

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    move-result-object p1

    .line 159
    aput-object p1, v1, v6

    .line 161
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a3
    .catch Ljava/lang/IllegalAccessException; {:try_start_64 .. :try_end_a3} :catch_a9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_64 .. :try_end_a3} :catch_a4

    .line 164
    goto :goto_ba

    .line 165
    :catch_a4
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    goto :goto_ba

    .line 170
    :catch_a9
    move-exception p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    goto :goto_ba

    .line 175
    :cond_ae
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 178
    move-result v0

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 182
    move-result v1

    .line 183
    sub-int/2addr v0, v1

    .line 184
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 187
    :cond_ba
    :goto_ba
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 190
    move-result-object p1

    .line 191
    if-eqz p1, :cond_d1

    .line 193
    iget-boolean v0, p0, Landroidx/appcompat/widget/f0;->j:Z

    .line 195
    if-eqz v0, :cond_d1

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_d1

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 210
    :cond_d1
    :goto_d1
    return v2
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    goto :goto_17

    .line 8
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 11
    move-result v0

    .line 12
    float-to-int v0, v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 16
    move-result v1

    .line 17
    float-to-int v1, v1

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 21
    move-result v0

    .line 22
    iput v0, p0, Landroidx/appcompat/widget/f0;->f:I

    .line 24
    :goto_17
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->l:Landroidx/appcompat/widget/f0$f;

    .line 26
    if-eqz v0, :cond_23

    .line 28
    iget-object v1, v0, Landroidx/appcompat/widget/f0$f;->a:Landroidx/appcompat/widget/f0;

    .line 30
    const/4 v2, 0x0

    .line 31
    iput-object v2, v1, Landroidx/appcompat/widget/f0;->l:Landroidx/appcompat/widget/f0$f;

    .line 33
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 36
    :cond_23
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public setListSelectionHidden(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/f0;->h:Z

    .line 3
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_8

    .line 3
    new-instance v0, Landroidx/appcompat/widget/f0$d;

    .line 5
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/f0$d;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    iput-object v0, p0, Landroidx/appcompat/widget/f0;->g:Landroidx/appcompat/widget/f0$d;

    .line 12
    invoke-super {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    .line 17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 20
    if-eqz p1, :cond_18

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 25
    :cond_18
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 27
    iput p1, p0, Landroidx/appcompat/widget/f0;->b:I

    .line 29
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 31
    iput p1, p0, Landroidx/appcompat/widget/f0;->c:I

    .line 33
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 35
    iput p1, p0, Landroidx/appcompat/widget/f0;->d:I

    .line 37
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 39
    iput p1, p0, Landroidx/appcompat/widget/f0;->e:I

    .line 41
    return-void
.end method
