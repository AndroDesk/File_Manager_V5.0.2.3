.class public final Lf0/i;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/i$a;
    }
.end annotation


# static fields
.field public static final a:Lf0/p;

.field public static final b:Landroidx/collection/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/e<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_e

    .line 7
    new-instance v0, Lf0/n;

    .line 9
    invoke-direct {v0}, Lf0/n;-><init>()V

    .line 12
    sput-object v0, Lf0/i;->a:Lf0/p;

    .line 14
    goto :goto_47

    .line 15
    :cond_e
    const/16 v1, 0x1c

    .line 17
    if-lt v0, v1, :cond_1a

    .line 19
    new-instance v0, Lf0/m;

    .line 21
    invoke-direct {v0}, Lf0/m;-><init>()V

    .line 24
    sput-object v0, Lf0/i;->a:Lf0/p;

    .line 26
    goto :goto_47

    .line 27
    :cond_1a
    const/16 v1, 0x1a

    .line 29
    if-lt v0, v1, :cond_26

    .line 31
    new-instance v0, Lf0/l;

    .line 33
    invoke-direct {v0}, Lf0/l;-><init>()V

    .line 36
    sput-object v0, Lf0/i;->a:Lf0/p;

    .line 38
    goto :goto_47

    .line 39
    :cond_26
    sget-object v0, Lf0/k;->c:Ljava/lang/reflect/Method;

    .line 41
    if-nez v0, :cond_31

    .line 43
    const-string v1, "TypefaceCompatApi24Impl"

    .line 45
    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    .line 47
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_31
    if-eqz v0, :cond_35

    .line 52
    const/4 v0, 0x1

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    const/4 v0, 0x0

    .line 55
    :goto_36
    if-eqz v0, :cond_40

    .line 57
    new-instance v0, Lf0/k;

    .line 59
    invoke-direct {v0}, Lf0/k;-><init>()V

    .line 62
    sput-object v0, Lf0/i;->a:Lf0/p;

    .line 64
    goto :goto_47

    .line 65
    :cond_40
    new-instance v0, Lf0/j;

    .line 67
    invoke-direct {v0}, Lf0/j;-><init>()V

    .line 70
    sput-object v0, Lf0/i;->a:Lf0/p;

    .line 72
    :goto_47
    new-instance v0, Landroidx/collection/e;

    .line 74
    const/16 v1, 0x10

    .line 76
    invoke-direct {v0, v1}, Landroidx/collection/e;-><init>(I)V

    .line 79
    sput-object v0, Lf0/i;->b:Landroidx/collection/e;

    .line 81
    return-void
.end method

