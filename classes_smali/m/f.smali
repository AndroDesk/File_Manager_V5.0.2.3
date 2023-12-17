.class public Lm/f;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/f$b;,
        Lm/f$a;
    }
.end annotation


# static fields
.field public static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final LOG_TAG:Ljava/lang/String; = "SupportMenuInflater"

.field public static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field public final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field public final mActionViewConstructorArguments:[Ljava/lang/Object;

.field public mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-class v2, Landroid/content/Context;

    .line 7
    aput-object v2, v0, v1

    .line 9
    sput-object v0, Lm/f;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 11
    sput-object v0, Lm/f;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lm/f;->mContext:Landroid/content/Context;

    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    const/4 v1, 0x0

    .line 10
    aput-object p1, v0, v1

    .line 12
    iput-object v0, p0, Lm/f;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lm/f;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 16
    return-void
.end method

.method private findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object p1

    .line 6
    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 8
    if-eqz v0, :cond_13

    .line 10
    check-cast p1, Landroid/content/ContextWrapper;

    .line 12
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lm/f;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    :cond_13
    return-object p1
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    new-instance v2, Lm/f$b;

    .line 7
    move-object/from16 v3, p3

    .line 9
    invoke-direct {v2, v0, v3}, Lm/f$b;-><init>(Lm/f;Landroid/view/Menu;)V

    .line 12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 15
    move-result v3

    .line 16
    :goto_f
    const/4 v4, 0x2

    .line 17
    const-string v5, "menu"

    .line 19
    const/4 v6, 0x1

    .line 20
    if-ne v3, v4, :cond_30

    .line 22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v7

    .line 30
    if-eqz v7, :cond_24

    .line 32
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 35
    move-result v3

    .line 36
    goto :goto_36

    .line 37
    :cond_24
    new-instance v1, Ljava/lang/RuntimeException;

    .line 39
    const-string v2, "Expecting menu, got "

    .line 41
    invoke-static {v2, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v1

    .line 49
    :cond_30
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 52
    move-result v3

    .line 53
    if-ne v3, v6, :cond_280

    .line 55
    :goto_36
    const/4 v7, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    move-object v11, v7

    .line 58
    move v9, v8

    .line 59
    move v10, v9

    .line 60
    :goto_3b
    if-nez v9, :cond_27f

    .line 62
    if-eq v3, v6, :cond_277

    .line 64
    const-string v12, "item"

    .line 66
    const-string v13, "group"

    .line 68
    if-eq v3, v4, :cond_bd

    .line 70
    const/4 v14, 0x3

    .line 71
    if-eq v3, v14, :cond_4a

    .line 73
    goto/16 :goto_247

    .line 75
    :cond_4a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    if-eqz v10, :cond_5c

    .line 81
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v14

    .line 85
    if-eqz v14, :cond_5c

    .line 87
    move-object/from16 v12, p1

    .line 89
    move-object v11, v7

    .line 90
    move v10, v8

    .line 91
    goto/16 :goto_271

    .line 93
    :cond_5c
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v13

    .line 97
    if-eqz v13, :cond_70

    .line 99
    iput v8, v2, Lm/f$b;->b:I

    .line 101
    iput v8, v2, Lm/f$b;->c:I

    .line 103
    iput v8, v2, Lm/f$b;->d:I

    .line 105
    iput v8, v2, Lm/f$b;->e:I

    .line 107
    iput-boolean v6, v2, Lm/f$b;->f:Z

    .line 109
    iput-boolean v6, v2, Lm/f$b;->g:Z

    .line 111
    goto/16 :goto_247

    .line 113
    :cond_70
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v12

    .line 117
    if-eqz v12, :cond_b2

    .line 119
    iget-boolean v3, v2, Lm/f$b;->h:Z

    .line 121
    if-nez v3, :cond_247

    .line 123
    iget-object v3, v2, Lm/f$b;->z:Lm0/b;

    .line 125
    if-eqz v3, :cond_9d

    .line 127
    invoke-virtual {v3}, Lm0/b;->a()Z

    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_9d

    .line 133
    iput-boolean v6, v2, Lm/f$b;->h:Z

    .line 135
    iget-object v3, v2, Lm/f$b;->a:Landroid/view/Menu;

    .line 137
    iget v12, v2, Lm/f$b;->b:I

    .line 139
    iget v13, v2, Lm/f$b;->i:I

    .line 141
    iget v14, v2, Lm/f$b;->j:I

    .line 143
    iget-object v15, v2, Lm/f$b;->k:Ljava/lang/CharSequence;

    .line 145
    invoke-interface {v3, v12, v13, v14, v15}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 148
    move-result-object v3

    .line 149
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v2, v3}, Lm/f$b;->b(Landroid/view/MenuItem;)V

    .line 156
    goto/16 :goto_247

    .line 158
    :cond_9d
    iput-boolean v6, v2, Lm/f$b;->h:Z

    .line 160
    iget-object v3, v2, Lm/f$b;->a:Landroid/view/Menu;

    .line 162
    iget v12, v2, Lm/f$b;->b:I

    .line 164
    iget v13, v2, Lm/f$b;->i:I

    .line 166
    iget v14, v2, Lm/f$b;->j:I

    .line 168
    iget-object v15, v2, Lm/f$b;->k:Ljava/lang/CharSequence;

    .line 170
    invoke-interface {v3, v12, v13, v14, v15}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v2, v3}, Lm/f$b;->b(Landroid/view/MenuItem;)V

    .line 177
    goto/16 :goto_247

    .line 179
    :cond_b2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_247

    .line 185
    move-object/from16 v12, p1

    .line 187
    move v9, v6

    .line 188
    goto/16 :goto_271

    .line 190
    :cond_bd
    if-eqz v10, :cond_c1

    .line 192
    goto/16 :goto_247

    .line 194
    :cond_c1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    move-result v13

    .line 202
    if-eqz v13, :cond_10a

    .line 204
    iget-object v3, v2, Lm/f$b;->E:Lm/f;

    .line 206
    iget-object v3, v3, Lm/f;->mContext:Landroid/content/Context;

    .line 208
    sget-object v12, Lh/j;->MenuGroup:[I

    .line 210
    invoke-virtual {v3, v1, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 213
    move-result-object v3

    .line 214
    sget v12, Lh/j;->MenuGroup_android_id:I

    .line 216
    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 219
    move-result v12

    .line 220
    iput v12, v2, Lm/f$b;->b:I

    .line 222
    sget v12, Lh/j;->MenuGroup_android_menuCategory:I

    .line 224
    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 227
    move-result v12

    .line 228
    iput v12, v2, Lm/f$b;->c:I

    .line 230
    sget v12, Lh/j;->MenuGroup_android_orderInCategory:I

    .line 232
    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 235
    move-result v12

    .line 236
    iput v12, v2, Lm/f$b;->d:I

    .line 238
    sget v12, Lh/j;->MenuGroup_android_checkableBehavior:I

    .line 240
    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 243
    move-result v12

    .line 244
    iput v12, v2, Lm/f$b;->e:I

    .line 246
    sget v12, Lh/j;->MenuGroup_android_visible:I

    .line 248
    invoke-virtual {v3, v12, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 251
    move-result v12

    .line 252
    iput-boolean v12, v2, Lm/f$b;->f:Z

    .line 254
    sget v12, Lh/j;->MenuGroup_android_enabled:I

    .line 256
    invoke-virtual {v3, v12, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 259
    move-result v12

    .line 260
    iput-boolean v12, v2, Lm/f$b;->g:Z

    .line 262
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 265
    goto/16 :goto_247

    .line 267
    :cond_10a
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    move-result v12

    .line 271
    if-eqz v12, :cond_24a

    .line 273
    iget-object v3, v2, Lm/f$b;->E:Lm/f;

    .line 275
    iget-object v3, v3, Lm/f;->mContext:Landroid/content/Context;

    .line 277
    sget-object v12, Lh/j;->MenuItem:[I

    .line 279
    new-instance v13, Landroidx/appcompat/widget/y0;

    .line 281
    invoke-virtual {v3, v1, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 284
    move-result-object v12

    .line 285
    invoke-direct {v13, v3, v12}, Landroidx/appcompat/widget/y0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 288
    sget v3, Lh/j;->MenuItem_android_id:I

    .line 290
    invoke-virtual {v13, v3, v8}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 293
    move-result v3

    .line 294
    iput v3, v2, Lm/f$b;->i:I

    .line 296
    sget v3, Lh/j;->MenuItem_android_menuCategory:I

    .line 298
    iget v12, v2, Lm/f$b;->c:I

    .line 300
    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/y0;->h(II)I

    .line 303
    move-result v3

    .line 304
    sget v12, Lh/j;->MenuItem_android_orderInCategory:I

    .line 306
    iget v14, v2, Lm/f$b;->d:I

    .line 308
    invoke-virtual {v13, v12, v14}, Landroidx/appcompat/widget/y0;->h(II)I

    .line 311
    move-result v12

    .line 312
    const/high16 v14, -0x10000

    .line 314
    and-int/2addr v3, v14

    .line 315
    const v14, 0xffff

    .line 318
    and-int/2addr v12, v14

    .line 319
    or-int/2addr v3, v12

    .line 320
    iput v3, v2, Lm/f$b;->j:I

    .line 322
    sget v3, Lh/j;->MenuItem_android_title:I

    .line 324
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    .line 327
    move-result-object v3

    .line 328
    iput-object v3, v2, Lm/f$b;->k:Ljava/lang/CharSequence;

    .line 330
    sget v3, Lh/j;->MenuItem_android_titleCondensed:I

    .line 332
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    .line 335
    move-result-object v3

    .line 336
    iput-object v3, v2, Lm/f$b;->l:Ljava/lang/CharSequence;

    .line 338
    sget v3, Lh/j;->MenuItem_android_icon:I

    .line 340
    invoke-virtual {v13, v3, v8}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 343
    move-result v3

    .line 344
    iput v3, v2, Lm/f$b;->m:I

    .line 346
    sget v3, Lh/j;->MenuItem_android_alphabeticShortcut:I

    .line 348
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    .line 351
    move-result-object v3

    .line 352
    if-nez v3, :cond_163

    .line 354
    move v3, v8

    .line 355
    goto :goto_167

    .line 356
    :cond_163
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    .line 359
    move-result v3

    .line 360
    :goto_167
    iput-char v3, v2, Lm/f$b;->n:C

    .line 362
    sget v3, Lh/j;->MenuItem_alphabeticModifiers:I

    .line 364
    const/16 v12, 0x1000

    .line 366
    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/y0;->h(II)I

    .line 369
    move-result v3

    .line 370
    iput v3, v2, Lm/f$b;->o:I

    .line 372
    sget v3, Lh/j;->MenuItem_android_numericShortcut:I

    .line 374
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    .line 377
    move-result-object v3

    .line 378
    if-nez v3, :cond_17d

    .line 380
    move v3, v8

    .line 381
    goto :goto_181

    .line 382
    :cond_17d
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    .line 385
    move-result v3

    .line 386
    :goto_181
    iput-char v3, v2, Lm/f$b;->p:C

    .line 388
    sget v3, Lh/j;->MenuItem_numericModifiers:I

    .line 390
    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/y0;->h(II)I

    .line 393
    move-result v3

    .line 394
    iput v3, v2, Lm/f$b;->q:I

    .line 396
    sget v3, Lh/j;->MenuItem_android_checkable:I

    .line 398
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 401
    move-result v12

    .line 402
    if-eqz v12, :cond_19a

    .line 404
    invoke-virtual {v13, v3, v8}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    .line 407
    move-result v3

    .line 408
    iput v3, v2, Lm/f$b;->r:I

    .line 410
    goto :goto_19e

    .line 411
    :cond_19a
    iget v3, v2, Lm/f$b;->e:I

    .line 413
    iput v3, v2, Lm/f$b;->r:I

    .line 415
    :goto_19e
    sget v3, Lh/j;->MenuItem_android_checked:I

    .line 417
    invoke-virtual {v13, v3, v8}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    .line 420
    move-result v3

    .line 421
    iput-boolean v3, v2, Lm/f$b;->s:Z

    .line 423
    sget v3, Lh/j;->MenuItem_android_visible:I

    .line 425
    iget-boolean v12, v2, Lm/f$b;->f:Z

    .line 427
    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    .line 430
    move-result v3

    .line 431
    iput-boolean v3, v2, Lm/f$b;->t:Z

    .line 433
    sget v3, Lh/j;->MenuItem_android_enabled:I

    .line 435
    iget-boolean v12, v2, Lm/f$b;->g:Z

    .line 437
    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    .line 440
    move-result v3

    .line 441
    iput-boolean v3, v2, Lm/f$b;->u:Z

    .line 443
    sget v3, Lh/j;->MenuItem_showAsAction:I

    .line 445
    const/4 v12, -0x1

    .line 446
    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/y0;->h(II)I

    .line 449
    move-result v3

    .line 450
    iput v3, v2, Lm/f$b;->v:I

    .line 452
    sget v3, Lh/j;->MenuItem_android_onClick:I

    .line 454
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    .line 457
    move-result-object v3

    .line 458
    iput-object v3, v2, Lm/f$b;->y:Ljava/lang/String;

    .line 460
    sget v3, Lh/j;->MenuItem_actionLayout:I

    .line 462
    invoke-virtual {v13, v3, v8}, Landroidx/appcompat/widget/y0;->i(II)I

    .line 465
    move-result v3

    .line 466
    iput v3, v2, Lm/f$b;->w:I

    .line 468
    sget v3, Lh/j;->MenuItem_actionViewClass:I

    .line 470
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    .line 473
    move-result-object v3

    .line 474
    iput-object v3, v2, Lm/f$b;->x:Ljava/lang/String;

    .line 476
    sget v3, Lh/j;->MenuItem_actionProviderClass:I

    .line 478
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    .line 481
    move-result-object v3

    .line 482
    if-eqz v3, :cond_1e5

    .line 484
    move v14, v6

    .line 485
    goto :goto_1e6

    .line 486
    :cond_1e5
    move v14, v8

    .line 487
    :goto_1e6
    if-eqz v14, :cond_1ff

    .line 489
    iget v15, v2, Lm/f$b;->w:I

    .line 491
    if-nez v15, :cond_1ff

    .line 493
    iget-object v15, v2, Lm/f$b;->x:Ljava/lang/String;

    .line 495
    if-nez v15, :cond_1ff

    .line 497
    sget-object v14, Lm/f;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 499
    iget-object v15, v2, Lm/f$b;->E:Lm/f;

    .line 501
    iget-object v15, v15, Lm/f;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 503
    invoke-virtual {v2, v3, v14, v15}, Lm/f$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    move-result-object v3

    .line 507
    check-cast v3, Lm0/b;

    .line 509
    iput-object v3, v2, Lm/f$b;->z:Lm0/b;

    .line 511
    goto :goto_20a

    .line 512
    :cond_1ff
    if-eqz v14, :cond_208

    .line 514
    const-string v3, "SupportMenuInflater"

    .line 516
    const-string v14, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 518
    invoke-static {v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_208
    iput-object v7, v2, Lm/f$b;->z:Lm0/b;

    .line 523
    :goto_20a
    sget v3, Lh/j;->MenuItem_contentDescription:I

    .line 525
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    .line 528
    move-result-object v3

    .line 529
    iput-object v3, v2, Lm/f$b;->A:Ljava/lang/CharSequence;

    .line 531
    sget v3, Lh/j;->MenuItem_tooltipText:I

    .line 533
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    .line 536
    move-result-object v3

    .line 537
    iput-object v3, v2, Lm/f$b;->B:Ljava/lang/CharSequence;

    .line 539
    sget v3, Lh/j;->MenuItem_iconTintMode:I

    .line 541
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 544
    move-result v14

    .line 545
    if-eqz v14, :cond_22f

    .line 547
    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/y0;->h(II)I

    .line 550
    move-result v3

    .line 551
    iget-object v12, v2, Lm/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 553
    invoke-static {v3, v12}, Landroidx/appcompat/widget/e0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 556
    move-result-object v3

    .line 557
    iput-object v3, v2, Lm/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 559
    goto :goto_231

    .line 560
    :cond_22f
    iput-object v7, v2, Lm/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 562
    :goto_231
    sget v3, Lh/j;->MenuItem_iconTint:I

    .line 564
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->l(I)Z

    .line 567
    move-result v12

    .line 568
    if-eqz v12, :cond_240

    .line 570
    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->b(I)Landroid/content/res/ColorStateList;

    .line 573
    move-result-object v3

    .line 574
    iput-object v3, v2, Lm/f$b;->C:Landroid/content/res/ColorStateList;

    .line 576
    goto :goto_242

    .line 577
    :cond_240
    iput-object v7, v2, Lm/f$b;->C:Landroid/content/res/ColorStateList;

    .line 579
    :goto_242
    invoke-virtual {v13}, Landroidx/appcompat/widget/y0;->n()V

    .line 582
    iput-boolean v8, v2, Lm/f$b;->h:Z

    .line 584
    :cond_247
    :goto_247
    move-object/from16 v12, p1

    .line 586
    goto :goto_271

    .line 587
    :cond_24a
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    move-result v12

    .line 591
    if-eqz v12, :cond_26d

    .line 593
    iput-boolean v6, v2, Lm/f$b;->h:Z

    .line 595
    iget-object v3, v2, Lm/f$b;->a:Landroid/view/Menu;

    .line 597
    iget v12, v2, Lm/f$b;->b:I

    .line 599
    iget v13, v2, Lm/f$b;->i:I

    .line 601
    iget v14, v2, Lm/f$b;->j:I

    .line 603
    iget-object v15, v2, Lm/f$b;->k:Ljava/lang/CharSequence;

    .line 605
    invoke-interface {v3, v12, v13, v14, v15}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 608
    move-result-object v3

    .line 609
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 612
    move-result-object v12

    .line 613
    invoke-virtual {v2, v12}, Lm/f$b;->b(Landroid/view/MenuItem;)V

    .line 616
    move-object/from16 v12, p1

    .line 618
    invoke-direct {v0, v12, v1, v3}, Lm/f;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 621
    goto :goto_271

    .line 622
    :cond_26d
    move-object/from16 v12, p1

    .line 624
    move-object v11, v3

    .line 625
    move v10, v6

    .line 626
    :goto_271
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 629
    move-result v3

    .line 630
    goto/16 :goto_3b

    .line 632
    :cond_277
    new-instance v1, Ljava/lang/RuntimeException;

    .line 634
    const-string v2, "Unexpected end of document"

    .line 636
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 639
    throw v1

    .line 640
    :cond_27f
    return-void

    .line 641
    :cond_280
    move-object/from16 v12, p1

    .line 643
    goto/16 :goto_f
.end method


# virtual methods
.method public getRealOwner()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/f;->mRealOwner:Ljava/lang/Object;

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-object v0, p0, Lm/f;->mContext:Landroid/content/Context;

    .line 7
    invoke-direct {p0, v0}, Lm/f;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lm/f;->mRealOwner:Ljava/lang/Object;

    .line 13
    :cond_c
    iget-object v0, p0, Lm/f;->mRealOwner:Ljava/lang/Object;

    .line 15
    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .registers 6

    .line 1
    const-string v0, "Error inflating menu XML"

    .line 3
    instance-of v1, p2, Lh0/a;

    .line 5
    if-nez v1, :cond_a

    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 10
    return-void

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :try_start_b
    iget-object v2, p0, Lm/f;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, v1, p1, p2}, Lm/f;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1c} :catch_2b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_24
    .catchall {:try_start_b .. :try_end_1c} :catchall_22

    .line 29
    if-eqz v1, :cond_21

    .line 31
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 34
    :cond_21
    return-void

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    goto :goto_32

    .line 37
    :catch_24
    move-exception p1

    .line 38
    :try_start_25
    new-instance p2, Landroid/view/InflateException;

    .line 40
    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    throw p2

    .line 44
    :catch_2b
    move-exception p1

    .line 45
    new-instance p2, Landroid/view/InflateException;

    .line 47
    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    throw p2
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_22

    .line 51
    :goto_32
    if-eqz v1, :cond_37

    .line 53
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 56
    :cond_37
    throw p1
.end method
