.class public final Landroidx/constraintlayout/motion/widget/a;
.super Ljava/lang/Object;
.source "MotionScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/a$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public b:Lz/f;

.field public c:Landroidx/constraintlayout/motion/widget/a$b;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroidx/constraintlayout/motion/widget/a$b;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/c;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/util/SparseIntArray;

.field public j:I

.field public k:I

.field public l:Landroid/view/MotionEvent;

.field public m:Z

.field public n:Z

.field public o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

.field public p:Z

.field public final q:Landroidx/constraintlayout/motion/widget/d;

.field public r:F

.field public s:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .registers 15

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->b:Lz/f;

    .line 7
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->e:Landroidx/constraintlayout/motion/widget/a$b;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/a;->f:Ljava/util/ArrayList;

    .line 25
    new-instance v1, Landroid/util/SparseArray;

    .line 27
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 30
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    .line 32
    new-instance v1, Ljava/util/HashMap;

    .line 34
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 37
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/a;->h:Ljava/util/HashMap;

    .line 39
    new-instance v1, Landroid/util/SparseIntArray;

    .line 41
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 44
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/a;->i:Landroid/util/SparseIntArray;

    .line 46
    const/16 v1, 0x190

    .line 48
    iput v1, p0, Landroidx/constraintlayout/motion/widget/a;->j:I

    .line 50
    const/4 v1, 0x0

    .line 51
    iput v1, p0, Landroidx/constraintlayout/motion/widget/a;->k:I

    .line 53
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/a;->m:Z

    .line 55
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/a;->n:Z

    .line 57
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 59
    new-instance v2, Landroidx/constraintlayout/motion/widget/d;

    .line 61
    invoke-direct {v2, p2}, Landroidx/constraintlayout/motion/widget/d;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 64
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/a;->q:Landroidx/constraintlayout/motion/widget/d;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 73
    move-result-object p2

    .line 74
    :try_start_49
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 77
    move-result v2

    .line 78
    move-object v3, v0

    .line 79
    :goto_4e
    const/4 v4, 0x1

    .line 80
    if-eq v2, v4, :cond_1a5

    .line 82
    if-eqz v2, :cond_193

    .line 84
    const/4 v5, 0x2

    .line 85
    if-eq v2, v5, :cond_58

    .line 87
    goto/16 :goto_196

    .line 89
    :cond_58
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 96
    move-result v6
    :try_end_60
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_60} :catch_1a1
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_60} :catch_19c

    .line 97
    const/4 v7, 0x4

    .line 98
    const/4 v8, 0x5

    .line 99
    const-string v9, "MotionScene"

    .line 101
    const/4 v10, -0x1

    .line 102
    sparse-switch v6, :sswitch_data_1be

    .line 105
    goto/16 :goto_ce

    .line 107
    :sswitch_6a
    :try_start_6a
    const-string v5, "include"

    .line 109
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_ce

    .line 115
    const/4 v5, 0x6

    .line 116
    goto/16 :goto_cf

    .line 118
    :sswitch_75
    const-string v5, "StateSet"

    .line 120
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_ce

    .line 126
    move v5, v7

    .line 127
    goto :goto_cf

    .line 128
    :sswitch_7f
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_ce

    .line 134
    move v5, v1

    .line 135
    goto :goto_cf

    .line 136
    :sswitch_87
    const-string v6, "OnSwipe"

    .line 138
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_ce

    .line 144
    goto :goto_cf

    .line 145
    :sswitch_90
    const-string v5, "OnClick"

    .line 147
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_ce

    .line 153
    const/4 v5, 0x3

    .line 154
    goto :goto_cf

    .line 155
    :sswitch_9a
    const-string v5, "Transition"

    .line 157
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_ce

    .line 163
    move v5, v4

    .line 164
    goto :goto_cf

    .line 165
    :sswitch_a4
    const-string v5, "ViewTransition"

    .line 167
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_ce

    .line 173
    const/16 v5, 0x9

    .line 175
    goto :goto_cf

    .line 176
    :sswitch_af
    const-string v5, "Include"

    .line 178
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_ce

    .line 184
    const/4 v5, 0x7

    .line 185
    goto :goto_cf

    .line 186
    :sswitch_b9
    const-string v5, "KeyFrameSet"

    .line 188
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_ce

    .line 194
    const/16 v5, 0x8

    .line 196
    goto :goto_cf

    .line 197
    :sswitch_c4
    const-string v5, "ConstraintSet"

    .line 199
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_ce

    .line 205
    move v5, v8

    .line 206
    goto :goto_cf

    .line 207
    :cond_ce
    :goto_ce
    move v5, v10

    .line 208
    :goto_cf
    packed-switch v5, :pswitch_data_1e8

    .line 211
    goto/16 :goto_196

    .line 213
    :pswitch_d4  #0x9
    new-instance v2, Landroidx/constraintlayout/motion/widget/c;

    .line 215
    invoke-direct {v2, p1, p2}, Landroidx/constraintlayout/motion/widget/c;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 218
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/a;->q:Landroidx/constraintlayout/motion/widget/d;

    .line 220
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/d;->b:Ljava/util/ArrayList;

    .line 222
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iput-object v0, v5, Landroidx/constraintlayout/motion/widget/d;->c:Ljava/util/HashSet;

    .line 227
    iget v5, v2, Landroidx/constraintlayout/motion/widget/c;->b:I

    .line 229
    if-ne v5, v7, :cond_eb

    .line 231
    invoke-static {v2, v4}, Landroidx/constraintlayout/motion/widget/d;->a(Landroidx/constraintlayout/motion/widget/c;Z)V

    .line 234
    goto/16 :goto_196

    .line 236
    :cond_eb
    if-ne v5, v8, :cond_196

    .line 238
    invoke-static {v2, v1}, Landroidx/constraintlayout/motion/widget/d;->a(Landroidx/constraintlayout/motion/widget/c;Z)V

    .line 241
    goto/16 :goto_196

    .line 243
    :pswitch_f2  #0x8
    new-instance v2, Ly/g;

    .line 245
    invoke-direct {v2, p1, p2}, Ly/g;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 248
    if-eqz v3, :cond_196

    .line 250
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/a$b;->k:Ljava/util/ArrayList;

    .line 252
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    goto/16 :goto_196

    .line 257
    :pswitch_100  #0x6, 0x7
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/a;->h(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 260
    goto/16 :goto_196

    .line 262
    :pswitch_105  #0x5
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/a;->f(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)I

    .line 265
    goto/16 :goto_196

    .line 267
    :pswitch_10a  #0x4
    new-instance v2, Lz/f;

    .line 269
    invoke-direct {v2, p1, p2}, Lz/f;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 272
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/a;->b:Lz/f;

    .line 274
    goto/16 :goto_196

    .line 276
    :pswitch_113  #0x3
    if-eqz v3, :cond_196

    .line 278
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    .line 280
    new-instance v4, Landroidx/constraintlayout/motion/widget/a$b$a;

    .line 282
    invoke-direct {v4, p1, v3, p2}, Landroidx/constraintlayout/motion/widget/a$b$a;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/a$b;Landroid/content/res/XmlResourceParser;)V

    .line 285
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    goto/16 :goto_196

    .line 290
    :pswitch_121  #0x2
    if-nez v3, :cond_150

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 299
    move-result-object v2

    .line 300
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 303
    move-result v4

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    .line 306
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    const-string v6, " OnSwipe ("

    .line 311
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v2, ".xml:"

    .line 319
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string v2, ")"

    .line 327
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    move-result-object v2

    .line 334
    invoke-static {v9, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_150
    if-eqz v3, :cond_196

    .line 339
    new-instance v2, Landroidx/constraintlayout/motion/widget/b;

    .line 341
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 343
    invoke-direct {v2, p1, v4, p2}, Landroidx/constraintlayout/motion/widget/b;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/content/res/XmlResourceParser;)V

    .line 346
    iput-object v2, v3, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 348
    goto :goto_196

    .line 349
    :pswitch_15c  #0x1
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    .line 351
    new-instance v3, Landroidx/constraintlayout/motion/widget/a$b;

    .line 353
    invoke-direct {v3, p0, p1, p2}, Landroidx/constraintlayout/motion/widget/a$b;-><init>(Landroidx/constraintlayout/motion/widget/a;Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 356
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 361
    if-nez v2, :cond_179

    .line 363
    iget-boolean v2, v3, Landroidx/constraintlayout/motion/widget/a$b;->b:Z

    .line 365
    if-nez v2, :cond_179

    .line 367
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 369
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 371
    if-eqz v2, :cond_179

    .line 373
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/a;->p:Z

    .line 375
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/b;->c(Z)V

    .line 378
    :cond_179
    iget-boolean v2, v3, Landroidx/constraintlayout/motion/widget/a$b;->b:Z

    .line 380
    if-eqz v2, :cond_196

    .line 382
    iget v2, v3, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 384
    if-ne v2, v10, :cond_184

    .line 386
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/a;->e:Landroidx/constraintlayout/motion/widget/a$b;

    .line 388
    goto :goto_189

    .line 389
    :cond_184
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/a;->f:Ljava/util/ArrayList;

    .line 391
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :goto_189
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    .line 396
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 399
    goto :goto_196

    .line 400
    :pswitch_18f  #0x0
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/a;->i(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 403
    goto :goto_196

    .line 404
    :cond_193
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 407
    :cond_196
    :goto_196
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 410
    move-result v2
    :try_end_19a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6a .. :try_end_19a} :catch_1a1
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_19a} :catch_19c

    .line 411
    goto/16 :goto_4e

    .line 413
    :catch_19c
    move-exception p1

    .line 414
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 417
    goto :goto_1a5

    .line 418
    :catch_1a1
    move-exception p1

    .line 419
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 422
    :cond_1a5
    :goto_1a5
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    .line 424
    sget p2, Lz/c;->motion_base:I

    .line 426
    new-instance p3, Landroidx/constraintlayout/widget/c;

    .line 428
    invoke-direct {p3}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 431
    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 434
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/a;->h:Ljava/util/HashMap;

    .line 436
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    move-result-object p2

    .line 440
    const-string p3, "motion_base"

    .line 442
    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    return-void

    .line 446
    nop

    .line 447
    :sswitch_data_1be
    .sparse-switch
        -0x50764adb -> :sswitch_c4
        -0x49df9cec -> :sswitch_b9
        -0x28fe1378 -> :sswitch_af
        0x3b205fa -> :sswitch_a4
        0x100d4975 -> :sswitch_9a
        0x12a432c9 -> :sswitch_90
        0x138aac7b -> :sswitch_87
        0x2f487256 -> :sswitch_7f
        0x526c4e31 -> :sswitch_75
        0x73c954a8 -> :sswitch_6a
    .end sparse-switch

    .line 489
    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_18f  #00000000
        :pswitch_15c  #00000001
        :pswitch_121  #00000002
        :pswitch_113  #00000003
        :pswitch_10a  #00000004
        :pswitch_105  #00000005
        :pswitch_100  #00000006
        :pswitch_100  #00000007
        :pswitch_f2  #00000008
        :pswitch_d4  #00000009
    .end packed-switch
