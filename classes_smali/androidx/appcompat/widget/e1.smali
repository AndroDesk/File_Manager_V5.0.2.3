.class public final Landroidx/appcompat/widget/e1;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field public static k:Landroidx/appcompat/widget/e1;

.field public static l:Landroidx/appcompat/widget/e1;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljava/lang/CharSequence;

.field public final c:I

.field public final d:Landroidx/appcompat/widget/d1;

.field public final e:Landroidx/appcompat/widget/d1;

.field public f:I

.field public g:I

.field public h:Landroidx/appcompat/widget/f1;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/appcompat/widget/d1;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/d1;-><init>(Landroidx/appcompat/widget/e1;I)V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/e1;->d:Landroidx/appcompat/widget/d1;

    .line 12
    new-instance v0, Landroidx/appcompat/widget/d1;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/d1;-><init>(Landroidx/appcompat/widget/e1;I)V

    .line 18
    iput-object v0, p0, Landroidx/appcompat/widget/e1;->e:Landroidx/appcompat/widget/d1;

    .line 20
    iput-object p1, p0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 22
    iput-object p2, p0, Landroidx/appcompat/widget/e1;->b:Ljava/lang/CharSequence;

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object p2

    .line 28
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 31
    move-result-object p2

    .line 32
    sget-object v0, Lm0/j0;->a:Ljava/lang/reflect/Method;

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    const/16 v2, 0x1c

    .line 38
    if-lt v0, v2, :cond_2c

    .line 40
    invoke-static {p2}, Lm0/j0$b;->a(Landroid/view/ViewConfiguration;)I

    .line 43
    move-result p2

    .line 44
    goto :goto_32

    .line 45
    :cond_2c
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 48
    move-result p2

    .line 49
    div-int/lit8 p2, p2, 0x2

    .line 51
    :goto_32
    iput p2, p0, Landroidx/appcompat/widget/e1;->c:I

    .line 53
    iput-boolean v1, p0, Landroidx/appcompat/widget/e1;->j:Z

    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 58
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 61
    return-void
.end method

