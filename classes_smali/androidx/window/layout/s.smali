.class public final Landroidx/window/layout/s;
.super Ljava/lang/Object;
.source "WindowMetricsCalculatorCompat.kt"


# static fields
.field public static final a:Landroidx/window/layout/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/window/layout/s;

    .line 3
    invoke-direct {v0}, Landroidx/window/layout/s;-><init>()V

    .line 6
    sput-object v0, Landroidx/window/layout/s;->a:Landroidx/window/layout/s;

    .line 8
    const-class v0, Landroidx/window/layout/s;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Landroidx/window/layout/s;->b:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/graphics/Rect;
    .registers 10
    .param p0  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanUncheckedReflection",
            "BlockedPrivateApi"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    .line 8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    :try_start_14
    const-class v4, Landroid/content/res/Configuration;

    .line 23
    const-string v5, "windowConfiguration"

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 32
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 39
    move-result v4
    :try_end_27
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14 .. :try_end_27} :catch_a1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_27} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_27} :catch_7d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_27} :catch_6b

    .line 40
    const-string v5, "null cannot be cast to non-null type android.graphics.Rect"

    .line 42
    if-eqz v4, :cond_4b

    .line 44
    :try_start_2b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    move-result-object v4

    .line 48
    const-string v6, "getBounds"

    .line 50
    new-array v7, v3, [Ljava/lang/Class;

    .line 52
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    move-result-object v4

    .line 56
    new-array v6, v3, [Ljava/lang/Object;

    .line 58
    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_45

    .line 64
    check-cast v1, Landroid/graphics/Rect;

    .line 66
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 69
    goto :goto_b2

    .line 70
    :cond_45
    new-instance v1, Ljava/lang/NullPointerException;

    .line 72
    invoke-direct {v1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 75
    throw v1

    .line 76
    :cond_4b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    move-result-object v4

    .line 80
    const-string v6, "getAppBounds"

    .line 82
    new-array v7, v3, [Ljava/lang/Class;

    .line 84
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 87
    move-result-object v4

    .line 88
    new-array v6, v3, [Ljava/lang/Object;

    .line 90
    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_65

    .line 96
    check-cast v1, Landroid/graphics/Rect;

    .line 98
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 101
    goto :goto_b2

    .line 102
    :cond_65
    new-instance v1, Ljava/lang/NullPointerException;

    .line 104
    invoke-direct {v1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 107
    throw v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2b .. :try_end_6b} :catch_a1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2b .. :try_end_6b} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_6b} :catch_7d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_6b} :catch_6b

    .line 108
    :catch_6b
    move-exception v1

    .line 109
    sget-object v4, Landroidx/window/layout/s;->b:Ljava/lang/String;

    .line 111
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 117
    move-result-object v1

    .line 118
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 125
    goto :goto_b2

    .line 126
    :catch_7d
    move-exception v1

    .line 127
    sget-object v4, Landroidx/window/layout/s;->b:Ljava/lang/String;

    .line 129
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 135
    move-result-object v1

    .line 136
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 143
    goto :goto_b2

    .line 144
    :catch_8f
    move-exception v1

    .line 145
    sget-object v4, Landroidx/window/layout/s;->b:Ljava/lang/String;

    .line 147
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 153
    move-result-object v1

    .line 154
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 161
    goto :goto_b2

    .line 162
    :catch_a1
    move-exception v1

    .line 163
    sget-object v4, Landroidx/window/layout/s;->b:Ljava/lang/String;

    .line 165
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 171
    move-result-object v1

    .line 172
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 179
    :goto_b2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 182
    move-result-object v1

    .line 183
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 186
    move-result-object v1

    .line 187
    new-instance v4, Landroid/graphics/Point;

    .line 189
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 192
    const-string v5, "currentDisplay"

    .line 194
    invoke-static {v1, v5}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 200
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 203
    move-result v5

    .line 204
    if-nez v5, :cond_eb

    .line 206
    invoke-static {p0}, Landroidx/window/layout/s;->b(Landroid/content/Context;)I

    .line 209
    move-result v5

    .line 210
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 212
    add-int/2addr v6, v5

    .line 213
    iget v7, v4, Landroid/graphics/Point;->y:I

    .line 215
    if-ne v6, v7, :cond_db

    .line 217
    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 219
    goto :goto_eb

    .line 220
    :cond_db
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 222
    add-int/2addr v6, v5

    .line 223
    iget v7, v4, Landroid/graphics/Point;->x:I

    .line 225
    if-ne v6, v7, :cond_e5

    .line 227
    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 229
    goto :goto_eb

    .line 230
    :cond_e5
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 232
    if-ne v6, v5, :cond_eb

    .line 234
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 236
    :cond_eb
    :goto_eb
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 239
    move-result v5

    .line 240
    iget v6, v4, Landroid/graphics/Point;->x:I

    .line 242
    if-lt v5, v6, :cond_fb

    .line 244
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 247
    move-result v5

    .line 248
    iget v6, v4, Landroid/graphics/Point;->y:I

    .line 250
    if-ge v5, v6, :cond_1b2

    .line 252
    :cond_fb
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 255
    move-result p0

    .line 256
    if-nez p0, :cond_1b2

    .line 258
    :try_start_101
    const-string p0, "android.view.DisplayInfo"

    .line 260
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 263
    move-result-object p0

    .line 264
    new-array v5, v3, [Ljava/lang/Class;

    .line 266
    invoke-virtual {p0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {p0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 273
    new-array v5, v3, [Ljava/lang/Object;

    .line 275
    invoke-virtual {p0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    move-result-object p0

    .line 279
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    move-result-object v5

    .line 283
    const-string v6, "getDisplayInfo"

    .line 285
    new-array v7, v2, [Ljava/lang/Class;

    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    move-result-object v8

    .line 291
    aput-object v8, v7, v3

    .line 293
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v5, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 300
    new-array v6, v2, [Ljava/lang/Object;

    .line 302
    aput-object p0, v6, v3

    .line 304
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    move-result-object v1

    .line 311
    const-string v5, "displayCutout"

    .line 313
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 320
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    move-result-object p0

    .line 324
    instance-of v1, p0, Landroid/view/DisplayCutout;

    .line 326
    if-eqz v1, :cond_173

    .line 328
    check-cast p0, Landroid/view/DisplayCutout;
    :try_end_149
    .catch Ljava/lang/ClassNotFoundException; {:try_start_101 .. :try_end_149} :catch_16d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_101 .. :try_end_149} :catch_166
    .catch Ljava/lang/NoSuchFieldException; {:try_start_101 .. :try_end_149} :catch_15f
    .catch Ljava/lang/IllegalAccessException; {:try_start_101 .. :try_end_149} :catch_158
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_101 .. :try_end_149} :catch_151
    .catch Ljava/lang/InstantiationException; {:try_start_101 .. :try_end_149} :catch_14a

    .line 330
    goto :goto_174

    .line 331
    :catch_14a
    move-exception p0

    .line 332
    sget-object v1, Landroidx/window/layout/s;->b:Ljava/lang/String;

    .line 334
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    goto :goto_173

    .line 338
    :catch_151
    move-exception p0

    .line 339
    sget-object v1, Landroidx/window/layout/s;->b:Ljava/lang/String;

    .line 341
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    goto :goto_173

    .line 345
    :catch_158
    move-exception p0

    .line 346
    sget-object v1, Landroidx/window/layout/s;->b:Ljava/lang/String;

    .line 348
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    goto :goto_173

    .line 352
    :catch_15f
    move-exception p0

    .line 353
    sget-object v1, Landroidx/window/layout/s;->b:Ljava/lang/String;

    .line 355
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    goto :goto_173

    .line 359
    :catch_166
    move-exception p0

    .line 360
    sget-object v1, Landroidx/window/layout/s;->b:Ljava/lang/String;

    .line 362
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    goto :goto_173

    .line 366
    :catch_16d
    move-exception p0

    .line 367
    sget-object v1, Landroidx/window/layout/s;->b:Ljava/lang/String;

    .line 369
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    :cond_173
    :goto_173
    const/4 p0, 0x0

    .line 373
    :goto_174
    if-eqz p0, :cond_1b2

    .line 375
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 377
    invoke-static {p0}, Landroidx/window/layout/b;->b(Landroid/view/DisplayCutout;)I

    .line 380
    move-result v2

    .line 381
    if-ne v1, v2, :cond_180

    .line 383
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 385
    :cond_180
    iget v1, v4, Landroid/graphics/Point;->x:I

    .line 387
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 389
    sub-int/2addr v1, v2

    .line 390
    invoke-static {p0}, Landroidx/window/layout/b;->c(Landroid/view/DisplayCutout;)I

    .line 393
    move-result v2

    .line 394
    if-ne v1, v2, :cond_194

    .line 396
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 398
    invoke-static {p0}, Landroidx/window/layout/b;->c(Landroid/view/DisplayCutout;)I

    .line 401
    move-result v2

    .line 402
    add-int/2addr v2, v1

    .line 403
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 405
    :cond_194
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 407
    invoke-static {p0}, Landroidx/window/layout/b;->d(Landroid/view/DisplayCutout;)I

    .line 410
    move-result v2

    .line 411
    if-ne v1, v2, :cond_19e

    .line 413
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 415
    :cond_19e
    iget v1, v4, Landroid/graphics/Point;->y:I

    .line 417
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 419
    sub-int/2addr v1, v2

    .line 420
    invoke-static {p0}, Landroidx/window/layout/b;->a(Landroid/view/DisplayCutout;)I

    .line 423
    move-result v2

    .line 424
    if-ne v1, v2, :cond_1b2

    .line 426
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 428
    invoke-static {p0}, Landroidx/window/layout/b;->a(Landroid/view/DisplayCutout;)I

    .line 431
    move-result p0

    .line 432
    add-int/2addr p0, v1

    .line 433
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 435
    :cond_1b2
    return-object v0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "navigation_bar_height"

    .line 7
    const-string v1, "dimen"

    .line 9
    const-string v2, "android"

    .line 11
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_15

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result p0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 p0, 0x0

    .line 23
    :goto_16
    return p0
.end method

.method public static c(Landroid/view/Display;)Landroid/graphics/Point;
    .registers 2
    .param p0  # Landroid/view/Display;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 9
    return-object v0
.end method
