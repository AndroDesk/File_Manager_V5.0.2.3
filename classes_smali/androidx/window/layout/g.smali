.class public final Landroidx/window/layout/g;
.super Ljava/lang/Object;
.source "ExtensionsWindowLayoutInfoAdapter.kt"


# direct methods
.method public static a(Landroid/app/Activity;Landroidx/window/extensions/layout/FoldingFeature;)Landroidx/window/layout/i;
    .registers 13
    .param p0  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Landroidx/window/extensions/layout/FoldingFeature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getType()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v0, v3, :cond_14

    .line 15
    if-eq v0, v1, :cond_11

    .line 17
    return-object v2

    .line 18
    :cond_11
    sget-object v0, Landroidx/window/layout/i$a;->c:Landroidx/window/layout/i$a;

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    sget-object v0, Landroidx/window/layout/i$a;->b:Landroidx/window/layout/i$a;

    .line 23
    :goto_16
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getState()I

    .line 26
    move-result v4

    .line 27
    if-eq v4, v3, :cond_22

    .line 29
    if-eq v4, v1, :cond_1f

    .line 31
    return-object v2

    .line 32
    :cond_1f
    sget-object v1, Landroidx/window/layout/h$b;->c:Landroidx/window/layout/h$b;

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    sget-object v1, Landroidx/window/layout/h$b;->b:Landroidx/window/layout/h$b;

    .line 37
    :goto_24
    new-instance v4, Lj1/b;

    .line 39
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    .line 42
    move-result-object v5

    .line 43
    const-string v6, "oemFeature.bounds"

    .line 45
    invoke-static {v5, v6}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {v4, v5}, Lj1/b;-><init>(Landroid/graphics/Rect;)V

    .line 51
    sget-object v5, Landroidx/window/layout/s;->a:Landroidx/window/layout/s;

    .line 53
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    const/16 v7, 0x1e

    .line 60
    const/4 v8, 0x0

    .line 61
    if-lt v5, v7, :cond_44

    .line 63
    invoke-static {p0}, Landroidx/window/layout/a;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 66
    move-result-object p0

    .line 67
    goto/16 :goto_ec

    .line 69
    :cond_44
    const/16 v7, 0x1d

    .line 71
    if-lt v5, v7, :cond_b1

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 80
    move-result-object v5

    .line 81
    :try_start_50
    const-class v7, Landroid/content/res/Configuration;

    .line 83
    const-string v9, "windowConfiguration"

    .line 85
    invoke-virtual {v7, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v7, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 92
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    move-result-object v7

    .line 100
    const-string v9, "getBounds"

    .line 102
    new-array v10, v8, [Ljava/lang/Class;

    .line 104
    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 107
    move-result-object v7

    .line 108
    new-instance v9, Landroid/graphics/Rect;

    .line 110
    new-array v10, v8, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v7, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object v5

    .line 116
    if-eqz v5, :cond_7d

    .line 118
    check-cast v5, Landroid/graphics/Rect;

    .line 120
    invoke-direct {v9, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 123
    move-object p0, v9

    .line 124
    goto/16 :goto_ec

    .line 126
    :cond_7d
    new-instance v5, Ljava/lang/NullPointerException;

    .line 128
    const-string v7, "null cannot be cast to non-null type android.graphics.Rect"

    .line 130
    invoke-direct {v5, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 133
    throw v5
    :try_end_85
    .catch Ljava/lang/NoSuchFieldException; {:try_start_50 .. :try_end_85} :catch_a6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_50 .. :try_end_85} :catch_9b
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_85} :catch_90
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_50 .. :try_end_85} :catch_85

    .line 134
    :catch_85
    move-exception v5

    .line 135
    sget-object v7, Landroidx/window/layout/s;->b:Ljava/lang/String;

    .line 137
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    invoke-static {p0}, Landroidx/window/layout/s;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 143
    move-result-object p0

    .line 144
    goto :goto_ec

    .line 145
    :catch_90
    move-exception v5

    .line 146
    sget-object v7, Landroidx/window/layout/s;->b:Ljava/lang/String;

    .line 148
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    invoke-static {p0}, Landroidx/window/layout/s;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 154
    move-result-object p0

    .line 155
    goto :goto_ec

    .line 156
    :catch_9b
    move-exception v5

    .line 157
    sget-object v7, Landroidx/window/layout/s;->b:Ljava/lang/String;

    .line 159
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    invoke-static {p0}, Landroidx/window/layout/s;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 165
    move-result-object p0

    .line 166
    goto :goto_ec

    .line 167
    :catch_a6
    move-exception v5

    .line 168
    sget-object v7, Landroidx/window/layout/s;->b:Ljava/lang/String;

    .line 170
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    invoke-static {p0}, Landroidx/window/layout/s;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 176
    move-result-object p0

    .line 177
    goto :goto_ec

    .line 178
    :cond_b1
    const/16 v7, 0x1c

    .line 180
    if-lt v5, v7, :cond_ba

    .line 182
    invoke-static {p0}, Landroidx/window/layout/s;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 185
    move-result-object p0

    .line 186
    goto :goto_ec

    .line 187
    :cond_ba
    new-instance v5, Landroid/graphics/Rect;

    .line 189
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 195
    move-result-object v7

    .line 196
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v7, v5}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 206
    move-result v9

    .line 207
    if-nez v9, :cond_eb

    .line 209
    invoke-static {v7}, Landroidx/window/layout/s;->c(Landroid/view/Display;)Landroid/graphics/Point;

    .line 212
    move-result-object v7

    .line 213
    invoke-static {p0}, Landroidx/window/layout/s;->b(Landroid/content/Context;)I

    .line 216
    move-result p0

    .line 217
    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    .line 219
    add-int/2addr v9, p0

    .line 220
    iget v10, v7, Landroid/graphics/Point;->y:I

    .line 222
    if-ne v9, v10, :cond_e2

    .line 224
    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    .line 226
    goto :goto_eb

    .line 227
    :cond_e2
    iget v9, v5, Landroid/graphics/Rect;->right:I

    .line 229
    add-int/2addr v9, p0

    .line 230
    iget p0, v7, Landroid/graphics/Point;->x:I

    .line 232
    if-ne v9, p0, :cond_eb

    .line 234
    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 236
    :cond_eb
    :goto_eb
    move-object p0, v5

    .line 237
    :goto_ec
    new-instance v5, Lj1/b;

    .line 239
    invoke-direct {v5, p0}, Lj1/b;-><init>(Landroid/graphics/Rect;)V

    .line 242
    invoke-virtual {v5}, Lj1/b;->a()Landroid/graphics/Rect;

    .line 245
    move-result-object p0

    .line 246
    iget v5, v4, Lj1/b;->d:I

    .line 248
    iget v7, v4, Lj1/b;->b:I

    .line 250
    sub-int/2addr v5, v7

    .line 251
    if-nez v5, :cond_105

    .line 253
    iget v5, v4, Lj1/b;->c:I

    .line 255
    iget v7, v4, Lj1/b;->a:I

    .line 257
    sub-int/2addr v5, v7

    .line 258
    if-nez v5, :cond_105

    .line 260
    move v5, v3

    .line 261
    goto :goto_106

    .line 262
    :cond_105
    move v5, v8

    .line 263
    :goto_106
    if-eqz v5, :cond_109

    .line 265
    goto :goto_14d

    .line 266
    :cond_109
    iget v5, v4, Lj1/b;->c:I

    .line 268
    iget v7, v4, Lj1/b;->a:I

    .line 270
    sub-int/2addr v5, v7

    .line 271
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 274
    move-result v7

    .line 275
    if-eq v5, v7, :cond_120

    .line 277
    iget v5, v4, Lj1/b;->d:I

    .line 279
    iget v7, v4, Lj1/b;->b:I

    .line 281
    sub-int/2addr v5, v7

    .line 282
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 285
    move-result v7

    .line 286
    if-eq v5, v7, :cond_120

    .line 288
    goto :goto_14d

    .line 289
    :cond_120
    iget v5, v4, Lj1/b;->c:I

    .line 291
    iget v7, v4, Lj1/b;->a:I

    .line 293
    sub-int/2addr v5, v7

    .line 294
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 297
    move-result v7

    .line 298
    if-ge v5, v7, :cond_137

    .line 300
    iget v5, v4, Lj1/b;->d:I

    .line 302
    iget v7, v4, Lj1/b;->b:I

    .line 304
    sub-int/2addr v5, v7

    .line 305
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 308
    move-result v7

    .line 309
    if-ge v5, v7, :cond_137

    .line 311
    goto :goto_14d

    .line 312
    :cond_137
    iget v5, v4, Lj1/b;->c:I

    .line 314
    iget v7, v4, Lj1/b;->a:I

    .line 316
    sub-int/2addr v5, v7

    .line 317
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 320
    move-result v7

    .line 321
    if-ne v5, v7, :cond_14e

    .line 323
    iget v5, v4, Lj1/b;->d:I

    .line 325
    iget v4, v4, Lj1/b;->b:I

    .line 327
    sub-int/2addr v5, v4

    .line 328
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 331
    move-result p0

    .line 332
    if-ne v5, p0, :cond_14e

    .line 334
    :goto_14d
    move v3, v8

    .line 335
    :cond_14e
    if-eqz v3, :cond_161

    .line 337
    new-instance v2, Landroidx/window/layout/i;

    .line 339
    new-instance p0, Lj1/b;

    .line 341
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    .line 344
    move-result-object p1

    .line 345
    invoke-static {p1, v6}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-direct {p0, p1}, Lj1/b;-><init>(Landroid/graphics/Rect;)V

    .line 351
    invoke-direct {v2, p0, v0, v1}, Landroidx/window/layout/i;-><init>(Lj1/b;Landroidx/window/layout/i$a;Landroidx/window/layout/h$b;)V

    .line 354
    :cond_161
    return-object v2
