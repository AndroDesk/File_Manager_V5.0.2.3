.class public final Li3/c;
.super Ljava/lang/Object;
.source "ClassReference.kt"

# interfaces
.implements Lm3/c;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm3/c<",
        "Ljava/lang/Object;",
        ">;",
        "Li3/b;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ly2/a<",
            "*>;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/util/LinkedHashMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    .line 1
    const/16 v0, 0x17

    .line 3
    new-array v0, v0, [Ljava/lang/Class;

    .line 5
    const-class v1, Lh3/a;

    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 10
    const-class v1, Lh3/l;

    .line 12
    const/4 v3, 0x1

    .line 13
    aput-object v1, v0, v3

    .line 15
    const-class v1, Lh3/p;

    .line 17
    const/4 v3, 0x2

    .line 18
    aput-object v1, v0, v3

    .line 20
    const/4 v1, 0x3

    .line 21
    const-class v3, Lh3/q;

    .line 23
    aput-object v3, v0, v1

    .line 25
    const/4 v1, 0x4

    .line 26
    const-class v3, Lh3/r;

    .line 28
    aput-object v3, v0, v1

    .line 30
    const/4 v1, 0x5

    .line 31
    const-class v3, Lh3/s;

    .line 33
    aput-object v3, v0, v1

    .line 35
    const/4 v1, 0x6

    .line 36
    const-class v3, Lh3/t;

    .line 38
    aput-object v3, v0, v1

    .line 40
    const/4 v1, 0x7

    .line 41
    const-class v3, Lh3/u;

    .line 43
    aput-object v3, v0, v1

    .line 45
    const/16 v1, 0x8

    .line 47
    const-class v3, Lh3/v;

    .line 49
    aput-object v3, v0, v1

    .line 51
    const/16 v1, 0x9

    .line 53
    const-class v3, Lh3/w;

    .line 55
    aput-object v3, v0, v1

    .line 57
    const-class v1, Lh3/b;

    .line 59
    const/16 v3, 0xa

    .line 61
    aput-object v1, v0, v3

    .line 63
    const/16 v1, 0xb

    .line 65
    const-class v3, Lh3/c;

    .line 67
    aput-object v3, v0, v1

    .line 69
    const/16 v1, 0xc

    .line 71
    const-class v3, Lh3/d;

    .line 73
    aput-object v3, v0, v1

    .line 75
    const/16 v1, 0xd

    .line 77
    const-class v3, Lh3/e;

    .line 79
    aput-object v3, v0, v1

    .line 81
    const/16 v1, 0xe

    .line 83
    const-class v3, Lh3/f;

    .line 85
    aput-object v3, v0, v1

    .line 87
    const/16 v1, 0xf

    .line 89
    const-class v3, Lh3/g;

    .line 91
    aput-object v3, v0, v1

    .line 93
    const/16 v1, 0x10

    .line 95
    const-class v3, Lh3/h;

    .line 97
    aput-object v3, v0, v1

    .line 99
    const/16 v1, 0x11

    .line 101
    const-class v3, Lh3/i;

    .line 103
    aput-object v3, v0, v1

    .line 105
    const/16 v1, 0x12

    .line 107
    const-class v3, Lh3/j;

    .line 109
    aput-object v3, v0, v1

    .line 111
    const/16 v1, 0x13

    .line 113
    const-class v3, Lh3/k;

    .line 115
    aput-object v3, v0, v1

    .line 117
    const/16 v1, 0x14

    .line 119
    const-class v3, Lh3/m;

    .line 121
    aput-object v3, v0, v1

    .line 123
    const/16 v1, 0x15

    .line 125
    const-class v3, Lh3/n;

    .line 127
    aput-object v3, v0, v1

    .line 129
    const/16 v1, 0x16

    .line 131
    const-class v3, Lh3/o;

    .line 133
    aput-object v3, v0, v1

    .line 135
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 138
    move-result-object v0

    .line 139
    const-string v1, "asList(this)"

    .line 141
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    .line 146
    invoke-static {v0}, Lz2/b;->d(Ljava/util/Collection;)I

    .line 149
    move-result v3

    .line 150
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    move-result-object v0

    .line 157
    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_c2

    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    move-result-object v3

    .line 167
    add-int/lit8 v4, v2, 0x1

    .line 169
    if-ltz v2, :cond_ba

    .line 171
    check-cast v3, Ljava/lang/Class;

    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v2

    .line 177
    new-instance v5, Lkotlin/Pair;

    .line 179
    invoke-direct {v5, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    move v2, v4

    .line 186
    goto :goto_9c

    .line 187
    :cond_ba
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 189
    const-string v1, "Index overflow has happened."

    .line 191
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 194
    throw v0

    .line 195
    :cond_c2
    invoke-static {v1}, Lkotlin/collections/a;->e(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Li3/c;->b:Ljava/util/Map;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    .line 203
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    const-string v1, "kotlin.Boolean"

    .line 208
    const-string v2, "boolean"

    .line 210
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v2, "kotlin.Char"

    .line 215
    const-string v3, "char"

    .line 217
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v3, "kotlin.Byte"

    .line 222
    const-string v4, "byte"

    .line 224
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v4, "kotlin.Short"

    .line 229
    const-string v5, "short"

    .line 231
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v5, "kotlin.Int"

    .line 236
    const-string v6, "int"

    .line 238
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v6, "kotlin.Float"

    .line 243
    const-string v7, "float"

    .line 245
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v7, "kotlin.Long"

    .line 250
    const-string v8, "long"

    .line 252
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v8, "kotlin.Double"

    .line 257
    const-string v9, "double"

    .line 259
    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v9, Ljava/util/HashMap;

    .line 264
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 267
    const-string v10, "java.lang.Boolean"

    .line 269
    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v1, "java.lang.Character"

    .line 274
    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v1, "java.lang.Byte"

    .line 279
    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v1, "java.lang.Short"

    .line 284
    invoke-virtual {v9, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "java.lang.Integer"

    .line 289
    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v1, "java.lang.Float"

    .line 294
    invoke-virtual {v9, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v1, "java.lang.Long"

    .line 299
    invoke-virtual {v9, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v1, "java.lang.Double"

    .line 304
    invoke-virtual {v9, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance v1, Ljava/util/HashMap;

    .line 309
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 312
    const-string v2, "java.lang.Object"

    .line 314
    const-string v3, "kotlin.Any"

    .line 316
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v2, "java.lang.String"

    .line 321
    const-string v3, "kotlin.String"

    .line 323
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v2, "java.lang.CharSequence"

    .line 328
    const-string v3, "kotlin.CharSequence"

    .line 330
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v2, "java.lang.Throwable"

    .line 335
    const-string v3, "kotlin.Throwable"

    .line 337
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v2, "java.lang.Cloneable"

    .line 342
    const-string v3, "kotlin.Cloneable"

    .line 344
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v2, "java.lang.Number"

    .line 349
    const-string v3, "kotlin.Number"

    .line 351
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v2, "java.lang.Comparable"

    .line 356
    const-string v3, "kotlin.Comparable"

    .line 358
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v2, "java.lang.Enum"

    .line 363
    const-string v3, "kotlin.Enum"

    .line 365
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v2, "java.lang.annotation.Annotation"

    .line 370
    const-string v3, "kotlin.Annotation"

    .line 372
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v2, "java.lang.Iterable"

    .line 377
    const-string v3, "kotlin.collections.Iterable"

    .line 379
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v2, "java.util.Iterator"

    .line 384
    const-string v3, "kotlin.collections.Iterator"

    .line 386
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v2, "java.util.Collection"

    .line 391
    const-string v3, "kotlin.collections.Collection"

    .line 393
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v2, "java.util.List"

    .line 398
    const-string v3, "kotlin.collections.List"

    .line 400
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v2, "java.util.Set"

    .line 405
    const-string v3, "kotlin.collections.Set"

    .line 407
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v2, "java.util.ListIterator"

    .line 412
    const-string v3, "kotlin.collections.ListIterator"

    .line 414
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v2, "java.util.Map"

    .line 419
    const-string v3, "kotlin.collections.Map"

    .line 421
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v2, "java.util.Map$Entry"

    .line 426
    const-string v3, "kotlin.collections.Map.Entry"

    .line 428
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v2, "kotlin.jvm.internal.StringCompanionObject"

    .line 433
    const-string v3, "kotlin.String.Companion"

    .line 435
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v2, "kotlin.jvm.internal.EnumCompanionObject"

    .line 440
    const-string v3, "kotlin.Enum.Companion"

    .line 442
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 448
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 451
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 454
    move-result-object v0

    .line 455
    const-string v2, "primitiveFqNames.values"

    .line 457
    invoke-static {v0, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 463
    move-result-object v0

    .line 464
    :goto_1cf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 467
    move-result v2

    .line 468
    if-eqz v2, :cond_211

    .line 470
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 473
    move-result-object v2

    .line 474
    check-cast v2, Ljava/lang/String;

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    .line 478
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    const-string v4, "kotlin.jvm.internal."

    .line 483
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const-string v4, "kotlinName"

    .line 488
    invoke-static {v2, v4}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    invoke-static {v2}, Lo3/f;->o0(Ljava/lang/String;)Ljava/lang/String;

    .line 494
    move-result-object v4

    .line 495
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string v4, "CompanionObject"

    .line 500
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    move-result-object v3

    .line 507
    const-string v4, ".Companion"

    .line 509
    invoke-static {v2, v4}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 512
    move-result-object v2

    .line 513
    new-instance v4, Lkotlin/Pair;

    .line 515
    invoke-direct {v4, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 518
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 525
    move-result-object v3

    .line 526
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    goto :goto_1cf

    .line 530
    :cond_211
    sget-object v0, Li3/c;->b:Ljava/util/Map;

    .line 532
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 535
    move-result-object v0

    .line 536
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 539
    move-result-object v0

    .line 540
    :goto_21b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 543
    move-result v2

    .line 544
    if-eqz v2, :cond_250

    .line 546
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 549
    move-result-object v2

    .line 550
    check-cast v2, Ljava/util/Map$Entry;

    .line 552
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 555
    move-result-object v3

    .line 556
    check-cast v3, Ljava/lang/Class;

    .line 558
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 561
    move-result-object v2

    .line 562
    check-cast v2, Ljava/lang/Number;

    .line 564
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 567
    move-result v2

    .line 568
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 571
    move-result-object v3

    .line 572
    new-instance v4, Ljava/lang/StringBuilder;

    .line 574
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    const-string v5, "kotlin.Function"

    .line 579
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    move-result-object v2

    .line 589
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    goto :goto_21b

    .line 593
    :cond_250
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 595
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 598
    move-result v2

    .line 599
    invoke-static {v2}, Lz2/c;->b(I)I

    .line 602
    move-result v2

    .line 603
    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 606
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 609
    move-result-object v1

    .line 610
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 613
    move-result-object v1

    .line 614
    :goto_265
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 617
    move-result v2

    .line 618
    if-eqz v2, :cond_283

    .line 620
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 623
    move-result-object v2

    .line 624
    check-cast v2, Ljava/util/Map$Entry;

    .line 626
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 629
    move-result-object v3

    .line 630
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 633
    move-result-object v2

    .line 634
    check-cast v2, Ljava/lang/String;

    .line 636
    invoke-static {v2}, Lo3/f;->o0(Ljava/lang/String;)Ljava/lang/String;

    .line 639
    move-result-object v2

    .line 640
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    goto :goto_265

    .line 644
    :cond_283
    sput-object v0, Li3/c;->c:Ljava/util/LinkedHashMap;

    .line 646
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .param p1  # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "jClass"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Li3/c;->a:Ljava/lang/Class;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Li3/c;->a:Ljava/lang/Class;

    .line 3
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Li3/c;

    .line 3
    if-eqz v0, :cond_16

    .line 5
    invoke-static {p0}, Lg3/a;->a(Lm3/c;)Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    check-cast p1, Lm3/c;

    .line 11
    invoke-static {p1}, Lg3/a;->a(Lm3/c;)Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    invoke-static {v0, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_16

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    :goto_17
    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lg3/a;->a(Lm3/c;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Li3/c;->a:Ljava/lang/Class;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " (Kotlin reflection is not available)"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
