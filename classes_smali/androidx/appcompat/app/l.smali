.class public final Landroidx/appcompat/app/l;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lm0/v;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Lm0/r0;)Lm0/r0;
    .registers 18

    .line 1
    invoke-virtual/range {p2 .. p2}, Lm0/r0;->e()I

    .line 4
    move-result v1

    .line 5
    move-object v2, p0

    .line 6
    iget-object v3, v2, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual/range {p2 .. p2}, Lm0/r0;->e()I

    .line 14
    move-result v4

    .line 15
    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 17
    const/16 v5, 0x8

    .line 19
    const/4 v6, 0x0

    .line 20
    if-eqz v0, :cond_13c

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    move-result-object v0

    .line 26
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 28
    if-eqz v0, :cond_13c

    .line 30
    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    move-result-object v0

    .line 36
    move-object v7, v0

    .line 37
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 44
    move-result v0

    .line 45
    const/4 v8, 0x1

    .line 46
    if-eqz v0, :cond_12a

    .line 48
    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->h0:Landroid/graphics/Rect;

    .line 50
    if-nez v0, :cond_41

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    .line 54
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 57
    iput-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->h0:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    .line 61
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 64
    iput-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->i0:Landroid/graphics/Rect;

    .line 66
    :cond_41
    iget-object v9, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->h0:Landroid/graphics/Rect;

    .line 68
    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->i0:Landroid/graphics/Rect;

    .line 70
    invoke-virtual/range {p2 .. p2}, Lm0/r0;->c()I

    .line 73
    move-result v10

    .line 74
    invoke-virtual/range {p2 .. p2}, Lm0/r0;->e()I

    .line 77
    move-result v11

    .line 78
    invoke-virtual/range {p2 .. p2}, Lm0/r0;->d()I

    .line 81
    move-result v12

    .line 82
    invoke-virtual/range {p2 .. p2}, Lm0/r0;->b()I

    .line 85
    move-result v13

    .line 86
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    iget-object v10, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 91
    sget-object v11, Landroidx/appcompat/widget/h1;->a:Ljava/lang/reflect/Method;

    .line 93
    if-eqz v11, :cond_71

    .line 95
    const/4 v12, 0x2

    .line 96
    :try_start_5f
    new-array v12, v12, [Ljava/lang/Object;

    .line 98
    aput-object v9, v12, v6

    .line 100
    aput-object v0, v12, v8

    .line 102
    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_68} :catch_69

    .line 105
    goto :goto_71

    .line 106
    :catch_69
    move-exception v0

    .line 107
    const-string v10, "ViewUtils"

    .line 109
    const-string v11, "Could not invoke computeFitSystemWindows"

    .line 111
    invoke-static {v10, v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :cond_71
    :goto_71
    iget v0, v9, Landroid/graphics/Rect;->top:I

    .line 116
    iget v10, v9, Landroid/graphics/Rect;->left:I

    .line 118
    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 120
    iget-object v11, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 122
    sget-object v12, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 124
    invoke-static {v11}, Lm0/g0$j;->a(Landroid/view/View;)Lm0/r0;

    .line 127
    move-result-object v11

    .line 128
    if-nez v11, :cond_83

    .line 130
    move v12, v6

    .line 131
    goto :goto_87

    .line 132
    :cond_83
    invoke-virtual {v11}, Lm0/r0;->c()I

    .line 135
    move-result v12

    .line 136
    :goto_87
    if-nez v11, :cond_8b

    .line 138
    move v11, v6

    .line 139
    goto :goto_8f

    .line 140
    :cond_8b
    invoke-virtual {v11}, Lm0/r0;->d()I

    .line 143
    move-result v11

    .line 144
    :goto_8f
    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 146
    if-ne v13, v0, :cond_9e

    .line 148
    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 150
    if-ne v13, v10, :cond_9e

    .line 152
    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 154
    if-eq v13, v9, :cond_9c

    .line 156
    goto :goto_9e

    .line 157
    :cond_9c
    move v9, v6

    .line 158
    goto :goto_a5

    .line 159
    :cond_9e
    :goto_9e
    iput v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 161
    iput v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 163
    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 165
    move v9, v8

    .line 166
    :goto_a5
    if-lez v0, :cond_cd

    .line 168
    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 170
    if-nez v0, :cond_cd

    .line 172
    new-instance v0, Landroid/view/View;

    .line 174
    iget-object v10, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 176
    invoke-direct {v0, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 179
    iput-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 181
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 184
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 186
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 188
    const/16 v13, 0x33

    .line 190
    const/4 v14, -0x1

    .line 191
    invoke-direct {v0, v14, v10, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 194
    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 196
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 198
    iget-object v10, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 200
    iget-object v11, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 202
    invoke-virtual {v10, v11, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 205
    goto :goto_f0

    .line 206
    :cond_cd
    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 208
    if-eqz v0, :cond_f0

    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 216
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 218
    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 220
    if-ne v10, v13, :cond_e5

    .line 222
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 224
    if-ne v10, v12, :cond_e5

    .line 226
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 228
    if-eq v10, v11, :cond_f0

    .line 230
    :cond_e5
    iput v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 232
    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 234
    iput v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 236
    iget-object v10, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 238
    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    :cond_f0
    :goto_f0
    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 243
    if-eqz v0, :cond_f6

    .line 245
    move v10, v8

    .line 246
    goto :goto_f7

    .line 247
    :cond_f6
    move v10, v6

    .line 248
    :goto_f7
    if-eqz v10, :cond_121

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_121

    .line 256
    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 258
    invoke-static {v0}, Lm0/g0$d;->g(Landroid/view/View;)I

    .line 261
    move-result v11

    .line 262
    and-int/lit16 v11, v11, 0x2000

    .line 264
    if-eqz v11, :cond_10a

    .line 266
    goto :goto_10b

    .line 267
    :cond_10a
    move v8, v6

    .line 268
    :goto_10b
    if-eqz v8, :cond_116

    .line 270
    iget-object v8, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 272
    sget v11, Lh/c;->abc_decor_view_status_guard_light:I

    .line 274
    invoke-static {v8, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 277
    move-result v8

    .line 278
    goto :goto_11e

    .line 279
    :cond_116
    iget-object v8, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 281
    sget v11, Lh/c;->abc_decor_view_status_guard:I

    .line 283
    invoke-static {v8, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 286
    move-result v8

    .line 287
    :goto_11e
    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 290
    :cond_121
    iget-boolean v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    .line 292
    if-nez v0, :cond_128

    .line 294
    if-eqz v10, :cond_128

    .line 296
    move v4, v6

    .line 297
    :cond_128
    move v8, v9

    .line 298
    goto :goto_134

    .line 299
    :cond_12a
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 301
    if-eqz v0, :cond_132

    .line 303
    iput v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 305
    move v10, v6

    .line 306
    goto :goto_134

    .line 307
    :cond_132
    move v8, v6

    .line 308
    move v10, v8

    .line 309
    :goto_134
    if-eqz v8, :cond_13d

    .line 311
    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 313
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    goto :goto_13d

    .line 317
    :cond_13c
    move v10, v6

    .line 318
    :cond_13d
    :goto_13d
    iget-object v0, v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 320
    if-eqz v0, :cond_147

    .line 322
    if-eqz v10, :cond_144

    .line 324
    move v5, v6

    .line 325
    :cond_144
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_147
    if-eq v1, v4, :cond_15e

    .line 330
    invoke-virtual/range {p2 .. p2}, Lm0/r0;->c()I

    .line 333
    move-result v0

    .line 334
    invoke-virtual/range {p2 .. p2}, Lm0/r0;->d()I

    .line 337
    move-result v1

    .line 338
    invoke-virtual/range {p2 .. p2}, Lm0/r0;->b()I

    .line 341
    move-result v3

    .line 342
    move-object/from16 v5, p2

    .line 344
    invoke-virtual {v5, v0, v4, v1, v3}, Lm0/r0;->g(IIII)Lm0/r0;

    .line 347
    move-result-object v0

    .line 348
    move-object/from16 v1, p1

    .line 350
    goto :goto_163

    .line 351
    :cond_15e
    move-object/from16 v5, p2

    .line 353
    move-object/from16 v1, p1

    .line 355
    move-object v0, v5

    .line 356
    :goto_163
    invoke-static {v1, v0}, Lm0/g0;->h(Landroid/view/View;Lm0/r0;)Lm0/r0;

    .line 359
    move-result-object v0

    .line 360
    return-object v0
.end method
