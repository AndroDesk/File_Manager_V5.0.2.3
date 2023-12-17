.class Lmiuix/navigator/MiuixNavigationLayout$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "MiuixNavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/MiuixNavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/MiuixNavigationLayout;


# direct methods
.method public constructor <init>(Lmiuix/navigator/MiuixNavigationLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 14

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$300(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x11

    .line 9
    const-string v2, "NAVIGATION_CLOSE"

    .line 11
    const-string v3, "NAVIGATION_OPEN"

    .line 13
    const/4 v4, 0x2

    .line 14
    if-ne v4, v0, :cond_b4

    .line 16
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 18
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$400(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 21
    move-result-object v0

    .line 22
    sget v4, Lmiuix/navigator/R$id;->secondary_content_decor_wrapper:I

    .line 24
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    sget v4, Lmiuix/navigator/R$id;->secondary_content_decor:I

    .line 30
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    sget v4, Lmiuix/navigator/R$id;->action_bar_overlay_layout:I

    .line 36
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 42
    if-eqz v0, :cond_64

    .line 44
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 46
    invoke-static {v4, p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$500(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Object;)Z

    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_3b

    .line 52
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 54
    invoke-static {v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z

    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_43

    .line 60
    :cond_3b
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 62
    invoke-static {v4, p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$700(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Object;)Z

    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_b4

    .line 68
    :cond_43
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 70
    invoke-static {v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$800(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 73
    move-result v4

    .line 74
    invoke-virtual {v0, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->showContentMask(I)V

    .line 77
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Landroid/widget/FrameLayout;

    .line 83
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 92
    move-result v0

    .line 93
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 95
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 97
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    goto :goto_b4

    .line 101
    :cond_64
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 103
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    .line 106
    move-result-object v0

    .line 107
    sget-object v5, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 109
    if-ne v0, v5, :cond_b4

    .line 111
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 113
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 116
    move-result-object v0

    .line 117
    sget v5, Lmiuix/navigator/R$id;->content_decor:I

    .line 119
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 129
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 131
    invoke-static {v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z

    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_b4

    .line 137
    if-eqz v0, :cond_b4

    .line 139
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v4

    .line 143
    if-nez v4, :cond_96

    .line 145
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_b4

    .line 151
    :cond_96
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 153
    invoke-static {v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$800(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 156
    move-result v4

    .line 157
    invoke-virtual {v0, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->showContentMask(I)V

    .line 160
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Landroid/widget/FrameLayout;

    .line 166
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 175
    move-result v0

    .line 176
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 178
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    :cond_b4
    :goto_b4
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 183
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$300(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 186
    move-result v0

    .line 187
    const-string v4, "CONTENT_OPEN"

    .line 189
    const-string v5, "CONTENT_CLOSE"

    .line 191
    const/4 v6, 0x1

    .line 192
    if-ne v6, v0, :cond_23d

    .line 194
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 196
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$400(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 199
    move-result-object v0

    .line 200
    sget v7, Lmiuix/navigator/R$id;->secondary_content_decor_wrapper:I

    .line 202
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 205
    move-result-object v0

    .line 206
    sget v7, Lmiuix/navigator/R$id;->secondary_content_decor:I

    .line 208
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    move-result-object v0

    .line 212
    sget v7, Lmiuix/navigator/R$id;->action_bar_overlay_layout:I

    .line 214
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 220
    const/4 v8, -0x1

    .line 221
    const/4 v9, 0x0

    .line 222
    if-eqz v0, :cond_1cc

    .line 224
    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 226
    invoke-static {v10}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    .line 229
    move-result-object v10

    .line 230
    sget-object v11, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 232
    if-ne v10, v11, :cond_10b

    .line 234
    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 236
    invoke-static {v10}, Lmiuix/navigator/MiuixNavigationLayout;->access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 239
    move-result-object v10

    .line 240
    sget v11, Lmiuix/navigator/R$id;->content_decor:I

    .line 242
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 245
    move-result-object v10

    .line 246
    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 249
    move-result-object v7

    .line 250
    check-cast v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 252
    if-eqz v7, :cond_10b

    .line 254
    invoke-virtual {v7}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 257
    move-result-object v7

    .line 258
    check-cast v7, Landroid/widget/FrameLayout;

    .line 260
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 263
    move-result-object v7

    .line 264
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 266
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 268
    :cond_10b
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Landroid/widget/FrameLayout;

    .line 274
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 277
    move-result-object v7

    .line 278
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 280
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    move-result v10

    .line 284
    if-eqz v10, :cond_13a

    .line 286
    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 288
    invoke-static {v10}, Lmiuix/navigator/MiuixNavigationLayout;->access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z

    .line 291
    move-result v10

    .line 292
    if-nez v10, :cond_13a

    .line 294
    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 296
    invoke-static {v10, v6}, Lmiuix/navigator/MiuixNavigationLayout;->access$1102(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 299
    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 301
    invoke-static {v10, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1202(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 304
    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 306
    invoke-static {v10, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 309
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 312
    move-result v10

    .line 313
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 315
    :cond_13a
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    move-result v10

    .line 319
    if-eqz v10, :cond_155

    .line 321
    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 323
    invoke-static {v10, v6}, Lmiuix/navigator/MiuixNavigationLayout;->access$1102(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 326
    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 328
    invoke-static {v6, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1402(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 331
    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 333
    invoke-static {v6, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 336
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 339
    move-result v6

    .line 340
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 342
    :cond_155
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    move-result v6

    .line 346
    if-eqz v6, :cond_183

    .line 348
    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 350
    invoke-static {v6}, Lmiuix/navigator/MiuixNavigationLayout;->access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z

    .line 353
    move-result v6

    .line 354
    if-nez v6, :cond_183

    .line 356
    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 358
    invoke-static {v6, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1102(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 361
    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 363
    invoke-static {v6}, Lmiuix/navigator/MiuixNavigationLayout;->access$1200(Lmiuix/navigator/MiuixNavigationLayout;)Z

    .line 366
    move-result v6

    .line 367
    if-eqz v6, :cond_17e

    .line 369
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 372
    move-result v6

    .line 373
    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 375
    invoke-static {v10}, Lmiuix/navigator/MiuixNavigationLayout;->access$1500(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 378
    move-result v10

    .line 379
    sub-int/2addr v6, v10

    .line 380
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 382
    goto :goto_180

    .line 383
    :cond_17e
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 385
    :goto_180
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 388
    :cond_183
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    move-result v6

    .line 392
    if-eqz v6, :cond_1c6

    .line 394
    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 396
    invoke-static {v6, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1102(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 399
    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 401
    invoke-static {v6}, Lmiuix/navigator/MiuixNavigationLayout;->access$1400(Lmiuix/navigator/MiuixNavigationLayout;)Z

    .line 404
    move-result v6

    .line 405
    if-eqz v6, :cond_1c4

    .line 407
    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 409
    invoke-virtual {v6}, Lmiuix/navigator/MiuixNavigationLayout;->isNavigationOpen()Z

    .line 412
    move-result v6

    .line 413
    if-eqz v6, :cond_1b3

    .line 415
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 418
    move-result v6

    .line 419
    iget-object v8, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 421
    invoke-static {v8}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 424
    move-result v8

    .line 425
    sub-int/2addr v6, v8

    .line 426
    iget-object v8, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 428
    invoke-static {v8}, Lmiuix/navigator/MiuixNavigationLayout;->access$1500(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 431
    move-result v8

    .line 432
    sub-int/2addr v6, v8

    .line 433
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 435
    goto :goto_1c0

    .line 436
    :cond_1b3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 439
    move-result v6

    .line 440
    iget-object v8, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 442
    invoke-static {v8}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 445
    move-result v8

    .line 446
    sub-int/2addr v6, v8

    .line 447
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 449
    :goto_1c0
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 452
    goto :goto_1c6

    .line 453
    :cond_1c4
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 455
    :cond_1c6
    :goto_1c6
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 457
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    goto :goto_23d

    .line 461
    :cond_1cc
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 463
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    .line 466
    move-result-object v0

    .line 467
    sget-object v10, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 469
    if-ne v0, v10, :cond_23d

    .line 471
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 473
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 476
    move-result-object v0

    .line 477
    sget v10, Lmiuix/navigator/R$id;->content_decor:I

    .line 479
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 486
    move-result-object v0

    .line 487
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 489
    if-eqz v0, :cond_23d

    .line 491
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 494
    move-result-object v0

    .line 495
    check-cast v0, Landroid/widget/FrameLayout;

    .line 497
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 500
    move-result-object v7

    .line 501
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 503
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 506
    move-result v10

    .line 507
    if-eqz v10, :cond_212

    .line 509
    iget-object v8, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 511
    invoke-static {v8, v6}, Lmiuix/navigator/MiuixNavigationLayout;->access$1102(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 514
    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 516
    invoke-static {v6, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1202(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 519
    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 521
    invoke-static {v6, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 524
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 527
    move-result v6

    .line 528
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 530
    goto :goto_238

    .line 531
    :cond_212
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 534
    move-result v6

    .line 535
    if-eqz v6, :cond_238

    .line 537
    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 539
    invoke-static {v6, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1102(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 542
    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 544
    invoke-static {v6}, Lmiuix/navigator/MiuixNavigationLayout;->access$1200(Lmiuix/navigator/MiuixNavigationLayout;)Z

    .line 547
    move-result v6

    .line 548
    if-eqz v6, :cond_236

    .line 550
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 553
    move-result v6

    .line 554
    iget-object v8, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 556
    invoke-static {v8}, Lmiuix/navigator/MiuixNavigationLayout;->access$1500(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 559
    move-result v8

    .line 560
    sub-int/2addr v6, v8

    .line 561
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 563
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 566
    goto :goto_238

    .line 567
    :cond_236
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 569
    :cond_238
    :goto_238
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 571
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    :cond_23d
    :goto_23d
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 576
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 579
    move-result-object v0

    .line 580
    if-nez v0, :cond_246

    .line 582
    return-void

    .line 583
    :cond_246
    const-string v0, "OTHERS"

    .line 585
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 588
    move-result v0

    .line 589
    if-eqz v0, :cond_24f

    .line 591
    return-void

    .line 592
    :cond_24f
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 595
    move-result v0

    .line 596
    if-eqz v0, :cond_25f

    .line 598
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 600
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 603
    move-result-object p1

    .line 604
    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationOpenBegin()V

    .line 607
    goto :goto_28e

    .line 608
    :cond_25f
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    move-result v0

    .line 612
    if-eqz v0, :cond_26f

    .line 614
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 616
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 619
    move-result-object p1

    .line 620
    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationCloseBegin()V

    .line 623
    goto :goto_28e

    .line 624
    :cond_26f
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    move-result v0

    .line 628
    if-eqz v0, :cond_27f

    .line 630
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 632
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 635
    move-result-object p1

    .line 636
    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentOpenBegin()V

    .line 639
    goto :goto_28e

    .line 640
    :cond_27f
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 643
    move-result p1

    .line 644
    if-eqz p1, :cond_28e

    .line 646
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 648
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 651
    move-result-object p1

    .line 652
    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentCloseBegin()V

    .line 655
    :cond_28e
    :goto_28e
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    const-string v0, "OTHERS"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_12

    .line 18
    return-void

    .line 19
    :cond_12
    const-string v0, "NAVIGATION_OPEN"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_24

    .line 27
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 29
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationOpenCancel()V

    .line 36
    goto :goto_59

    .line 37
    :cond_24
    const-string v0, "NAVIGATION_CLOSE"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_36

    .line 45
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 47
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationCloseCancel()V

    .line 54
    goto :goto_59

    .line 55
    :cond_36
    const-string v0, "CONTENT_OPEN"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_48

    .line 63
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 65
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentOpenCancel()V

    .line 72
    goto :goto_59

    .line 73
    :cond_48
    const-string v0, "CONTENT_CLOSE"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_59

    .line 81
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 83
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentCloseCancel()V

    .line 90
    :cond_59
    :goto_59
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$300(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 6
    move-result v0

    .line 7
    const-string v1, "OTHERS"

    .line 9
    const/4 v2, 0x2

    .line 10
    if-ne v2, v0, :cond_97

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_23

    .line 18
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 20
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    .line 23
    move-result-object v0

    .line 24
    sget-object v2, Lmiuix/navigator/Navigator$Mode;->LC:Lmiuix/navigator/Navigator$Mode;

    .line 26
    if-ne v0, v2, :cond_97

    .line 28
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 30
    invoke-static {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$700(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_97

    .line 36
    :cond_23
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 38
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$400(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 41
    move-result-object v0

    .line 42
    sget v2, Lmiuix/navigator/R$id;->secondary_content_decor_wrapper:I

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 48
    sget v2, Lmiuix/navigator/R$id;->secondary_content_decor:I

    .line 50
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 54
    sget v2, Lmiuix/navigator/R$id;->action_bar_overlay_layout:I

    .line 56
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 62
    const/4 v3, -0x1

    .line 63
    if-eqz v0, :cond_5d

    .line 65
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 67
    invoke-static {v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z

    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_5d

    .line 73
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->hideContentMask()V

    .line 76
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/widget/FrameLayout;

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 88
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 90
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    goto :goto_97

    .line 94
    :cond_5d
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 96
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    .line 99
    move-result-object v0

    .line 100
    sget-object v4, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 102
    if-ne v0, v4, :cond_97

    .line 104
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 106
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    .line 109
    move-result-object v0

    .line 110
    sget v4, Lmiuix/navigator/R$id;->content_decor:I

    .line 112
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 122
    if-eqz v0, :cond_97

    .line 124
    iget-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 126
    invoke-static {v2}, Lmiuix/navigator/MiuixNavigationLayout;->access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z

    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_97

    .line 132
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->hideContentMask()V

    .line 135
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroid/widget/FrameLayout;

    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 149
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    :cond_97
    :goto_97
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 154
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$300(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 157
    move-result v0

    .line 158
    const-string v2, "CONTENT_CLOSE"

    .line 160
    const-string v3, "NAVIGATION_CLOSE"

    .line 162
    const/4 v4, 0x1

    .line 163
    if-ne v4, v0, :cond_ba

    .line 165
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_af

    .line 171
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 173
    invoke-static {v0, v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$1202(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 176
    :cond_af
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_ba

    .line 182
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 184
    invoke-static {v0, v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$1402(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 187
    :cond_ba
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 189
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 192
    move-result-object v0

    .line 193
    if-nez v0, :cond_c3

    .line 195
    return-void

    .line 196
    :cond_c3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_ca

    .line 202
    return-void

    .line 203
    :cond_ca
    const-string v0, "NAVIGATION_OPEN"

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_dc

    .line 211
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 213
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 216
    move-result-object p1

    .line 217
    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationOpenFinish()V

    .line 220
    goto :goto_10d

    .line 221
    :cond_dc
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_ec

    .line 227
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 229
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 232
    move-result-object p1

    .line 233
    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationCloseFinish()V

    .line 236
    goto :goto_10d

    .line 237
    :cond_ec
    const-string v0, "CONTENT_OPEN"

    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_fe

    .line 245
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 247
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 250
    move-result-object p1

    .line 251
    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentOpenFinish()V

    .line 254
    goto :goto_10d

    .line 255
    :cond_fe
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_10d

    .line 261
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 263
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 266
    move-result-object p1

    .line 267
    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentCloseFinish()V

    .line 270
    :cond_10d
    :goto_10d
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lmiuix/animation/listener/UpdateInfo;

    .line 11
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 13
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$300(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 16
    move-result v0

    .line 17
    const-string v1, "CONTENT_CLOSE"

    .line 19
    const-string v2, "NAVIGATION_CLOSE"

    .line 21
    const/4 v3, 0x1

    .line 22
    if-ne v3, v0, :cond_ab

    .line 24
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 26
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1300(Lmiuix/navigator/MiuixNavigationLayout;)Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_ab

    .line 32
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 34
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    .line 37
    move-result-object v0

    .line 38
    sget-object v4, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    .line 40
    const v5, 0x3e4ccccd  # 0.2f

    .line 43
    if-ne v0, v4, :cond_66

    .line 45
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 47
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1800(Lmiuix/navigator/MiuixNavigationLayout;)Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4d

    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_ab

    .line 59
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 62
    move-result v0

    .line 63
    cmpg-float v0, v0, v5

    .line 65
    if-gez v0, :cond_ab

    .line 67
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 69
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1900(Lmiuix/navigator/MiuixNavigationLayout;)V

    .line 72
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 74
    invoke-static {v0, v3}, Lmiuix/navigator/MiuixNavigationLayout;->access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 77
    goto :goto_ab

    .line 78
    :cond_4d
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_ab

    .line 84
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 87
    move-result v0

    .line 88
    cmpg-float v0, v0, v5

    .line 90
    if-gez v0, :cond_ab

    .line 92
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 94
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1900(Lmiuix/navigator/MiuixNavigationLayout;)V

    .line 97
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 99
    invoke-static {v0, v3}, Lmiuix/navigator/MiuixNavigationLayout;->access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 102
    goto :goto_ab

    .line 103
    :cond_66
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 105
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    .line 108
    move-result-object v0

    .line 109
    sget-object v4, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 111
    if-ne v0, v4, :cond_89

    .line 113
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_ab

    .line 119
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 122
    move-result v0

    .line 123
    cmpg-float v0, v0, v5

    .line 125
    if-gez v0, :cond_ab

    .line 127
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 129
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1900(Lmiuix/navigator/MiuixNavigationLayout;)V

    .line 132
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 134
    invoke-static {v0, v3}, Lmiuix/navigator/MiuixNavigationLayout;->access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 137
    goto :goto_ab

    .line 138
    :cond_89
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 140
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    .line 143
    move-result-object v0

    .line 144
    sget-object v4, Lmiuix/navigator/Navigator$Mode;->LC:Lmiuix/navigator/Navigator$Mode;

    .line 146
    if-ne v0, v4, :cond_ab

    .line 148
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_ab

    .line 154
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 157
    move-result v0

    .line 158
    cmpg-float v0, v0, v5

    .line 160
    if-gez v0, :cond_ab

    .line 162
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 164
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1900(Lmiuix/navigator/MiuixNavigationLayout;)V

    .line 167
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 169
    invoke-static {v0, v3}, Lmiuix/navigator/MiuixNavigationLayout;->access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    .line 172
    :cond_ab
    :goto_ab
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 174
    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 177
    move-result-object v0

    .line 178
    if-nez v0, :cond_b4

    .line 180
    return-void

    .line 181
    :cond_b4
    const-string v0, "OTHERS"

    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_bd

    .line 189
    return-void

    .line 190
    :cond_bd
    const-string v0, "NAVIGATION_OPEN"

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_e8

    .line 198
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_cc

    .line 204
    goto :goto_e8

    .line 205
    :cond_cc
    const-string v0, "CONTENT_OPEN"

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    move-result v0

    .line 211
    if-nez v0, :cond_da

    .line 213
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    move-result p1

    .line 217
    if-eqz p1, :cond_f5

    .line 219
    :cond_da
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 221
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 228
    move-result p2

    .line 229
    invoke-interface {p1, p2}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentRatioChanged(F)V

    .line 232
    goto :goto_f5

    .line 233
    :cond_e8
    :goto_e8
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 235
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 242
    move-result p2

    .line 243
    invoke-interface {p1, p2}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationRatioChanged(F)V

    .line 246
    :cond_f5
    :goto_f5
    return-void
.end method