.end method

.method public static b(Landroid/app/Activity;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/r;
    .registers 5
    .param p0  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Landroidx/window/extensions/layout/WindowLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "info"

    .line 8
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroidx/window/extensions/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    .line 14
    move-result-object p1

    .line 15
    const-string v0, "info.displayFeatures"

    .line 17
    invoke-static {p1, v0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p1

    .line 29
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_40

    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/window/extensions/layout/DisplayFeature;

    .line 41
    instance-of v2, v1, Landroidx/window/extensions/layout/FoldingFeature;

    .line 43
    if-eqz v2, :cond_38

    .line 45
    const-string v2, "feature"

    .line 47
    invoke-static {v1, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    check-cast v1, Landroidx/window/extensions/layout/FoldingFeature;

    .line 52
    invoke-static {p0, v1}, Landroidx/window/layout/g;->a(Landroid/app/Activity;Landroidx/window/extensions/layout/FoldingFeature;)Landroidx/window/layout/i;

    .line 55
    move-result-object v1

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    const/4 v1, 0x0

    .line 58
    :goto_39
    if-nez v1, :cond_3c

    .line 60
    goto :goto_1c

    .line 61
    :cond_3c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_1c

    .line 65
    :cond_40
    new-instance p0, Landroidx/window/layout/r;

    .line 67
    invoke-direct {p0, v0}, Landroidx/window/layout/r;-><init>(Ljava/util/List;)V

    .line 70
    return-object p0
.end method
