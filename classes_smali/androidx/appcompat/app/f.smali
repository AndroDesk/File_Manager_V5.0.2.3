.class public final Landroidx/appcompat/app/f;
.super Landroidx/appcompat/app/q;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/f$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 1
    invoke-static {p1, p2}, Landroidx/appcompat/app/f;->resolveDialogTheme(Landroid/content/Context;I)I

    .line 4
    move-result p2

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/q;-><init>(Landroid/content/Context;I)V

    .line 8
    new-instance p1, Landroidx/appcompat/app/AlertController;

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/q;Landroid/view/Window;)V

    .line 21
    iput-object p1, p0, Landroidx/appcompat/app/f;->a:Landroidx/appcompat/app/AlertController;

    .line 23
    return-void
.end method

.method public static resolveDialogTheme(Landroid/content/Context;I)I
    .registers 4

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_8

    .line 8
    return p1

    .line 9
    :cond_8
    new-instance p1, Landroid/util/TypedValue;

    .line 11
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 17
    move-result-object p0

    .line 18
    sget v0, Lh/a;->alertDialogTheme:I

    .line 20
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 23
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 25
    return p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .registers 18

    .line 1
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/q;->onCreate(Landroid/os/Bundle;)V

    .line 4
    move-object/from16 v0, p0

    .line 6
    iget-object v1, v0, Landroidx/appcompat/app/f;->a:Landroidx/appcompat/app/AlertController;

    .line 8
    iget v2, v1, Landroidx/appcompat/app/AlertController;->K:I

    .line 10
    if-nez v2, :cond_e

    .line 12
    iget v2, v1, Landroidx/appcompat/app/AlertController;->J:I

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    iget v2, v1, Landroidx/appcompat/app/AlertController;->J:I

    .line 17
    :goto_10
    iget-object v3, v1, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/q;

    .line 19
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/q;->setContentView(I)V

    .line 22
    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    .line 24
    sget v3, Lh/f;->parentPanel:I

    .line 26
    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v2

    .line 30
    sget v3, Lh/f;->topPanel:I

    .line 32
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v4

    .line 36
    sget v5, Lh/f;->contentPanel:I

    .line 38
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v6

    .line 42
    sget v7, Lh/f;->buttonPanel:I

    .line 44
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v8

    .line 48
    sget v9, Lh/f;->customPanel:I

    .line 50
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/view/ViewGroup;

    .line 56
    iget-object v9, v1, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 58
    const/4 v10, 0x0

    .line 59
    if-eqz v9, :cond_3d

    .line 61
    goto :goto_4f

    .line 62
    :cond_3d
    iget v9, v1, Landroidx/appcompat/app/AlertController;->i:I

    .line 64
    if-eqz v9, :cond_4e

    .line 66
    iget-object v9, v1, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    .line 68
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 71
    move-result-object v9

    .line 72
    iget v12, v1, Landroidx/appcompat/app/AlertController;->i:I

    .line 74
    invoke-virtual {v9, v12, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 77
    move-result-object v9

    .line 78
    goto :goto_4f

    .line 79
    :cond_4e
    const/4 v9, 0x0

    .line 80
    :goto_4f
    if-eqz v9, :cond_53

    .line 82
    const/4 v13, 0x1

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    move v13, v10

    .line 85
    :goto_54
    if-eqz v13, :cond_5c

    .line 87
    invoke-static {v9}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;)Z

    .line 90
    move-result v14

    .line 91
    if-nez v14, :cond_63

    .line 93
    :cond_5c
    iget-object v14, v1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    .line 95
    const/high16 v15, 0x20000

    .line 97
    invoke-virtual {v14, v15, v15}, Landroid/view/Window;->setFlags(II)V

    .line 100
    :cond_63
    const/16 v14, 0x8

    .line 102
    const/4 v15, -0x1

    .line 103
    if-eqz v13, :cond_97

    .line 105
    iget-object v13, v1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    .line 107
    sget v12, Lh/f;->custom:I

    .line 109
    invoke-virtual {v13, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 112
    move-result-object v12

    .line 113
    check-cast v12, Landroid/widget/FrameLayout;

    .line 115
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    .line 117
    invoke-direct {v13, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 120
    invoke-virtual {v12, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-boolean v9, v1, Landroidx/appcompat/app/AlertController;->n:Z

    .line 125
    if-eqz v9, :cond_89

    .line 127
    iget v9, v1, Landroidx/appcompat/app/AlertController;->j:I

    .line 129
    iget v13, v1, Landroidx/appcompat/app/AlertController;->k:I

    .line 131
    iget v11, v1, Landroidx/appcompat/app/AlertController;->l:I

    .line 133
    iget v15, v1, Landroidx/appcompat/app/AlertController;->m:I

    .line 135
    invoke-virtual {v12, v9, v13, v11, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 138
    :cond_89
    iget-object v9, v1, Landroidx/appcompat/app/AlertController;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 140
    if-eqz v9, :cond_9a

    .line 142
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 145
    move-result-object v9

    .line 146
    check-cast v9, Landroidx/appcompat/widget/i0$a;

    .line 148
    const/4 v11, 0x0

    .line 149
    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 151
    goto :goto_9a

    .line 152
    :cond_97
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_9a
    :goto_9a
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    move-result-object v7

    .line 167
    invoke-static {v3, v4}, Landroidx/appcompat/app/AlertController;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 170
    move-result-object v3

    .line 171
    invoke-static {v5, v6}, Landroidx/appcompat/app/AlertController;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 174
    move-result-object v4

    .line 175
    invoke-static {v7, v8}, Landroidx/appcompat/app/AlertController;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 178
    move-result-object v5

    .line 179
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    .line 181
    sget v7, Lh/f;->scrollView:I

    .line 183
    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 186
    move-result-object v6

    .line 187
    check-cast v6, Landroidx/core/widget/NestedScrollView;

    .line 189
    iput-object v6, v1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    .line 191
    invoke-virtual {v6, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 194
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    .line 196
    invoke-virtual {v6, v10}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 199
    const v6, 0x102000b

    .line 202
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 205
    move-result-object v6

    .line 206
    check-cast v6, Landroid/widget/TextView;

    .line 208
    iput-object v6, v1, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    .line 210
    if-nez v6, :cond_d4

    .line 212
    goto :goto_10a

    .line 213
    :cond_d4
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    .line 215
    if-eqz v7, :cond_dc

    .line 217
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    goto :goto_10a

    .line 221
    :cond_dc
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    .line 226
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    .line 228
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 231
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 233
    if-eqz v6, :cond_107

    .line 235
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    .line 237
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 240
    move-result-object v6

    .line 241
    check-cast v6, Landroid/view/ViewGroup;

    .line 243
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    .line 245
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 248
    move-result v7

    .line 249
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 252
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 254
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 256
    const/4 v11, -0x1

    .line 257
    invoke-direct {v9, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 260
    invoke-virtual {v6, v8, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 263
    goto :goto_10a

    .line 264
    :cond_107
    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :goto_10a
    const v6, 0x1020019

    .line 270
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 273
    move-result-object v6

    .line 274
    check-cast v6, Landroid/widget/Button;

    .line 276
    iput-object v6, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    .line 278
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->R:Landroidx/appcompat/app/AlertController$a;

    .line 280
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    .line 285
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 288
    move-result v6

    .line 289
    if-eqz v6, :cond_12d

    .line 291
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    .line 293
    if-nez v6, :cond_12d

    .line 295
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    .line 297
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 300
    move v6, v10

    .line 301
    goto :goto_14b

    .line 302
    :cond_12d
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    .line 304
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    .line 306
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    .line 311
    if-eqz v6, :cond_145

    .line 313
    iget v7, v1, Landroidx/appcompat/app/AlertController;->d:I

    .line 315
    invoke-virtual {v6, v10, v10, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 318
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    .line 320
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    .line 322
    const/4 v8, 0x0

    .line 323
    invoke-virtual {v6, v7, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_145
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    .line 328
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 331
    const/4 v6, 0x1

    .line 332
    :goto_14b
    const v7, 0x102001a

    .line 335
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 338
    move-result-object v7

    .line 339
    check-cast v7, Landroid/widget/Button;

    .line 341
    iput-object v7, v1, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    .line 343
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->R:Landroidx/appcompat/app/AlertController$a;

    .line 345
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    .line 350
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 353
    move-result v7

    .line 354
    if-eqz v7, :cond_16d

    .line 356
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    .line 358
    if-nez v7, :cond_16d

    .line 360
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    .line 362
    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 365
    goto :goto_18c

    .line 366
    :cond_16d
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    .line 368
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    .line 370
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    .line 375
    if-eqz v7, :cond_185

    .line 377
    iget v8, v1, Landroidx/appcompat/app/AlertController;->d:I

    .line 379
    invoke-virtual {v7, v10, v10, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 382
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    .line 384
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    .line 386
    const/4 v9, 0x0

    .line 387
    invoke-virtual {v7, v8, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 390
    :cond_185
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    .line 392
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 395
    or-int/lit8 v6, v6, 0x2

    .line 397
    :goto_18c
    const v7, 0x102001b

    .line 400
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 403
    move-result-object v7

    .line 404
    check-cast v7, Landroid/widget/Button;

    .line 406
    iput-object v7, v1, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    .line 408
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->R:Landroidx/appcompat/app/AlertController$a;

    .line 410
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    .line 415
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 418
    move-result v7

    .line 419
    if-eqz v7, :cond_1af

    .line 421
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    .line 423
    if-nez v7, :cond_1af

    .line 425
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    .line 427
    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 430
    const/4 v9, 0x0

    .line 431
    goto :goto_1d0

    .line 432
    :cond_1af
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    .line 434
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    .line 436
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    .line 441
    if-eqz v7, :cond_1c8

    .line 443
    iget v8, v1, Landroidx/appcompat/app/AlertController;->d:I

    .line 445
    invoke-virtual {v7, v10, v10, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 448
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    .line 450
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    .line 452
    const/4 v9, 0x0

    .line 453
    invoke-virtual {v7, v8, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 456
    goto :goto_1c9

    .line 457
    :cond_1c8
    const/4 v9, 0x0

    .line 458
    :goto_1c9
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    .line 460
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 463
    or-int/lit8 v6, v6, 0x4

    .line 465
    :goto_1d0
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    .line 467
    new-instance v8, Landroid/util/TypedValue;

    .line 469
    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 472
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 475
    move-result-object v7

    .line 476
    sget v11, Lh/a;->alertDialogCenterButtons:I

    .line 478
    const/4 v12, 0x1

    .line 479
    invoke-virtual {v7, v11, v8, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 482
    iget v7, v8, Landroid/util/TypedValue;->data:I

    .line 484
    if-eqz v7, :cond_1e7

    .line 486
    move v7, v12

    .line 487
    goto :goto_1e8

    .line 488
    :cond_1e7
    move v7, v10

    .line 489
    :goto_1e8
    const/4 v8, 0x2

    .line 490
    if-eqz v7, :cond_203

    .line 492
    if-ne v6, v12, :cond_1f3

    .line 494
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    .line 496
    invoke-static {v7}, Landroidx/appcompat/app/AlertController;->b(Landroid/widget/Button;)V

    .line 499
    goto :goto_203

    .line 500
    :cond_1f3
    if-ne v6, v8, :cond_1fb

    .line 502
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    .line 504
    invoke-static {v7}, Landroidx/appcompat/app/AlertController;->b(Landroid/widget/Button;)V

    .line 507
    goto :goto_203

    .line 508
    :cond_1fb
    const/4 v7, 0x4

    .line 509
    if-ne v6, v7, :cond_203

    .line 511
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    .line 513
    invoke-static {v7}, Landroidx/appcompat/app/AlertController;->b(Landroid/widget/Button;)V

    .line 516
    :cond_203
    :goto_203
    if-eqz v6, :cond_207

    .line 518
    const/4 v6, 0x1

    .line 519
    goto :goto_208

    .line 520
    :cond_207
    move v6, v10

    .line 521
    :goto_208
    if-nez v6, :cond_20d

    .line 523
    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 526
    :cond_20d
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    .line 528
    if-eqz v6, :cond_22a

    .line 530
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 532
    const/4 v7, -0x2

    .line 533
    const/4 v11, -0x1

    .line 534
    invoke-direct {v6, v11, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 537
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    .line 539
    invoke-virtual {v3, v7, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 542
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    .line 544
    sget v7, Lh/f;->title_template:I

    .line 546
    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 549
    move-result-object v6

    .line 550
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 553
    goto/16 :goto_2a0

    .line 555
    :cond_22a
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    .line 557
    const v7, 0x1020006

    .line 560
    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 563
    move-result-object v6

    .line 564
    check-cast v6, Landroid/widget/ImageView;

    .line 566
    iput-object v6, v1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 568
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    .line 570
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 573
    move-result v6

    .line 574
    const/4 v7, 0x1

    .line 575
    xor-int/2addr v6, v7

    .line 576
    if-eqz v6, :cond_28d

    .line 578
    iget-boolean v6, v1, Landroidx/appcompat/app/AlertController;->P:Z

    .line 580
    if-eqz v6, :cond_28d

    .line 582
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    .line 584
    sget v7, Lh/f;->alertTitle:I

    .line 586
    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 589
    move-result-object v6

    .line 590
    check-cast v6, Landroid/widget/TextView;

    .line 592
    iput-object v6, v1, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    .line 594
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    .line 596
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget v6, v1, Landroidx/appcompat/app/AlertController;->B:I

    .line 601
    if-eqz v6, :cond_260

    .line 603
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 605
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 608
    goto :goto_2a0

    .line 609
    :cond_260
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    .line 611
    if-eqz v6, :cond_26a

    .line 613
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 615
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 618
    goto :goto_2a0

    .line 619
    :cond_26a
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    .line 621
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 623
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    .line 626
    move-result v7

    .line 627
    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 629
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    .line 632
    move-result v11

    .line 633
    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 635
    invoke-virtual {v12}, Landroid/view/View;->getPaddingRight()I

    .line 638
    move-result v12

    .line 639
    iget-object v13, v1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 641
    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    .line 644
    move-result v13

    .line 645
    invoke-virtual {v6, v7, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 648
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 650
    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 653
    goto :goto_2a0

    .line 654
    :cond_28d
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    .line 656
    sget v7, Lh/f;->title_template:I

    .line 658
    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 661
    move-result-object v6

    .line 662
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 667
    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 670
    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 673
    :goto_2a0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 676
    move-result v2

    .line 677
    if-eq v2, v14, :cond_2a8

    .line 679
    const/4 v12, 0x1

    .line 680
    goto :goto_2a9

    .line 681
    :cond_2a8
    move v12, v10

    .line 682
    :goto_2a9
    if-eqz v3, :cond_2b3

    .line 684
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 687
    move-result v2

    .line 688
    if-eq v2, v14, :cond_2b3

    .line 690
    const/4 v2, 0x1

    .line 691
    goto :goto_2b4

    .line 692
    :cond_2b3
    move v2, v10

    .line 693
    :goto_2b4
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 696
    move-result v5

    .line 697
    if-eq v5, v14, :cond_2bc

    .line 699
    const/4 v5, 0x1

    .line 700
    goto :goto_2bd

    .line 701
    :cond_2bc
    move v5, v10

    .line 702
    :goto_2bd
    if-nez v5, :cond_2ca

    .line 704
    sget v6, Lh/f;->textSpacerNoButtons:I

    .line 706
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 709
    move-result-object v6

    .line 710
    if-eqz v6, :cond_2ca

    .line 712
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 715
    :cond_2ca
    if-eqz v2, :cond_2eb

    .line 717
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    .line 719
    if-eqz v6, :cond_2d4

    .line 721
    const/4 v7, 0x1

    .line 722
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 725
    :cond_2d4
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    .line 727
    if-nez v6, :cond_2df

    .line 729
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 731
    if-eqz v6, :cond_2dd

    .line 733
    goto :goto_2df

    .line 734
    :cond_2dd
    move-object v11, v9

    .line 735
    goto :goto_2e5

    .line 736
    :cond_2df
    :goto_2df
    sget v6, Lh/f;->titleDividerNoCustom:I

    .line 738
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 741
    move-result-object v11

    .line 742
    :goto_2e5
    if-eqz v11, :cond_2f6

    .line 744
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 747
    goto :goto_2f6

    .line 748
    :cond_2eb
    sget v3, Lh/f;->textSpacerNoTitle:I

    .line 750
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 753
    move-result-object v3

    .line 754
    if-eqz v3, :cond_2f6

    .line 756
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 759
    :cond_2f6
    :goto_2f6
    iget-object v3, v1, Landroidx/appcompat/app/AlertController;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 761
    instance-of v6, v3, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 763
    if-eqz v6, :cond_322

    .line 765
    if-eqz v5, :cond_305

    .line 767
    if-nez v2, :cond_301

    .line 769
    goto :goto_305

    .line 770
    :cond_301
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 773
    goto :goto_322

    .line 774
    :cond_305
    :goto_305
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    .line 777
    move-result v6

    .line 778
    if-eqz v2, :cond_310

    .line 780
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 783
    move-result v7

    .line 784
    goto :goto_312

    .line 785
    :cond_310
    iget v7, v3, Landroidx/appcompat/app/AlertController$RecycleListView;->a:I

    .line 787
    :goto_312
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 790
    move-result v9

    .line 791
    if-eqz v5, :cond_31d

    .line 793
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 796
    move-result v11

    .line 797
    goto :goto_31f

    .line 798
    :cond_31d
    iget v11, v3, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I

    .line 800
    :goto_31f
    invoke-virtual {v3, v6, v7, v9, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 803
    :cond_322
    :goto_322
    if-nez v12, :cond_351

    .line 805
    iget-object v3, v1, Landroidx/appcompat/app/AlertController;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 807
    if-eqz v3, :cond_329

    .line 809
    goto :goto_32b

    .line 810
    :cond_329
    iget-object v3, v1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    .line 812
    :goto_32b
    if-eqz v3, :cond_351

    .line 814
    if-eqz v5, :cond_330

    .line 816
    move v10, v8

    .line 817
    :cond_330
    or-int/2addr v2, v10

    .line 818
    const/4 v5, 0x3

    .line 819
    iget-object v6, v1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    .line 821
    sget v7, Lh/f;->scrollIndicatorUp:I

    .line 823
    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 826
    move-result-object v6

    .line 827
    iget-object v7, v1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    .line 829
    sget v8, Lh/f;->scrollIndicatorDown:I

    .line 831
    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 834
    move-result-object v7

    .line 835
    sget-object v8, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 837
    invoke-static {v3, v2, v5}, Lm0/g0$j;->d(Landroid/view/View;II)V

    .line 840
    if-eqz v6, :cond_34c

    .line 842
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 845
    :cond_34c
    if-eqz v7, :cond_351

    .line 847
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 850
    :cond_351
    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 852
    if-eqz v2, :cond_368

    .line 854
    iget-object v3, v1, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    .line 856
    if-eqz v3, :cond_368

    .line 858
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 861
    iget v1, v1, Landroidx/appcompat/app/AlertController;->I:I

    .line 863
    const/4 v3, -0x1

    .line 864
    if-le v1, v3, :cond_368

    .line 866
    const/4 v3, 0x1

    .line 867
    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 870
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 873
    :cond_368
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Landroidx/appcompat/app/AlertController;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_f

    .line 8
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_f

    .line 14
    move v0, v1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    if-eqz v0, :cond_13

    .line 19
    return v1

    .line 20
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Landroidx/appcompat/app/AlertController;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_f

    .line 8
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_f

    .line 14
    move v0, v1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    if-eqz v0, :cond_13

    .line 19
    return v1

    .line 20
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/q;->setTitle(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Landroidx/appcompat/app/AlertController;

    .line 6
    iput-object p1, v0, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    .line 8
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_e
    return-void
.end method
