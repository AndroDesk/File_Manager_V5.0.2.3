.class public final Lm0/a$a;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lm0/a;


# direct methods
.method public constructor <init>(Lm0/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 4
    iput-object p1, p0, Lm0/a$a;->a:Lm0/a;

    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    .line 3
    invoke-virtual {v0, p1, p2}, Lm0/a;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    .line 3
    invoke-virtual {v0, p1}, Lm0/a;->getAccessibilityNodeProvider(Landroid/view/View;)Ln0/d;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object p1, p1, Ln0/d;->a:Ljava/lang/Object;

    .line 11
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    :goto_e
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    .line 3
    invoke-virtual {v0, p1, p2}, Lm0/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 20

    .line 1
    move-object/from16 v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 5
    const-class v2, Ljava/lang/Boolean;

    .line 7
    new-instance v3, Ln0/c;

    .line 9
    invoke-direct {v3, v1}, Ln0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 12
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 14
    sget v4, Lc0/b;->tag_screen_reader_focusable:I

    .line 16
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    const/16 v6, 0x1c

    .line 20
    const/4 v7, 0x1

    .line 21
    const/4 v8, 0x0

    .line 22
    if-lt v5, v6, :cond_19

    .line 24
    move v5, v7

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v5, v8

    .line 27
    :goto_1a
    const/4 v9, 0x0

    .line 28
    if-eqz v5, :cond_26

    .line 30
    invoke-static/range {p1 .. p1}, Lm0/g0$m;->d(Landroid/view/View;)Z

    .line 33
    move-result v4

    .line 34
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object v4

    .line 38
    goto :goto_32

    .line 39
    :cond_26
    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_31

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move-object v4, v9

    .line 51
    :goto_32
    check-cast v4, Ljava/lang/Boolean;

    .line 53
    if-eqz v4, :cond_3e

    .line 55
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_3e

    .line 61
    move v4, v7

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move v4, v8

    .line 64
    :goto_3f
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    if-lt v5, v6, :cond_47

    .line 68
    invoke-static {v1, v4}, Lmiuix/appcompat/app/f;->d(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 71
    goto :goto_4a

    .line 72
    :cond_47
    invoke-virtual {v3, v7, v4}, Ln0/c;->g(IZ)V

    .line 75
    :goto_4a
    sget v4, Lc0/b;->tag_accessibility_heading:I

    .line 77
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 79
    if-lt v10, v6, :cond_52

    .line 81
    move v10, v7

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    move v10, v8

    .line 84
    :goto_53
    if-eqz v10, :cond_5e

    .line 86
    invoke-static/range {p1 .. p1}, Lm0/g0$m;->c(Landroid/view/View;)Z

    .line 89
    move-result v2

    .line 90
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    move-result-object v2

    .line 94
    goto :goto_6b

    .line 95
    :cond_5e
    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_6a

    .line 105
    move-object v2, v4

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    move-object v2, v9

    .line 108
    :goto_6b
    check-cast v2, Ljava/lang/Boolean;

    .line 110
    if-eqz v2, :cond_77

    .line 112
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_77

    .line 118
    move v2, v7

    .line 119
    goto :goto_78

    .line 120
    :cond_77
    move v2, v8

    .line 121
    :goto_78
    if-lt v5, v6, :cond_7e

    .line 123
    invoke-static {v1, v2}, Lmiuix/appcompat/app/f;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 126
    goto :goto_82

    .line 127
    :cond_7e
    const/4 v4, 0x2

    .line 128
    invoke-virtual {v3, v4, v2}, Ln0/c;->g(IZ)V

    .line 131
    :goto_82
    sget v2, Lc0/b;->tag_accessibility_pane_title:I

    .line 133
    const-class v4, Ljava/lang/CharSequence;

    .line 135
    if-lt v5, v6, :cond_8a

    .line 137
    move v10, v7

    .line 138
    goto :goto_8b

    .line 139
    :cond_8a
    move v10, v8

    .line 140
    :goto_8b
    if-eqz v10, :cond_92

    .line 142
    invoke-static/range {p1 .. p1}, Lm0/g0$m;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 145
    move-result-object v2

    .line 146
    goto :goto_9e

    .line 147
    :cond_92
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_9d

    .line 157
    goto :goto_9e

    .line 158
    :cond_9d
    move-object v2, v9

    .line 159
    :goto_9e
    check-cast v2, Ljava/lang/CharSequence;

    .line 161
    if-lt v5, v6, :cond_a6

    .line 163
    invoke-static {v1, v2}, Lmiuix/appcompat/app/f;->c(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 166
    goto :goto_af

    .line 167
    :cond_a6
    invoke-static/range {p2 .. p2}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 170
    move-result-object v4

    .line 171
    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    .line 173
    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 176
    :goto_af
    sget v2, Lc0/b;->tag_state_description:I

    .line 178
    const-class v4, Ljava/lang/CharSequence;

    .line 180
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 182
    const/16 v10, 0x1e

    .line 184
    if-lt v6, v10, :cond_bb

    .line 186
    move v6, v7

    .line 187
    goto :goto_bc

    .line 188
    :cond_bb
    move v6, v8

    .line 189
    :goto_bc
    if-eqz v6, :cond_c3

    .line 191
    invoke-static/range {p1 .. p1}, Lm0/g0$o;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 194
    move-result-object v2

    .line 195
    goto :goto_cf

    .line 196
    :cond_c3
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 203
    move-result v4

    .line 204
    if-eqz v4, :cond_ce

    .line 206
    goto :goto_cf

    .line 207
    :cond_ce
    move-object v2, v9

    .line 208
    :goto_cf
    check-cast v2, Ljava/lang/CharSequence;

    .line 210
    sget v4, Li0/a;->a:I

    .line 212
    if-lt v5, v10, :cond_d6

    .line 214
    goto :goto_d7

    .line 215
    :cond_d6
    move v7, v8

    .line 216
    :goto_d7
    if-eqz v7, :cond_dd

    .line 218
    invoke-static {v1, v2}, Landroidx/core/content/a;->t(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 221
    goto :goto_e6

    .line 222
    :cond_dd
    invoke-static/range {p2 .. p2}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 225
    move-result-object v4

    .line 226
    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    .line 228
    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 231
    :goto_e6
    move-object/from16 v2, p0

    .line 233
    iget-object v4, v2, Lm0/a$a;->a:Lm0/a;

    .line 235
    invoke-virtual {v4, v0, v3}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 241
    move-result-object v4

    .line 242
    const/16 v6, 0x1a

    .line 244
    if-ge v5, v6, :cond_20c

    .line 246
    invoke-static/range {p2 .. p2}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 249
    move-result-object v5

    .line 250
    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 252
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 255
    invoke-static/range {p2 .. p2}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 258
    move-result-object v5

    .line 259
    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    .line 261
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 264
    invoke-static/range {p2 .. p2}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 267
    move-result-object v5

    .line 268
    const-string v10, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    .line 270
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 273
    invoke-static/range {p2 .. p2}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 276
    move-result-object v1

    .line 277
    const-string v5, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    .line 279
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 282
    sget v1, Lc0/b;->tag_accessibility_clickable_spans:I

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Landroid/util/SparseArray;

    .line 290
    if-eqz v1, :cond_15c

    .line 292
    new-instance v11, Ljava/util/ArrayList;

    .line 294
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 297
    move v12, v8

    .line 298
    :goto_129
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 301
    move-result v13

    .line 302
    if-ge v12, v13, :cond_145

    .line 304
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 307
    move-result-object v13

    .line 308
    check-cast v13, Ljava/lang/ref/WeakReference;

    .line 310
    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 313
    move-result-object v13

    .line 314
    if-nez v13, :cond_142

    .line 316
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    move-result-object v13

    .line 320
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_142
    add-int/lit8 v12, v12, 0x1

    .line 325
    goto :goto_129

    .line 326
    :cond_145
    move v12, v8

    .line 327
    :goto_146
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 330
    move-result v13

    .line 331
    if-ge v12, v13, :cond_15c

    .line 333
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 336
    move-result-object v13

    .line 337
    check-cast v13, Ljava/lang/Integer;

    .line 339
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 342
    move-result v13

    .line 343
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->remove(I)V

    .line 346
    add-int/lit8 v12, v12, 0x1

    .line 348
    goto :goto_146

    .line 349
    :cond_15c
    instance-of v1, v4, Landroid/text/Spanned;

    .line 351
    if-eqz v1, :cond_170

    .line 353
    move-object v1, v4

    .line 354
    check-cast v1, Landroid/text/Spanned;

    .line 356
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 359
    move-result v9

    .line 360
    const-class v11, Landroid/text/style/ClickableSpan;

    .line 362
    invoke-interface {v1, v8, v9, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 365
    move-result-object v1

    .line 366
    move-object v9, v1

    .line 367
    check-cast v9, [Landroid/text/style/ClickableSpan;

    .line 369
    :cond_170
    if-eqz v9, :cond_20c

    .line 371
    array-length v1, v9

    .line 372
    if-lez v1, :cond_20c

    .line 374
    iget-object v1, v3, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 376
    invoke-static {v1}, Ln0/c$b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    .line 379
    move-result-object v1

    .line 380
    sget v11, Lc0/b;->accessibility_action_clickable_span:I

    .line 382
    const-string v12, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    .line 384
    invoke-virtual {v1, v12, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 387
    sget v1, Lc0/b;->tag_accessibility_clickable_spans:I

    .line 389
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 392
    move-result-object v11

    .line 393
    check-cast v11, Landroid/util/SparseArray;

    .line 395
    if-nez v11, :cond_194

    .line 397
    new-instance v11, Landroid/util/SparseArray;

    .line 399
    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 402
    invoke-virtual {v0, v1, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 405
    :cond_194
    move v1, v8

    .line 406
    :goto_195
    array-length v12, v9

    .line 407
    if-ge v1, v12, :cond_20c

    .line 409
    aget-object v12, v9, v1

    .line 411
    move v13, v8

    .line 412
    :goto_19b
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 415
    move-result v14

    .line 416
    if-ge v13, v14, :cond_1bb

    .line 418
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 421
    move-result-object v14

    .line 422
    check-cast v14, Ljava/lang/ref/WeakReference;

    .line 424
    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 427
    move-result-object v14

    .line 428
    check-cast v14, Landroid/text/style/ClickableSpan;

    .line 430
    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 433
    move-result v14

    .line 434
    if-eqz v14, :cond_1b8

    .line 436
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 439
    move-result v12

    .line 440
    goto :goto_1c1

    .line 441
    :cond_1b8
    add-int/lit8 v13, v13, 0x1

    .line 443
    goto :goto_19b

    .line 444
    :cond_1bb
    sget v12, Ln0/c;->d:I

    .line 446
    add-int/lit8 v13, v12, 0x1

    .line 448
    sput v13, Ln0/c;->d:I

    .line 450
    :goto_1c1
    new-instance v13, Ljava/lang/ref/WeakReference;

    .line 452
    aget-object v14, v9, v1

    .line 454
    invoke-direct {v13, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 457
    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    aget-object v13, v9, v1

    .line 462
    move-object v14, v4

    .line 463
    check-cast v14, Landroid/text/Spanned;

    .line 465
    invoke-virtual {v3, v6}, Ln0/c;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 468
    move-result-object v15

    .line 469
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 472
    move-result v16

    .line 473
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 476
    move-result-object v8

    .line 477
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-virtual {v3, v7}, Ln0/c;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 483
    move-result-object v8

    .line 484
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 487
    move-result v15

    .line 488
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 491
    move-result-object v15

    .line 492
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-virtual {v3, v10}, Ln0/c;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 498
    move-result-object v8

    .line 499
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 502
    move-result v13

    .line 503
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 506
    move-result-object v13

    .line 507
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    invoke-virtual {v3, v5}, Ln0/c;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 513
    move-result-object v8

    .line 514
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 517
    move-result-object v12

    .line 518
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    add-int/lit8 v1, v1, 0x1

    .line 523
    const/4 v8, 0x0

    .line 524
    goto :goto_195

    .line 525
    :cond_20c
    invoke-static/range {p1 .. p1}, Lm0/a;->getActionList(Landroid/view/View;)Ljava/util/List;

    .line 528
    move-result-object v0

    .line 529
    const/4 v8, 0x0

    .line 530
    :goto_211
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 533
    move-result v1

    .line 534
    if-ge v8, v1, :cond_223

    .line 536
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 539
    move-result-object v1

    .line 540
    check-cast v1, Ln0/c$a;

    .line 542
    invoke-virtual {v3, v1}, Ln0/c;->b(Ln0/c$a;)V

    .line 545
    add-int/lit8 v8, v8, 0x1

    .line 547
    goto :goto_211

    .line 548
    :cond_223
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    .line 3
    invoke-virtual {v0, p1, p2}, Lm0/a;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lm0/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lm0/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    .line 3
    invoke-virtual {v0, p1, p2}, Lm0/a;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 6
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm0/a$a;->a:Lm0/a;

    .line 3
    invoke-virtual {v0, p1, p2}, Lm0/a;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    return-void
.end method