.method public static b(Landroidx/appcompat/widget/e1;)V
    .registers 4

    .line 1
    sget-object v0, Landroidx/appcompat/widget/e1;->k:Landroidx/appcompat/widget/e1;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v1, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 7
    iget-object v0, v0, Landroidx/appcompat/widget/e1;->d:Landroidx/appcompat/widget/d1;

    .line 9
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    :cond_b
    sput-object p0, Landroidx/appcompat/widget/e1;->k:Landroidx/appcompat/widget/e1;

    .line 14
    if-eqz p0, :cond_1b

    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 18
    iget-object p0, p0, Landroidx/appcompat/widget/e1;->d:Landroidx/appcompat/widget/d1;

    .line 20
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 23
    move-result v1

    .line 24
    int-to-long v1, v1

    .line 25
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    :cond_1b
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    sget-object v0, Landroidx/appcompat/widget/e1;->l:Landroidx/appcompat/widget/e1;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p0, :cond_3a

    .line 6
    sput-object v1, Landroidx/appcompat/widget/e1;->l:Landroidx/appcompat/widget/e1;

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/e1;->h:Landroidx/appcompat/widget/f1;

    .line 10
    if-eqz v0, :cond_33

    .line 12
    iget-object v2, v0, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v2, :cond_16

    .line 21
    move v2, v3

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v2, 0x0

    .line 24
    :goto_17
    if-nez v2, :cond_1a

    .line 26
    goto :goto_29

    .line 27
    :cond_1a
    iget-object v2, v0, Landroidx/appcompat/widget/f1;->a:Landroid/content/Context;

    .line 29
    const-string v4, "window"

    .line 31
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/view/WindowManager;

    .line 37
    iget-object v0, v0, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    .line 39
    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 42
    :goto_29
    iput-object v1, p0, Landroidx/appcompat/widget/e1;->h:Landroidx/appcompat/widget/f1;

    .line 44
    iput-boolean v3, p0, Landroidx/appcompat/widget/e1;->j:Z

    .line 46
    iget-object v0, p0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 48
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 51
    goto :goto_3a

    .line 52
    :cond_33
    const-string v0, "TooltipCompatHandler"

    .line 54
    const-string v2, "sActiveHandler.mPopup == null"

    .line 56
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_3a
    :goto_3a
    sget-object v0, Landroidx/appcompat/widget/e1;->k:Landroidx/appcompat/widget/e1;

    .line 61
    if-ne v0, p0, :cond_41

    .line 63
    invoke-static {v1}, Landroidx/appcompat/widget/e1;->b(Landroidx/appcompat/widget/e1;)V

    .line 66
    :cond_41
    iget-object v0, p0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 68
    iget-object v1, p0, Landroidx/appcompat/widget/e1;->e:Landroidx/appcompat/widget/d1;

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method public final c(Z)V
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 5
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {v1}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    const/4 v1, 0x0

    .line 15
    invoke-static {v1}, Landroidx/appcompat/widget/e1;->b(Landroidx/appcompat/widget/e1;)V

    .line 18
    sget-object v1, Landroidx/appcompat/widget/e1;->l:Landroidx/appcompat/widget/e1;

    .line 20
    if-eqz v1, :cond_18

    .line 22
    invoke-virtual {v1}, Landroidx/appcompat/widget/e1;->a()V

    .line 25
    :cond_18
    sput-object v0, Landroidx/appcompat/widget/e1;->l:Landroidx/appcompat/widget/e1;

    .line 27
    move/from16 v1, p1

    .line 29
    iput-boolean v1, v0, Landroidx/appcompat/widget/e1;->i:Z

    .line 31
    new-instance v1, Landroidx/appcompat/widget/f1;

    .line 33
    iget-object v2, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v1, v2}, Landroidx/appcompat/widget/f1;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v1, v0, Landroidx/appcompat/widget/e1;->h:Landroidx/appcompat/widget/f1;

    .line 44
    iget-object v2, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 46
    iget v3, v0, Landroidx/appcompat/widget/e1;->f:I

    .line 48
    iget v4, v0, Landroidx/appcompat/widget/e1;->g:I

    .line 50
    iget-boolean v5, v0, Landroidx/appcompat/widget/e1;->i:Z

    .line 52
    iget-object v6, v0, Landroidx/appcompat/widget/e1;->b:Ljava/lang/CharSequence;

    .line 54
    iget-object v7, v1, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    .line 56
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 59
    move-result-object v7

    .line 60
    const/4 v9, 0x0

    .line 61
    if-eqz v7, :cond_40

    .line 63
    const/4 v7, 0x1

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    move v7, v9

    .line 66
    :goto_41
    const-string v10, "window"

    .line 68
    if-eqz v7, :cond_60

    .line 70
    iget-object v7, v1, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    .line 72
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 75
    move-result-object v7

    .line 76
    if-eqz v7, :cond_4f

    .line 78
    const/4 v7, 0x1

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    move v7, v9

    .line 81
    :goto_50
    if-nez v7, :cond_53

    .line 83
    goto :goto_60

    .line 84
    :cond_53
    iget-object v7, v1, Landroidx/appcompat/widget/f1;->a:Landroid/content/Context;

    .line 86
    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    move-result-object v7

    .line 90
    check-cast v7, Landroid/view/WindowManager;

    .line 92
    iget-object v11, v1, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    .line 94
    invoke-interface {v7, v11}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 97
    :cond_60
    :goto_60
    iget-object v7, v1, Landroidx/appcompat/widget/f1;->c:Landroid/widget/TextView;

    .line 99
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v6, v1, Landroidx/appcompat/widget/f1;->d:Landroid/view/WindowManager$LayoutParams;

    .line 104
    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 107
    move-result-object v7

    .line 108
    iput-object v7, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 110
    iget-object v7, v1, Landroidx/appcompat/widget/f1;->a:Landroid/content/Context;

    .line 112
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    move-result-object v7

    .line 116
    sget v11, Lh/d;->tooltip_precise_anchor_threshold:I

    .line 118
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 121
    move-result v7

    .line 122
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 125
    move-result v11

    .line 126
    const/4 v12, 0x2

    .line 127
    if-lt v11, v7, :cond_81

    .line 129
    goto :goto_86

    .line 130
    :cond_81
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 133
    move-result v3

    .line 134
    div-int/2addr v3, v12

    .line 135
    :goto_86
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 138
    move-result v11

    .line 139
    if-lt v11, v7, :cond_9c

    .line 141
    iget-object v7, v1, Landroidx/appcompat/widget/f1;->a:Landroid/content/Context;

    .line 143
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 146
    move-result-object v7

    .line 147
    sget v11, Lh/d;->tooltip_precise_anchor_extra_offset:I

    .line 149
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 152
    move-result v7

    .line 153
    add-int v11, v4, v7

    .line 155
    sub-int/2addr v4, v7

    .line 156
    goto :goto_a1

    .line 157
    :cond_9c
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 160
    move-result v11

    .line 161
    move v4, v9

    .line 162
    :goto_a1
    const/16 v7, 0x31

    .line 164
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 166
    iget-object v7, v1, Landroidx/appcompat/widget/f1;->a:Landroid/content/Context;

    .line 168
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 171
    move-result-object v7

    .line 172
    if-eqz v5, :cond_b0

    .line 174
    sget v13, Lh/d;->tooltip_y_offset_touch:I

    .line 176
    goto :goto_b2

    .line 177
    :cond_b0
    sget v13, Lh/d;->tooltip_y_offset_non_touch:I

    .line 179
    :goto_b2
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 182
    move-result v7

    .line 183
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 186
    move-result-object v13

    .line 187
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 190
    move-result-object v14

    .line 191
    instance-of v15, v14, Landroid/view/WindowManager$LayoutParams;

    .line 193
    if-eqz v15, :cond_c9

    .line 195
    check-cast v14, Landroid/view/WindowManager$LayoutParams;

    .line 197
    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 199
    if-ne v14, v12, :cond_c9

    .line 201
    goto :goto_e7

    .line 202
    :cond_c9
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 205
    move-result-object v14

    .line 206
    :goto_cd
    instance-of v15, v14, Landroid/content/ContextWrapper;

    .line 208
    if-eqz v15, :cond_e7

    .line 210
    instance-of v15, v14, Landroid/app/Activity;

    .line 212
    if-eqz v15, :cond_e0

    .line 214
    check-cast v14, Landroid/app/Activity;

    .line 216
    invoke-virtual {v14}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 219
    move-result-object v13

    .line 220
    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 223
    move-result-object v13

    .line 224
    goto :goto_e7

    .line 225
    :cond_e0
    check-cast v14, Landroid/content/ContextWrapper;

    .line 227
    invoke-virtual {v14}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 230
    move-result-object v14

    .line 231
    goto :goto_cd

    .line 232
    :cond_e7
    :goto_e7
    if-nez v13, :cond_f2

    .line 234
    const-string v2, "TooltipPopup"

    .line 236
    const-string v3, "Cannot find app view"

    .line 238
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    goto/16 :goto_17e

    .line 243
    :cond_f2
    iget-object v14, v1, Landroidx/appcompat/widget/f1;->e:Landroid/graphics/Rect;

    .line 245
    invoke-virtual {v13, v14}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 248
    iget-object v14, v1, Landroidx/appcompat/widget/f1;->e:Landroid/graphics/Rect;

    .line 250
    iget v15, v14, Landroid/graphics/Rect;->left:I

    .line 252
    if-gez v15, :cond_126

    .line 254
    iget v14, v14, Landroid/graphics/Rect;->top:I

    .line 256
    if-gez v14, :cond_126

    .line 258
    iget-object v14, v1, Landroidx/appcompat/widget/f1;->a:Landroid/content/Context;

    .line 260
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 263
    move-result-object v14

    .line 264
    const-string v15, "status_bar_height"

    .line 266
    const-string v12, "dimen"

    .line 268
    const-string v8, "android"

    .line 270
    invoke-virtual {v14, v15, v12, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    move-result v8

    .line 274
    if-eqz v8, :cond_118

    .line 276
    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 279
    move-result v8

    .line 280
    goto :goto_119

    .line 281
    :cond_118
    move v8, v9

    .line 282
    :goto_119
    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 285
    move-result-object v12

    .line 286
    iget-object v14, v1, Landroidx/appcompat/widget/f1;->e:Landroid/graphics/Rect;

    .line 288
    iget v15, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 290
    iget v12, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 292
    invoke-virtual {v14, v9, v8, v15, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 295
    :cond_126
    iget-object v8, v1, Landroidx/appcompat/widget/f1;->g:[I

    .line 297
    invoke-virtual {v13, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 300
    iget-object v8, v1, Landroidx/appcompat/widget/f1;->f:[I

    .line 302
    invoke-virtual {v2, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 305
    iget-object v2, v1, Landroidx/appcompat/widget/f1;->f:[I

    .line 307
    aget v8, v2, v9

    .line 309
    iget-object v12, v1, Landroidx/appcompat/widget/f1;->g:[I

    .line 311
    aget v14, v12, v9

    .line 313
    sub-int/2addr v8, v14

    .line 314
    aput v8, v2, v9

    .line 316
    const/4 v14, 0x1

    .line 317
    aget v15, v2, v14

    .line 319
    aget v12, v12, v14

    .line 321
    sub-int/2addr v15, v12

    .line 322
    aput v15, v2, v14

    .line 324
    add-int/2addr v8, v3

    .line 325
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    .line 328
    move-result v2

    .line 329
    const/4 v3, 0x2

    .line 330
    div-int/2addr v2, v3

    .line 331
    sub-int/2addr v8, v2

    .line 332
    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 334
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 337
    move-result v2

    .line 338
    iget-object v3, v1, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    .line 340
    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    .line 343
    iget-object v2, v1, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    .line 345
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 348
    move-result v2

    .line 349
    iget-object v3, v1, Landroidx/appcompat/widget/f1;->f:[I

    .line 351
    const/4 v8, 0x1

    .line 352
    aget v3, v3, v8

    .line 354
    add-int/2addr v4, v3

    .line 355
    sub-int/2addr v4, v7

    .line 356
    sub-int/2addr v4, v2

    .line 357
    add-int/2addr v3, v11

    .line 358
    add-int/2addr v3, v7

    .line 359
    if-eqz v5, :cond_170

    .line 361
    if-ltz v4, :cond_16d

    .line 363
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 365
    goto :goto_17e

    .line 366
    :cond_16d
    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 368
    goto :goto_17e

    .line 369
    :cond_170
    add-int/2addr v2, v3

    .line 370
    iget-object v5, v1, Landroidx/appcompat/widget/f1;->e:Landroid/graphics/Rect;

    .line 372
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 375
    move-result v5

    .line 376
    if-gt v2, v5, :cond_17c

    .line 378
    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 380
    goto :goto_17e

    .line 381
    :cond_17c
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 383
    :goto_17e
    iget-object v2, v1, Landroidx/appcompat/widget/f1;->a:Landroid/content/Context;

    .line 385
    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 388
    move-result-object v2

    .line 389
    check-cast v2, Landroid/view/WindowManager;

    .line 391
    iget-object v3, v1, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    .line 393
    iget-object v1, v1, Landroidx/appcompat/widget/f1;->d:Landroid/view/WindowManager$LayoutParams;

    .line 395
    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    iget-object v1, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 400
    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 403
    iget-boolean v1, v0, Landroidx/appcompat/widget/e1;->i:Z

    .line 405
    if-eqz v1, :cond_199

    .line 407
    const-wide/16 v1, 0x9c4

    .line 409
    goto :goto_1b2

    .line 410
    :cond_199
    iget-object v1, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 412
    invoke-static {v1}, Lm0/g0$d;->g(Landroid/view/View;)I

    .line 415
    move-result v1

    .line 416
    const/4 v2, 0x1

    .line 417
    and-int/2addr v1, v2

    .line 418
    if-ne v1, v2, :cond_1aa

    .line 420
    const-wide/16 v1, 0xbb8

    .line 422
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 425
    move-result v3

    .line 426
    goto :goto_1b0

    .line 427
    :cond_1aa
    const-wide/16 v1, 0x3a98

    .line 429
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 432
    move-result v3

    .line 433
    :goto_1b0
    int-to-long v3, v3

    .line 434
    sub-long/2addr v1, v3

    .line 435
    :goto_1b2
    iget-object v3, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 437
    iget-object v4, v0, Landroidx/appcompat/widget/e1;->e:Landroidx/appcompat/widget/d1;

    .line 439
    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 442
    iget-object v3, v0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 444
    iget-object v4, v0, Landroidx/appcompat/widget/e1;->e:Landroidx/appcompat/widget/d1;

    .line 446
    invoke-virtual {v3, v4, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 449
    return-void
.end method

.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/e1;->h:Landroidx/appcompat/widget/f1;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_a

    .line 6
    iget-boolean p1, p0, Landroidx/appcompat/widget/e1;->i:Z

    .line 8
    if-eqz p1, :cond_a

    .line 10
    return v0

    .line 11
    :cond_a
    iget-object p1, p0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    const-string v1, "accessibility"

    .line 19
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 25
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_25

    .line 31
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_25

    .line 37
    return v0

    .line 38
    :cond_25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 41
    move-result p1

    .line 42
    const/4 v1, 0x7

    .line 43
    const/4 v2, 0x1

    .line 44
    if-eq p1, v1, :cond_38

    .line 46
    const/16 p2, 0xa

    .line 48
    if-eq p1, p2, :cond_32

    .line 50
    goto :goto_78

    .line 51
    :cond_32
    iput-boolean v2, p0, Landroidx/appcompat/widget/e1;->j:Z

    .line 53
    invoke-virtual {p0}, Landroidx/appcompat/widget/e1;->a()V

    .line 56
    goto :goto_78

    .line 57
    :cond_38
    iget-object p1, p0, Landroidx/appcompat/widget/e1;->a:Landroid/view/View;

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_78

    .line 65
    iget-object p1, p0, Landroidx/appcompat/widget/e1;->h:Landroidx/appcompat/widget/f1;

    .line 67
    if-nez p1, :cond_78

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 72
    move-result p1

    .line 73
    float-to-int p1, p1

    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 77
    move-result p2

    .line 78
    float-to-int p2, p2

    .line 79
    iget-boolean v1, p0, Landroidx/appcompat/widget/e1;->j:Z

    .line 81
    if-nez v1, :cond_6d

    .line 83
    iget v1, p0, Landroidx/appcompat/widget/e1;->f:I

    .line 85
    sub-int v1, p1, v1

    .line 87
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 90
    move-result v1

    .line 91
    iget v3, p0, Landroidx/appcompat/widget/e1;->c:I

    .line 93
    if-gt v1, v3, :cond_6d

    .line 95
    iget v1, p0, Landroidx/appcompat/widget/e1;->g:I

    .line 97
    sub-int v1, p2, v1

    .line 99
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 102
    move-result v1

    .line 103
    iget v3, p0, Landroidx/appcompat/widget/e1;->c:I

    .line 105
    if-le v1, v3, :cond_6b

    .line 107
    goto :goto_6d

    .line 108
    :cond_6b
    move v2, v0

    .line 109
    goto :goto_73

    .line 110
    :cond_6d
    :goto_6d
    iput p1, p0, Landroidx/appcompat/widget/e1;->f:I

    .line 112
    iput p2, p0, Landroidx/appcompat/widget/e1;->g:I

    .line 114
    iput-boolean v0, p0, Landroidx/appcompat/widget/e1;->j:Z

    .line 116
    :goto_73
    if-eqz v2, :cond_78

    .line 118
    invoke-static {p0}, Landroidx/appcompat/widget/e1;->b(Landroidx/appcompat/widget/e1;)V

    .line 121
    :cond_78
    :goto_78
    return v0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 7
    iput v0, p0, Landroidx/appcompat/widget/e1;->f:I

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 12
    move-result p1

    .line 13
    div-int/lit8 p1, p1, 0x2

    .line 15
    iput p1, p0, Landroidx/appcompat/widget/e1;->g:I

    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e1;->c(Z)V

    .line 21
    return p1
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/e1;->a()V

    .line 4
    return-void
.end method