.method public static a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;ILjava/lang/String;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .registers 16

    .line 1
    instance-of v0, p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    .line 3
    const/4 v1, -0x3

    .line 4
    if-eqz v0, :cond_14c

    .line 6
    check-cast p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    .line 8
    invoke-virtual {p1}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getSystemFontFamilyName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v0, :cond_29

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_16

    .line 22
    goto :goto_29

    .line 23
    :cond_16
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 26
    move-result-object v0

    .line 27
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 29
    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 32
    move-result-object v4

    .line 33
    if-eqz v0, :cond_29

    .line 35
    invoke-virtual {v0, v4}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_29

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    :goto_29
    move-object v0, v2

    .line 43
    :goto_2a
    if-eqz v0, :cond_32

    .line 45
    if-eqz p7, :cond_31

    .line 47
    invoke-virtual {p7, v0, p8}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 50
    :cond_31
    return-object v0

    .line 51
    :cond_32
    const/4 v0, 0x1

    .line 52
    if-eqz p9, :cond_3c

    .line 54
    invoke-virtual {p1}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getFetchStrategy()I

    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_3f

    .line 60
    goto :goto_3e

    .line 61
    :cond_3c
    if-nez p7, :cond_3f

    .line 63
    :goto_3e
    move v3, v0

    .line 64
    :cond_3f
    const/4 v0, -0x1

    .line 65
    if-eqz p9, :cond_47

    .line 67
    invoke-virtual {p1}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getTimeout()I

    .line 70
    move-result p9

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    move p9, v0

    .line 73
    :goto_48
    invoke-static {p8}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->getHandler(Landroid/os/Handler;)Landroid/os/Handler;

    .line 76
    move-result-object p8

    .line 77
    new-instance v4, Lf0/i$a;

    .line 79
    invoke-direct {v4, p7}, Lf0/i$a;-><init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 82
    invoke-virtual {p1}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getRequest()Lj0/f;

    .line 85
    move-result-object p1

    .line 86
    new-instance p7, Lj0/c;

    .line 88
    invoke-direct {p7, v4, p8}, Lj0/c;-><init>(Lf0/i$a;Landroid/os/Handler;)V

    .line 91
    if-eqz v3, :cond_d0

    .line 93
    sget-object v3, Lj0/k;->a:Landroidx/collection/e;

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    iget-object v5, p1, Lj0/f;->e:Ljava/lang/String;

    .line 102
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v5, "-"

    .line 107
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v3

    .line 117
    sget-object v5, Lj0/k;->a:Landroidx/collection/e;

    .line 119
    invoke-virtual {v5, v3}, Landroidx/collection/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Landroid/graphics/Typeface;

    .line 125
    if-eqz v5, :cond_89

    .line 127
    new-instance p0, Lj0/a;

    .line 129
    invoke-direct {p0, v4, v5}, Lj0/a;-><init>(La/b;Landroid/graphics/Typeface;)V

    .line 132
    invoke-virtual {p8, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    move-object v2, v5

    .line 136
    goto/16 :goto_15f

    .line 138
    :cond_89
    if-ne p9, v0, :cond_96

    .line 140
    invoke-static {v3, p0, p1, p6}, Lj0/k;->a(Ljava/lang/String;Landroid/content/Context;Lj0/f;I)Lj0/k$a;

    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p7, p0}, Lj0/c;->a(Lj0/k$a;)V

    .line 147
    iget-object v2, p0, Lj0/k$a;->a:Landroid/graphics/Typeface;

    .line 149
    goto/16 :goto_15f

    .line 151
    :cond_96
    new-instance p8, Lj0/g;

    .line 153
    invoke-direct {p8, v3, p0, p1, p6}, Lj0/g;-><init>(Ljava/lang/String;Landroid/content/Context;Lj0/f;I)V

    .line 156
    :try_start_9b
    sget-object p0, Lj0/k;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 158
    invoke-interface {p0, p8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 161
    move-result-object p0
    :try_end_a1
    .catch Ljava/lang/InterruptedException; {:try_start_9b .. :try_end_a1} :catch_c2

    .line 162
    int-to-long p8, p9

    .line 163
    :try_start_a2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 165
    invoke-interface {p0, p8, p9, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 168
    move-result-object p0
    :try_end_a8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a2 .. :try_end_a8} :catch_bb
    .catch Ljava/lang/InterruptedException; {:try_start_a2 .. :try_end_a8} :catch_b9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a2 .. :try_end_a8} :catch_b1

    .line 169
    :try_start_a8
    check-cast p0, Lj0/k$a;

    .line 171
    invoke-virtual {p7, p0}, Lj0/c;->a(Lj0/k$a;)V

    .line 174
    iget-object v2, p0, Lj0/k$a;->a:Landroid/graphics/Typeface;

    .line 176
    goto/16 :goto_15f

    .line 178
    :catch_b1
    new-instance p0, Ljava/lang/InterruptedException;

    .line 180
    const-string p1, "timeout"

    .line 182
    invoke-direct {p0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .line 185
    throw p0

    .line 186
    :catch_b9
    move-exception p0

    .line 187
    throw p0

    .line 188
    :catch_bb
    move-exception p0

    .line 189
    new-instance p1, Ljava/lang/RuntimeException;

    .line 191
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 194
    throw p1
    :try_end_c2
    .catch Ljava/lang/InterruptedException; {:try_start_a8 .. :try_end_c2} :catch_c2

    .line 195
    :catch_c2
    iget-object p0, p7, Lj0/c;->a:La/b;

    .line 197
    iget-object p1, p7, Lj0/c;->b:Landroid/os/Handler;

    .line 199
    new-instance p7, Lj0/b;

    .line 201
    invoke-direct {p7, p0, v1}, Lj0/b;-><init>(La/b;I)V

    .line 204
    invoke-virtual {p1, p7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    goto/16 :goto_15f

    .line 209
    :cond_d0
    sget-object p9, Lj0/k;->a:Landroidx/collection/e;

    .line 211
    new-instance p9, Ljava/lang/StringBuilder;

    .line 213
    invoke-direct {p9}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    iget-object v0, p1, Lj0/f;->e:Ljava/lang/String;

    .line 218
    invoke-virtual {p9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v0, "-"

    .line 223
    invoke-virtual {p9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p9, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object p9

    .line 233
    sget-object v0, Lj0/k;->a:Landroidx/collection/e;

    .line 235
    invoke-virtual {v0, p9}, Landroidx/collection/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Landroid/graphics/Typeface;

    .line 241
    if-eqz v0, :cond_fc

    .line 243
    new-instance p0, Lj0/a;

    .line 245
    invoke-direct {p0, v4, v0}, Lj0/a;-><init>(La/b;Landroid/graphics/Typeface;)V

    .line 248
    invoke-virtual {p8, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    move-object v2, v0

    .line 252
    goto :goto_15f

    .line 253
    :cond_fc
    new-instance p8, Lj0/h;

    .line 255
    invoke-direct {p8, p7}, Lj0/h;-><init>(Lj0/c;)V

    .line 258
    sget-object v0, Lj0/k;->c:Ljava/lang/Object;

    .line 260
    monitor-enter v0

    .line 261
    :try_start_104
    sget-object p7, Lj0/k;->d:Landroidx/collection/f;

    .line 263
    invoke-virtual {p7, p9}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Ljava/util/ArrayList;

    .line 269
    if-eqz v1, :cond_113

    .line 271
    invoke-virtual {v1, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    monitor-exit v0

    .line 275
    goto :goto_15f

    .line 276
    :cond_113
    new-instance v1, Ljava/util/ArrayList;

    .line 278
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-virtual {v1, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {p7, p9, v1}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    monitor-exit v0
    :try_end_11f
    .catchall {:try_start_104 .. :try_end_11f} :catchall_149

    .line 288
    new-instance p7, Lj0/i;

    .line 290
    invoke-direct {p7, p9, p0, p1, p6}, Lj0/i;-><init>(Ljava/lang/String;Landroid/content/Context;Lj0/f;I)V

    .line 293
    sget-object p0, Lj0/k;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 295
    new-instance p1, Lj0/j;

    .line 297
    invoke-direct {p1, p9}, Lj0/j;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 303
    move-result-object p8

    .line 304
    if-nez p8, :cond_13b

    .line 306
    new-instance p8, Landroid/os/Handler;

    .line 308
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 311
    move-result-object p9

    .line 312
    invoke-direct {p8, p9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 315
    goto :goto_140

    .line 316
    :cond_13b
    new-instance p8, Landroid/os/Handler;

    .line 318
    invoke-direct {p8}, Landroid/os/Handler;-><init>()V

    .line 321
    :goto_140
    new-instance p9, Lj0/o;

    .line 323
    invoke-direct {p9, p8, p7, p1}, Lj0/o;-><init>(Landroid/os/Handler;Lj0/i;Lj0/j;)V

    .line 326
    invoke-virtual {p0, p9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 329
    goto :goto_15f

    .line 330
    :catchall_149
    move-exception p0

    .line 331
    :try_start_14a
    monitor-exit v0
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_149

    .line 332
    throw p0

    .line 333
    :cond_14c
    sget-object p9, Lf0/i;->a:Lf0/p;

    .line 335
    check-cast p1, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    .line 337
    invoke-virtual {p9, p0, p1, p2, p6}, Lf0/p;->a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    .line 340
    move-result-object v2

    .line 341
    if-eqz p7, :cond_15f

    .line 343
    if-eqz v2, :cond_15c

    .line 345
    invoke-virtual {p7, v2, p8}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 348
    goto :goto_15f

    .line 349
    :cond_15c
    invoke-virtual {p7, v1, p8}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 352
    :cond_15f
    :goto_15f
    if-eqz v2, :cond_16a

    .line 354
    sget-object p0, Lf0/i;->b:Landroidx/collection/e;

    .line 356
    invoke-static {p2, p3, p4, p5, p6}, Lf0/i;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p0, p1, v2}, Landroidx/collection/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_16a
    return-object v2
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    const/16 p0, 0x2d

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