.end method


# virtual methods
.method public final a(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    move v0, v1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move v0, v2

    .line 10
    :goto_9
    if-eqz v0, :cond_c

    .line 12
    return v2

    .line 13
    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_aa

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/constraintlayout/motion/widget/a$b;

    .line 31
    iget v4, v3, Landroidx/constraintlayout/motion/widget/a$b;->n:I

    .line 33
    if-nez v4, :cond_23

    .line 35
    goto :goto_12

    .line 36
    :cond_23
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 38
    const/4 v6, 0x2

    .line 39
    if-ne v5, v3, :cond_33

    .line 41
    iget v5, v5, Landroidx/constraintlayout/motion/widget/a$b;->q:I

    .line 43
    and-int/2addr v5, v6

    .line 44
    if-eqz v5, :cond_2f

    .line 46
    move v5, v1

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move v5, v2

    .line 49
    :goto_30
    if-eqz v5, :cond_33

    .line 51
    goto :goto_12

    .line 52
    :cond_33
    iget v5, v3, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 54
    if-ne p1, v5, :cond_6f

    .line 56
    const/4 v5, 0x4

    .line 57
    if-eq v4, v5, :cond_3c

    .line 59
    if-ne v4, v6, :cond_6f

    .line 61
    :cond_3c
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 63
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 66
    invoke-virtual {p2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    .line 69
    iget v0, v3, Landroidx/constraintlayout/motion/widget/a$b;->n:I

    .line 71
    if-ne v0, v5, :cond_56

    .line 73
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i()V

    .line 76
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 78
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 81
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 83
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 86
    goto :goto_6e

    .line 87
    :cond_56
    const/high16 v0, 0x3f800000  # 1.0f

    .line 89
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 92
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b(Z)V

    .line 95
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 97
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 100
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 102
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 105
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 108
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e()V

    .line 111
    :goto_6e
    return v1

    .line 112
    :cond_6f
    iget v5, v3, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 114
    if-ne p1, v5, :cond_12

    .line 116
    const/4 v5, 0x3

    .line 117
    if-eq v4, v5, :cond_78

    .line 119
    if-ne v4, v1, :cond_12

    .line 121
    :cond_78
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 123
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 126
    invoke-virtual {p2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/a$b;)V

    .line 129
    iget v0, v3, Landroidx/constraintlayout/motion/widget/a$b;->n:I

    .line 131
    const/4 v2, 0x0

    .line 132
    if-ne v0, v5, :cond_93

    .line 134
    invoke-virtual {p2, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    .line 137
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 139
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 142
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 144
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 147
    goto :goto_a9

    .line 148
    :cond_93
    invoke-virtual {p2, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 151
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b(Z)V

    .line 154
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 156
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 159
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 161
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 164
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 167
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e()V

    .line 170
    :goto_a9
    return v1

    .line 171
    :cond_aa
    return v2
.end method

.method public final b(I)Landroidx/constraintlayout/widget/c;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->b:Lz/f;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, p1}, Lz/f;->a(I)I

    .line 9
    move-result v0

    .line 10
    if-eq v0, v1, :cond_c

    .line 12
    move p1, v0

    .line 13
    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_43

    .line 21
    const-string v0, "Warning could not find ConstraintSet id/"

    .line 23
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1, p1}, Ly/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string p1, " In MotionScene"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    const-string v0, "MotionScene"

    .line 51
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 60
    move-result v0

    .line 61
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroidx/constraintlayout/widget/c;

    .line 67
    goto :goto_4b

    .line 68
    :cond_43
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    .line 70
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Landroidx/constraintlayout/widget/c;

    .line 76
    :goto_4b
    return-object p1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;)I
    .registers 8

    .line 1
    const-string v0, "/"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_24

    .line 11
    const/16 v0, 0x2f

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    .line 16
    move-result v0

    .line 17
    add-int/2addr v0, v2

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const-string v4, "id"

    .line 32
    invoke-virtual {v3, v0, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    move-result p1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move p1, v1

    .line 38
    :goto_25
    if-ne p1, v1, :cond_3d

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 43
    move-result v0

    .line 44
    if-le v0, v2, :cond_36

    .line 46
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    move-result p1

    .line 54
    goto :goto_3d

    .line 55
    :cond_36
    const-string p2, "MotionScene"

    .line 57
    const-string v0, "error in parsing id"

    .line 59
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_3d
    :goto_3d
    return p1
.end method

.method public final d()Landroid/view/animation/Interpolator;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 3
    iget v1, v0, Landroidx/constraintlayout/motion/widget/a$b;->e:I

    .line 5
    const/4 v2, -0x2

    .line 6
    if-eq v1, v2, :cond_4d

    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq v1, v2, :cond_41

    .line 11
    if-eqz v1, :cond_3b

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eq v1, v0, :cond_35

    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq v1, v0, :cond_2f

    .line 19
    const/4 v0, 0x4

    .line 20
    if-eq v1, v0, :cond_29

    .line 22
    const/4 v0, 0x5

    .line 23
    if-eq v1, v0, :cond_23

    .line 25
    const/4 v0, 0x6

    .line 26
    if-eq v1, v0, :cond_1d

    .line 28
    const/4 v0, 0x0

    .line 29
    return-object v0

    .line 30
    :cond_1d
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    .line 32
    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    .line 35
    return-object v0

    .line 36
    :cond_23
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    .line 38
    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 41
    return-object v0

    .line 42
    :cond_29
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    .line 44
    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 47
    return-object v0

    .line 48
    :cond_2f
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 50
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 53
    return-object v0

    .line 54
    :cond_35
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 56
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 59
    return-object v0

    .line 60
    :cond_3b
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 62
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 65
    return-object v0

    .line 66
    :cond_41
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a$b;->f:Ljava/lang/String;

    .line 68
    invoke-static {v0}, Lu/c;->c(Ljava/lang/String;)Lu/c;

    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Landroidx/constraintlayout/motion/widget/a$a;

    .line 74
    invoke-direct {v1, v0}, Landroidx/constraintlayout/motion/widget/a$a;-><init>(Lu/c;)V

    .line 77
    return-object v1

    .line 78
    :cond_4d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 86
    iget v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->g:I

    .line 88
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method

.method public final e()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    iget v0, v0, Landroidx/constraintlayout/motion/widget/b;->r:F

    .line 11
    return v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public final f(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)I
    .registers 13

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/c;

    .line 3
    invoke-direct {v0}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/c;->d:Z

    .line 9
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 12
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    move v4, v1

    .line 15
    move v5, v3

    .line 16
    move v6, v5

    .line 17
    :goto_10
    if-ge v4, v2, :cond_7c

    .line 19
    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 22
    move-result-object v7

    .line 23
    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 26
    move-result-object v8

    .line 27
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 33
    move-result v9

    .line 34
    sparse-switch v9, :sswitch_data_92

    .line 37
    :goto_24
    move v7, v3

    .line 38
    goto :goto_46

    .line 39
    :sswitch_26
    const-string v9, "id"

    .line 41
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v7

    .line 45
    if-nez v7, :cond_2f

    .line 47
    goto :goto_24

    .line 48
    :cond_2f
    const/4 v7, 0x2

    .line 49
    goto :goto_46

    .line 50
    :sswitch_31
    const-string v9, "constraintRotate"

    .line 52
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v7

    .line 56
    if-nez v7, :cond_3a

    .line 58
    goto :goto_24

    .line 59
    :cond_3a
    const/4 v7, 0x1

    .line 60
    goto :goto_46

    .line 61
    :sswitch_3c
    const-string v9, "deriveConstraintsFrom"

    .line 63
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v7

    .line 67
    if-nez v7, :cond_45

    .line 69
    goto :goto_24

    .line 70
    :cond_45
    move v7, v1

    .line 71
    :goto_46
    packed-switch v7, :pswitch_data_a0

    .line 74
    goto :goto_79

    .line 75
    :pswitch_4a  #0x2
    invoke-virtual {p0, p1, v8}, Landroidx/constraintlayout/motion/widget/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 78
    move-result v5

    .line 79
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/a;->h:Ljava/util/HashMap;

    .line 81
    const/16 v9, 0x2f

    .line 83
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    .line 86
    move-result v9

    .line 87
    if-gez v9, :cond_59

    .line 89
    goto :goto_5f

    .line 90
    :cond_59
    add-int/lit8 v9, v9, 0x1

    .line 92
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 95
    move-result-object v8

    .line 96
    :goto_5f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v9

    .line 100
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p1, v5}, Ly/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 106
    move-result-object v7

    .line 107
    iput-object v7, v0, Landroidx/constraintlayout/widget/c;->a:Ljava/lang/String;

    .line 109
    goto :goto_79

    .line 110
    :pswitch_6d  #0x1
    :try_start_6d
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_70} :catch_71

    .line 113
    goto :goto_79

    .line 114
    :catch_71
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    goto :goto_79

    .line 118
    :pswitch_75  #0x0
    invoke-virtual {p0, p1, v8}, Landroidx/constraintlayout/motion/widget/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 121
    move-result v6

    .line 122
    :goto_79
    add-int/lit8 v4, v4, 0x1

    .line 124
    goto :goto_10

    .line 125
    :cond_7c
    if-eq v5, v3, :cond_91

    .line 127
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 129
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:I

    .line 131
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/c;->m(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 134
    if-eq v6, v3, :cond_8c

    .line 136
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/a;->i:Landroid/util/SparseIntArray;

    .line 138
    invoke-virtual {p1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 141
    :cond_8c
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    .line 143
    invoke-virtual {p1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    :cond_91
    return v5

    .line 147
    :sswitch_data_92
    .sparse-switch
        -0x59328327 -> :sswitch_3c
        -0x44bbba68 -> :sswitch_31
        0xd1b -> :sswitch_26
    .end sparse-switch

    .line 161
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_75  #00000000
        :pswitch_6d  #00000001
        :pswitch_4a  #00000002
    .end packed-switch
.end method

.method public final g(Landroid/content/Context;I)I
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 8
    move-result-object p2

    .line 9
    :try_start_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 12
    move-result v0

    .line 13
    :goto_c
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_31

    .line 16
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x2

    .line 21
    if-ne v2, v0, :cond_23

    .line 23
    const-string v0, "ConstraintSet"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_23

    .line 31
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/a;->f(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)I

    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_23
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 39
    move-result v0
    :try_end_27
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_27} :catch_2d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_27} :catch_28

    .line 40
    goto :goto_c

    .line 41
    :catch_28
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    goto :goto_31

    .line 46
    :catch_2d
    move-exception p1

    .line 47
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 50
    :cond_31
    :goto_31
    const/4 p1, -0x1

    .line 51
    return p1
.end method

.method public final h(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 7

    .line 1
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Lz/d;->include:[I

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_f
    if-ge v1, v0, :cond_24

    .line 18
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 21
    move-result v2

    .line 22
    sget v3, Lz/d;->include_constraintSet:I

    .line 24
    if-ne v2, v3, :cond_21

    .line 26
    const/4 v3, -0x1

    .line 27
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 30
    move-result v2

    .line 31
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/motion/widget/a;->g(Landroid/content/Context;I)I

    .line 34
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_f

    .line 37
    :cond_24
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    return-void
.end method

.method public final i(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 7

    .line 1
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Lz/d;->MotionScene:[I

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 14
    move-result p2

    .line 15
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    :goto_10
    if-ge v1, p2, :cond_36

    .line 19
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 22
    move-result v2

    .line 23
    sget v3, Lz/d;->MotionScene_defaultDuration:I

    .line 25
    if-ne v2, v3, :cond_29

    .line 27
    iget v3, p0, Landroidx/constraintlayout/motion/widget/a;->j:I

    .line 29
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 32
    move-result v2

    .line 33
    iput v2, p0, Landroidx/constraintlayout/motion/widget/a;->j:I

    .line 35
    const/16 v3, 0x8

    .line 37
    if-ge v2, v3, :cond_33

    .line 39
    iput v3, p0, Landroidx/constraintlayout/motion/widget/a;->j:I

    .line 41
    goto :goto_33

    .line 42
    :cond_29
    sget v3, Lz/d;->MotionScene_layoutDuringTransition:I

    .line 44
    if-ne v2, v3, :cond_33

    .line 46
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 49
    move-result v2

    .line 50
    iput v2, p0, Landroidx/constraintlayout/motion/widget/a;->k:I

    .line 52
    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    .line 54
    goto :goto_10

    .line 55
    :cond_36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method

.method public final j(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/constraintlayout/widget/c;

    .line 9
    iget-object v1, v0, Landroidx/constraintlayout/widget/c;->a:Ljava/lang/String;

    .line 11
    iput-object v1, v0, Landroidx/constraintlayout/widget/c;->b:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/a;->i:Landroid/util/SparseIntArray;

    .line 15
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 18
    move-result p1

    .line 19
    if-lez p1, :cond_10c

    .line 21
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/a;->j(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 24
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroidx/constraintlayout/widget/c;

    .line 32
    if-nez p2, :cond_3e

    .line 34
    const-string p2, "ERROR! invalid deriveConstraintsFrom: @id/"

    .line 36
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object p2

    .line 40
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, p1}, Ly/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    const-string p2, "MotionScene"

    .line 59
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 63
    :cond_3e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    iget-object v1, v0, Landroidx/constraintlayout/widget/c;->b:Ljava/lang/String;

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "/"

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p2, Landroidx/constraintlayout/widget/c;->b:Ljava/lang/String;

    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    iput-object p1, v0, Landroidx/constraintlayout/widget/c;->b:Ljava/lang/String;

    .line 89
    iget-object p1, p2, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    .line 91
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    move-result-object p1

    .line 99
    :cond_62
    :goto_62
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_22e

    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Ljava/lang/Integer;

    .line 111
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 114
    move-result v2

    .line 115
    iget-object v3, p2, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    .line 117
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Landroidx/constraintlayout/widget/c$a;

    .line 123
    iget-object v3, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_94

    .line 135
    iget-object v3, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    move-result-object v4

    .line 141
    new-instance v5, Landroidx/constraintlayout/widget/c$a;

    .line 143
    invoke-direct {v5}, Landroidx/constraintlayout/widget/c$a;-><init>()V

    .line 146
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_94
    iget-object v3, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Landroidx/constraintlayout/widget/c$a;

    .line 161
    if-nez v2, :cond_a3

    .line 163
    goto :goto_62

    .line 164
    :cond_a3
    iget-object v3, v2, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 166
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/c$b;->b:Z

    .line 168
    if-nez v4, :cond_ae

    .line 170
    iget-object v4, v1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 172
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/c$b;->a(Landroidx/constraintlayout/widget/c$b;)V

    .line 175
    :cond_ae
    iget-object v3, v2, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    .line 177
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/c$d;->a:Z

    .line 179
    if-nez v4, :cond_ca

    .line 181
    iget-object v4, v1, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    .line 183
    iget-boolean v5, v4, Landroidx/constraintlayout/widget/c$d;->a:Z

    .line 185
    iput-boolean v5, v3, Landroidx/constraintlayout/widget/c$d;->a:Z

    .line 187
    iget v5, v4, Landroidx/constraintlayout/widget/c$d;->b:I

    .line 189
    iput v5, v3, Landroidx/constraintlayout/widget/c$d;->b:I

    .line 191
    iget v5, v4, Landroidx/constraintlayout/widget/c$d;->d:F

    .line 193
    iput v5, v3, Landroidx/constraintlayout/widget/c$d;->d:F

    .line 195
    iget v5, v4, Landroidx/constraintlayout/widget/c$d;->e:F

    .line 197
    iput v5, v3, Landroidx/constraintlayout/widget/c$d;->e:F

    .line 199
    iget v4, v4, Landroidx/constraintlayout/widget/c$d;->c:I

    .line 201
    iput v4, v3, Landroidx/constraintlayout/widget/c$d;->c:I

    .line 203
    :cond_ca
    iget-object v3, v2, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 205
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/c$e;->a:Z

    .line 207
    if-nez v4, :cond_d5

    .line 209
    iget-object v4, v1, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 211
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/c$e;->a(Landroidx/constraintlayout/widget/c$e;)V

    .line 214
    :cond_d5
    iget-object v3, v2, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    .line 216
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/c$c;->a:Z

    .line 218
    if-nez v4, :cond_e0

    .line 220
    iget-object v4, v1, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    .line 222
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/c$c;->a(Landroidx/constraintlayout/widget/c$c;)V

    .line 225
    :cond_e0
    iget-object v3, v1, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    .line 227
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 230
    move-result-object v3

    .line 231
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 234
    move-result-object v3

    .line 235
    :cond_ea
    :goto_ea
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    move-result v4

    .line 239
    if-eqz v4, :cond_62

    .line 241
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    move-result-object v4

    .line 245
    check-cast v4, Ljava/lang/String;

    .line 247
    iget-object v5, v2, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    .line 249
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 252
    move-result v5

    .line 253
    if-nez v5, :cond_ea

    .line 255
    iget-object v5, v2, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    .line 257
    iget-object v6, v1, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    .line 259
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    move-result-object v6

    .line 263
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 265
    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    goto :goto_ea

    .line 269
    :cond_10c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 271
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    iget-object v1, v0, Landroidx/constraintlayout/widget/c;->b:Ljava/lang/String;

    .line 276
    const-string v2, "  layout"

    .line 278
    invoke-static {p1, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    move-result-object p1

    .line 282
    iput-object p1, v0, Landroidx/constraintlayout/widget/c;->b:Ljava/lang/String;

    .line 284
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 287
    move-result p1

    .line 288
    const/4 v1, 0x0

    .line 289
    :goto_120
    if-ge v1, p1, :cond_22e

    .line 291
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 298
    move-result-object v3

    .line 299
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 301
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 304
    move-result v4

    .line 305
    iget-boolean v5, v0, Landroidx/constraintlayout/widget/c;->d:Z

    .line 307
    if-eqz v5, :cond_140

    .line 309
    const/4 v5, -0x1

    .line 310
    if-eq v4, v5, :cond_138

    .line 312
    goto :goto_140

    .line 313
    :cond_138
    new-instance p1, Ljava/lang/RuntimeException;

    .line 315
    const-string p2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 317
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 320
    throw p1

    .line 321
    :cond_140
    :goto_140
    iget-object v5, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    .line 323
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    move-result-object v6

    .line 327
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 330
    move-result v5

    .line 331
    if-nez v5, :cond_15a

    .line 333
    iget-object v5, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    .line 335
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    move-result-object v6

    .line 339
    new-instance v7, Landroidx/constraintlayout/widget/c$a;

    .line 341
    invoke-direct {v7}, Landroidx/constraintlayout/widget/c$a;-><init>()V

    .line 344
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_15a
    iget-object v5, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    .line 349
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    move-result-object v6

    .line 353
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    move-result-object v5

    .line 357
    check-cast v5, Landroidx/constraintlayout/widget/c$a;

    .line 359
    if-nez v5, :cond_16a

    .line 361
    goto/16 :goto_22a

    .line 363
    :cond_16a
    iget-object v6, v5, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 365
    iget-boolean v6, v6, Landroidx/constraintlayout/widget/c$b;->b:Z

    .line 367
    const/4 v7, 0x1

    .line 368
    if-nez v6, :cond_1a6

    .line 370
    invoke-virtual {v5, v3, v4}, Landroidx/constraintlayout/widget/c$a;->c(Landroidx/constraintlayout/widget/ConstraintLayout$b;I)V

    .line 373
    instance-of v3, v2, Landroidx/constraintlayout/widget/b;

    .line 375
    if-eqz v3, :cond_1a2

    .line 377
    iget-object v3, v5, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 379
    move-object v4, v2

    .line 380
    check-cast v4, Landroidx/constraintlayout/widget/b;

    .line 382
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/b;->getReferencedIds()[I

    .line 385
    move-result-object v4

    .line 386
    iput-object v4, v3, Landroidx/constraintlayout/widget/c$b;->j0:[I

    .line 388
    instance-of v3, v2, Landroidx/constraintlayout/widget/a;

    .line 390
    if-eqz v3, :cond_1a2

    .line 392
    move-object v3, v2

    .line 393
    check-cast v3, Landroidx/constraintlayout/widget/a;

    .line 395
    iget-object v4, v5, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 397
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/a;->getAllowsGoneWidget()Z

    .line 400
    move-result v6

    .line 401
    iput-boolean v6, v4, Landroidx/constraintlayout/widget/c$b;->o0:Z

    .line 403
    iget-object v4, v5, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 405
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/a;->getType()I

    .line 408
    move-result v6

    .line 409
    iput v6, v4, Landroidx/constraintlayout/widget/c$b;->g0:I

    .line 411
    iget-object v4, v5, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 413
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/a;->getMargin()I

    .line 416
    move-result v3

    .line 417
    iput v3, v4, Landroidx/constraintlayout/widget/c$b;->h0:I

    .line 419
    :cond_1a2
    iget-object v3, v5, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 421
    iput-boolean v7, v3, Landroidx/constraintlayout/widget/c$b;->b:Z

    .line 423
    :cond_1a6
    iget-object v3, v5, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    .line 425
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/c$d;->a:Z

    .line 427
    if-nez v4, :cond_1be

    .line 429
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 432
    move-result v4

    .line 433
    iput v4, v3, Landroidx/constraintlayout/widget/c$d;->b:I

    .line 435
    iget-object v3, v5, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    .line 437
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 440
    move-result v4

    .line 441
    iput v4, v3, Landroidx/constraintlayout/widget/c$d;->d:F

    .line 443
    iget-object v3, v5, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    .line 445
    iput-boolean v7, v3, Landroidx/constraintlayout/widget/c$d;->a:Z

    .line 447
    :cond_1be
    iget-object v3, v5, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 449
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/c$e;->a:Z

    .line 451
    if-nez v4, :cond_22a

    .line 453
    iput-boolean v7, v3, Landroidx/constraintlayout/widget/c$e;->a:Z

    .line 455
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    .line 458
    move-result v4

    .line 459
    iput v4, v3, Landroidx/constraintlayout/widget/c$e;->b:F

    .line 461
    iget-object v3, v5, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 463
    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    .line 466
    move-result v4

    .line 467
    iput v4, v3, Landroidx/constraintlayout/widget/c$e;->c:F

    .line 469
    iget-object v3, v5, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 471
    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    .line 474
    move-result v4

    .line 475
    iput v4, v3, Landroidx/constraintlayout/widget/c$e;->d:F

    .line 477
    iget-object v3, v5, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 479
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    .line 482
    move-result v4

    .line 483
    iput v4, v3, Landroidx/constraintlayout/widget/c$e;->e:F

    .line 485
    iget-object v3, v5, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 487
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    .line 490
    move-result v4

    .line 491
    iput v4, v3, Landroidx/constraintlayout/widget/c$e;->f:F

    .line 493
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    .line 496
    move-result v3

    .line 497
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    .line 500
    move-result v4

    .line 501
    float-to-double v6, v3

    .line 502
    const-wide/16 v8, 0x0

    .line 504
    cmpl-double v6, v6, v8

    .line 506
    if-nez v6, :cond_200

    .line 508
    float-to-double v6, v4

    .line 509
    cmpl-double v6, v6, v8

    .line 511
    if-eqz v6, :cond_206

    .line 513
    :cond_200
    iget-object v6, v5, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 515
    iput v3, v6, Landroidx/constraintlayout/widget/c$e;->g:F

    .line 517
    iput v4, v6, Landroidx/constraintlayout/widget/c$e;->h:F

    .line 519
    :cond_206
    iget-object v3, v5, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 521
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    .line 524
    move-result v4

    .line 525
    iput v4, v3, Landroidx/constraintlayout/widget/c$e;->j:F

    .line 527
    iget-object v3, v5, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 529
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 532
    move-result v4

    .line 533
    iput v4, v3, Landroidx/constraintlayout/widget/c$e;->k:F

    .line 535
    iget-object v3, v5, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 537
    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    .line 540
    move-result v4

    .line 541
    iput v4, v3, Landroidx/constraintlayout/widget/c$e;->l:F

    .line 543
    iget-object v3, v5, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    .line 545
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/c$e;->m:Z

    .line 547
    if-eqz v4, :cond_22a

    .line 549
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    .line 552
    move-result v2

    .line 553
    iput v2, v3, Landroidx/constraintlayout/widget/c$e;->n:F

    .line 555
    :cond_22a
    :goto_22a
    add-int/lit8 v1, v1, 0x1

    .line 557
    goto/16 :goto_120

    .line 559
    :cond_22e
    iget-object p1, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    .line 561
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 564
    move-result-object p1

    .line 565
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 568
    move-result-object p1

    .line 569
    :cond_238
    :goto_238
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 572
    move-result p2

    .line 573
    if-eqz p2, :cond_297

    .line 575
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 578
    move-result-object p2

    .line 579
    check-cast p2, Landroidx/constraintlayout/widget/c$a;

    .line 581
    iget-object v1, p2, Landroidx/constraintlayout/widget/c$a;->h:Landroidx/constraintlayout/widget/c$a$a;

    .line 583
    if-eqz v1, :cond_238

    .line 585
    iget-object v1, p2, Landroidx/constraintlayout/widget/c$a;->b:Ljava/lang/String;

    .line 587
    if-eqz v1, :cond_28b

    .line 589
    iget-object v1, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    .line 591
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 594
    move-result-object v1

    .line 595
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 598
    move-result-object v1

    .line 599
    :cond_256
    :goto_256
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 602
    move-result v2

    .line 603
    if-eqz v2, :cond_238

    .line 605
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 608
    move-result-object v2

    .line 609
    check-cast v2, Ljava/lang/Integer;

    .line 611
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 614
    move-result v2

    .line 615
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/c;->k(I)Landroidx/constraintlayout/widget/c$a;

    .line 618
    move-result-object v2

    .line 619
    iget-object v3, v2, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 621
    iget-object v3, v3, Landroidx/constraintlayout/widget/c$b;->l0:Ljava/lang/String;

    .line 623
    if-eqz v3, :cond_256

    .line 625
    iget-object v4, p2, Landroidx/constraintlayout/widget/c$a;->b:Ljava/lang/String;

    .line 627
    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 630
    move-result v3

    .line 631
    if-eqz v3, :cond_256

    .line 633
    iget-object v3, p2, Landroidx/constraintlayout/widget/c$a;->h:Landroidx/constraintlayout/widget/c$a$a;

    .line 635
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/c$a$a;->e(Landroidx/constraintlayout/widget/c$a;)V

    .line 638
    iget-object v2, v2, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    .line 640
    iget-object v3, p2, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    .line 642
    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 645
    move-result-object v3

    .line 646
    check-cast v3, Ljava/util/HashMap;

    .line 648
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 651
    goto :goto_256

    .line 652
    :cond_28b
    iget v1, p2, Landroidx/constraintlayout/widget/c$a;->a:I

    .line 654
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/c;->k(I)Landroidx/constraintlayout/widget/c$a;

    .line 657
    move-result-object v1

    .line 658
    iget-object p2, p2, Landroidx/constraintlayout/widget/c$a;->h:Landroidx/constraintlayout/widget/c$a$a;

    .line 660
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/c$a$a;->e(Landroidx/constraintlayout/widget/c$a;)V

    .line 663
    goto :goto_238

    .line 664
    :cond_297
    return-void
.end method

.method public final k(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_40

    .line 11
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/a;->i:Landroid/util/SparseIntArray;

    .line 19
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 22
    move-result v3

    .line 23
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/a;->i:Landroid/util/SparseIntArray;

    .line 25
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    .line 28
    move-result v4

    .line 29
    :goto_1c
    if-lez v3, :cond_2f

    .line 31
    if-ne v3, v2, :cond_21

    .line 33
    goto :goto_25

    .line 34
    :cond_21
    add-int/lit8 v5, v4, -0x1

    .line 36
    if-gez v4, :cond_27

    .line 38
    :goto_25
    const/4 v3, 0x1

    .line 39
    goto :goto_30

    .line 40
    :cond_27
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/a;->i:Landroid/util/SparseIntArray;

    .line 42
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 45
    move-result v3

    .line 46
    move v4, v5

    .line 47
    goto :goto_1c

    .line 48
    :cond_2f
    move v3, v0

    .line 49
    :goto_30
    if-eqz v3, :cond_3a

    .line 51
    const-string p1, "MotionScene"

    .line 53
    const-string v0, "Cannot be derived from yourself"

    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 59
    :cond_3a
    invoke-virtual {p0, v2, p1}, Landroidx/constraintlayout/motion/widget/a;->j(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_2

    .line 65
    :cond_40
    return-void
.end method

.method public final l(II)V
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->b:Lz/f;

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_16

    .line 6
    invoke-virtual {v0, p1}, Lz/f;->a(I)I

    .line 9
    move-result v0

    .line 10
    if-eq v0, v1, :cond_c

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v0, p1

    .line 14
    :goto_d
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/a;->b:Lz/f;

    .line 16
    invoke-virtual {v2, p2}, Lz/f;->a(I)I

    .line 19
    move-result v2

    .line 20
    if-eq v2, v1, :cond_17

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    move v0, p1

    .line 24
    :cond_17
    move v2, p2

    .line 25
    :goto_18
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 27
    if-eqz v3, :cond_25

    .line 29
    iget v4, v3, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 31
    if-ne v4, p2, :cond_25

    .line 33
    iget v3, v3, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 35
    if-ne v3, p1, :cond_25

    .line 37
    return-void

    .line 38
    :cond_25
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v3

    .line 44
    :cond_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_51

    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroidx/constraintlayout/motion/widget/a$b;

    .line 56
    iget v5, v4, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 58
    if-ne v5, v2, :cond_3f

    .line 60
    iget v6, v4, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 62
    if-eq v6, v0, :cond_45

    .line 64
    :cond_3f
    if-ne v5, p2, :cond_2b

    .line 66
    iget v5, v4, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 68
    if-ne v5, p1, :cond_2b

    .line 70
    :cond_45
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 72
    iget-object p1, v4, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 74
    if-eqz p1, :cond_50

    .line 76
    iget-boolean p2, p0, Landroidx/constraintlayout/motion/widget/a;->p:Z

    .line 78
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/b;->c(Z)V

    .line 81
    :cond_50
    return-void

    .line 82
    :cond_51
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/a;->e:Landroidx/constraintlayout/motion/widget/a$b;

    .line 84
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/a;->f:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object v3

    .line 90
    :cond_59
    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_6b

    .line 96
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Landroidx/constraintlayout/motion/widget/a$b;

    .line 102
    iget v5, v4, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 104
    if-ne v5, p2, :cond_59

    .line 106
    move-object p1, v4

    .line 107
    goto :goto_59

    .line 108
    :cond_6b
    new-instance p2, Landroidx/constraintlayout/motion/widget/a$b;

    .line 110
    invoke-direct {p2, p0, p1}, Landroidx/constraintlayout/motion/widget/a$b;-><init>(Landroidx/constraintlayout/motion/widget/a;Landroidx/constraintlayout/motion/widget/a$b;)V

    .line 113
    iput v0, p2, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 115
    iput v2, p2, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 117
    if-eq v0, v1, :cond_7b

    .line 119
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_7b
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 126
    return-void
.end method

.method public final m()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->d:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_18

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/constraintlayout/motion/widget/a$b;

    .line 20
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 22
    if-eqz v1, :cond_6

    .line 24
    return v2

    .line 25
    :cond_18
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->c:Landroidx/constraintlayout/motion/widget/a$b;

    .line 27
    if-eqz v0, :cond_21

    .line 29
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 31
    if-eqz v0, :cond_21

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    const/4 v2, 0x0

    .line 35
    :goto_22
    return v2
.end method
