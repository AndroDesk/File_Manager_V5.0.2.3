.class public Lmiuix/animation/font/VarFontUtils;
.super Ljava/lang/Object;
.source "VarFontUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field private static final DEFAULT_WGHT:I = 0x32

.field private static final FORMAT_WGHT:Ljava/lang/String; = "\'wght\' "

.field private static final IS_USING_VAR_FONT:Z

.field private static final KEY_FONT_WEIGHT:Ljava/lang/String; = "key_miui_font_weight_scale"

.field public static final MIN_WGHT:I

.field private static final MITYPE_WGHT:[I

.field private static final MIUI_WGHT:[I

.field private static final RULES:[[[I

.field private static final THEME_FONT_DIR:Ljava/lang/String; = "/data/system/theme/fonts/"


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    .line 1
    invoke-static {}, Lmiuix/animation/font/VarFontUtils;->isUsingThemeFont()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_23

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    const/16 v4, 0x1a

    .line 14
    if-lt v0, v4, :cond_23

    .line 16
    invoke-static {}, Lmiuix/device/DeviceUtils;->getTotalRam()I

    .line 19
    move-result v0

    .line 20
    if-le v0, v1, :cond_23

    .line 22
    invoke-static {}, Lmiuix/animation/font/VarFontUtils;->isFontAnimDisabled()Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_23

    .line 28
    invoke-static {}, Lmiuix/device/DeviceUtils;->getDeviceLevel()I

    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_23

    .line 34
    move v0, v2

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v0, v3

    .line 37
    :goto_24
    sput-boolean v0, Lmiuix/animation/font/VarFontUtils;->IS_USING_VAR_FONT:Z

    .line 39
    if-eqz v0, :cond_126

    .line 41
    const/16 v0, 0xa

    .line 43
    new-array v4, v0, [I

    .line 45
    fill-array-data v4, :array_134

    .line 48
    sput-object v4, Lmiuix/animation/font/VarFontUtils;->MIUI_WGHT:[I

    .line 50
    new-array v4, v0, [I

    .line 52
    fill-array-data v4, :array_14c

    .line 55
    sput-object v4, Lmiuix/animation/font/VarFontUtils;->MITYPE_WGHT:[I

    .line 57
    sput v0, Lmiuix/animation/font/VarFontUtils;->MIN_WGHT:I

    .line 59
    const/4 v4, 0x3

    .line 60
    new-array v5, v4, [[[I

    .line 62
    sput-object v5, Lmiuix/animation/font/VarFontUtils;->RULES:[[[I

    .line 64
    new-array v6, v0, [[I

    .line 66
    const/4 v7, 0x2

    .line 67
    new-array v8, v7, [I

    .line 69
    fill-array-data v8, :array_164

    .line 72
    aput-object v8, v6, v3

    .line 74
    new-array v8, v7, [I

    .line 76
    fill-array-data v8, :array_16c

    .line 79
    aput-object v8, v6, v2

    .line 81
    new-array v8, v7, [I

    .line 83
    fill-array-data v8, :array_174

    .line 86
    aput-object v8, v6, v7

    .line 88
    new-array v8, v7, [I

    .line 90
    fill-array-data v8, :array_17c

    .line 93
    aput-object v8, v6, v4

    .line 95
    new-array v8, v7, [I

    .line 97
    fill-array-data v8, :array_184

    .line 100
    const/4 v9, 0x4

    .line 101
    aput-object v8, v6, v9

    .line 103
    new-array v8, v7, [I

    .line 105
    fill-array-data v8, :array_18c

    .line 108
    const/4 v10, 0x5

    .line 109
    aput-object v8, v6, v10

    .line 111
    new-array v8, v7, [I

    .line 113
    fill-array-data v8, :array_194

    .line 116
    aput-object v8, v6, v1

    .line 118
    new-array v8, v7, [I

    .line 120
    fill-array-data v8, :array_19c

    .line 123
    const/4 v11, 0x7

    .line 124
    aput-object v8, v6, v11

    .line 126
    new-array v8, v7, [I

    .line 128
    fill-array-data v8, :array_1a4

    .line 131
    const/16 v12, 0x8

    .line 133
    aput-object v8, v6, v12

    .line 135
    new-array v8, v7, [I

    .line 137
    fill-array-data v8, :array_1ac

    .line 140
    const/16 v13, 0x9

    .line 142
    aput-object v8, v6, v13

    .line 144
    aput-object v6, v5, v3

    .line 146
    new-array v6, v0, [[I

    .line 148
    new-array v8, v7, [I

    .line 150
    fill-array-data v8, :array_1b4

    .line 153
    aput-object v8, v6, v3

    .line 155
    new-array v8, v7, [I

    .line 157
    fill-array-data v8, :array_1bc

    .line 160
    aput-object v8, v6, v2

    .line 162
    new-array v8, v7, [I

    .line 164
    fill-array-data v8, :array_1c4

    .line 167
    aput-object v8, v6, v7

    .line 169
    new-array v8, v7, [I

    .line 171
    fill-array-data v8, :array_1cc

    .line 174
    aput-object v8, v6, v4

    .line 176
    new-array v8, v7, [I

    .line 178
    fill-array-data v8, :array_1d4

    .line 181
    aput-object v8, v6, v9

    .line 183
    new-array v8, v7, [I

    .line 185
    fill-array-data v8, :array_1dc

    .line 188
    aput-object v8, v6, v10

    .line 190
    new-array v8, v7, [I

    .line 192
    fill-array-data v8, :array_1e4

    .line 195
    aput-object v8, v6, v1

    .line 197
    new-array v8, v7, [I

    .line 199
    fill-array-data v8, :array_1ec

    .line 202
    aput-object v8, v6, v11

    .line 204
    new-array v8, v7, [I

    .line 206
    fill-array-data v8, :array_1f4

    .line 209
    aput-object v8, v6, v12

    .line 211
    new-array v8, v7, [I

    .line 213
    fill-array-data v8, :array_1fc

    .line 216
    aput-object v8, v6, v13

    .line 218
    aput-object v6, v5, v2

    .line 220
    new-array v0, v0, [[I

    .line 222
    new-array v6, v7, [I

    .line 224
    fill-array-data v6, :array_204

    .line 227
    aput-object v6, v0, v3

    .line 229
    new-array v3, v7, [I

    .line 231
    fill-array-data v3, :array_20c

    .line 234
    aput-object v3, v0, v2

    .line 236
    new-array v2, v7, [I

    .line 238
    fill-array-data v2, :array_214

    .line 241
    aput-object v2, v0, v7

    .line 243
    new-array v2, v7, [I

    .line 245
    fill-array-data v2, :array_21c

    .line 248
    aput-object v2, v0, v4

    .line 250
    new-array v2, v7, [I

    .line 252
    fill-array-data v2, :array_224

    .line 255
    aput-object v2, v0, v9

    .line 257
    new-array v2, v7, [I

    .line 259
    fill-array-data v2, :array_22c

    .line 262
    aput-object v2, v0, v10

    .line 264
    new-array v2, v7, [I

    .line 266
    fill-array-data v2, :array_234

    .line 269
    aput-object v2, v0, v1

    .line 271
    new-array v1, v7, [I

    .line 273
    fill-array-data v1, :array_23c

    .line 276
    aput-object v1, v0, v11

    .line 278
    new-array v1, v7, [I

    .line 280
    fill-array-data v1, :array_244

    .line 283
    aput-object v1, v0, v12

    .line 285
    new-array v1, v7, [I

    .line 287
    fill-array-data v1, :array_24c

    .line 290
    aput-object v1, v0, v13

    .line 292
    aput-object v0, v5, v7

    .line 294
    goto :goto_132

    .line 295
    :cond_126
    sput v3, Lmiuix/animation/font/VarFontUtils;->MIN_WGHT:I

    .line 297
    new-array v0, v3, [I

    .line 299
    sput-object v0, Lmiuix/animation/font/VarFontUtils;->MITYPE_WGHT:[I

    .line 301
    sput-object v0, Lmiuix/animation/font/VarFontUtils;->MIUI_WGHT:[I

    .line 303
    new-array v0, v3, [[[I

    .line 305
    sput-object v0, Lmiuix/animation/font/VarFontUtils;->RULES:[[[I

    .line 307
    :goto_132
    return-void

    .line 308
    nop

    .line 309
    :array_134
    .array-data 4
        0x96
        0xc8
        0xfa
        0x131
        0x154
        0x190
        0x1e0
        0x21c
        0x276
        0x2bc
    .end array-data

    .line 333
    :array_14c
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
    .end array-data

    .line 357
    :array_164
    .array-data 4
        0x0
        0x5
    .end array-data

    .line 365
    :array_16c
    .array-data 4
        0x0
        0x5
    .end array-data

    .line 373
    :array_174
    .array-data 4
        0x1
        0x6
    .end array-data

    .line 381
    :array_17c
    .array-data 4
        0x2
        0x6
    .end array-data

    .line 389
    :array_184
    .array-data 4
        0x2
        0x7
    .end array-data

    .line 397
    :array_18c
    .array-data 4
        0x3
        0x8
    .end array-data

    .line 405
    :array_194
    .array-data 4
        0x4
        0x8
    .end array-data

    .line 413
    :array_19c
    .array-data 4
        0x5
        0x9
    .end array-data

    .line 421
    :array_1a4
    .array-data 4
        0x6
        0x9
    .end array-data

    .line 429
    :array_1ac
    .array-data 4
        0x7
        0x9
    .end array-data

    .line 437
    :array_1b4
    .array-data 4
        0x0
        0x2
    .end array-data

    .line 445
    :array_1bc
    .array-data 4
        0x0
        0x3
    .end array-data

    .line 453
    :array_1c4
    .array-data 4
        0x1
        0x4
    .end array-data

    .line 461
    :array_1cc
    .array-data 4
        0x1
        0x5
    .end array-data

    .line 469
    :array_1d4
    .array-data 4
        0x2
        0x6
    .end array-data

    .line 477
    :array_1dc
    .array-data 4
        0x2
        0x7
    .end array-data

    .line 485
    :array_1e4
    .array-data 4
        0x3
        0x8
    .end array-data

    .line 493
    :array_1ec
    .array-data 4
        0x4
        0x9
    .end array-data

    .line 501
    :array_1f4
    .array-data 4
        0x5
        0x9
    .end array-data

    .line 509
    :array_1fc
    .array-data 4
        0x6
        0x9
    .end array-data

    .line 517
    :array_204
    .array-data 4
        0x0
        0x5
    .end array-data

    .line 525
    :array_20c
    .array-data 4
        0x1
        0x5
    .end array-data

    .line 533
    :array_214
    .array-data 4
        0x2
        0x5
    .end array-data

    .line 541
    :array_21c
    .array-data 4
        0x3
        0x6
    .end array-data

    .line 549
    :array_224
    .array-data 4
        0x3
        0x6
    .end array-data

    .line 557
    :array_22c
    .array-data 4
        0x4
        0x7
    .end array-data

    .line 565
    :array_234
    .array-data 4
        0x5
        0x8
    .end array-data

    .line 573
    :array_23c
    .array-data 4
        0x6
        0x8
    .end array-data

    .line 581
    :array_244
    .array-data 4
        0x7
        0x8
    .end array-data

    .line 589
    :array_24c
    .array-data 4
        0x8
        0x9
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScaleWeight(IFII)I
    .registers 7

    .line 1
    sget-boolean v0, Lmiuix/animation/font/VarFontUtils;->IS_USING_VAR_FONT:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return p0

    .line 6
    :cond_5
    invoke-static {p0, p1}, Lmiuix/animation/font/VarFontUtils;->getWeightRange(IF)[I

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    aget v0, p1, v0

    .line 13
    invoke-static {v0, p2}, Lmiuix/animation/font/VarFontUtils;->getWeightByType(II)I

    .line 16
    move-result v0

    .line 17
    invoke-static {p0, p2}, Lmiuix/animation/font/VarFontUtils;->getWeightByType(II)I

    .line 20
    move-result p0

    .line 21
    const/4 v1, 0x1

    .line 22
    aget p1, p1, v1

    .line 24
    invoke-static {p1, p2}, Lmiuix/animation/font/VarFontUtils;->getWeightByType(II)I

    .line 27
    move-result p1

    .line 28
    const/high16 p2, 0x3f800000  # 1.0f

    .line 30
    const/high16 v1, 0x42480000  # 50.0f

    .line 32
    const/16 v2, 0x32

    .line 34
    if-ge p3, v2, :cond_2d

    .line 36
    int-to-float p1, p3

    .line 37
    div-float/2addr p1, v1

    .line 38
    sub-float/2addr p2, p1

    .line 39
    int-to-float p3, v0

    .line 40
    mul-float/2addr p2, p3

    .line 41
    int-to-float p0, p0

    .line 42
    mul-float/2addr p1, p0

    .line 43
    add-float/2addr p1, p2

    .line 44
    float-to-int p0, p1

    .line 45
    goto :goto_39

    .line 46
    :cond_2d
    if-le p3, v2, :cond_39

    .line 48
    sub-int/2addr p3, v2

    .line 49
    int-to-float p3, p3

    .line 50
    div-float/2addr p3, v1

    .line 51
    sub-float/2addr p2, p3

    .line 52
    int-to-float p0, p0

    .line 53
    mul-float/2addr p2, p0

    .line 54
    int-to-float p0, p1

    .line 55
    mul-float/2addr p3, p0

    .line 56
    add-float/2addr p3, p2

    .line 57
    float-to-int p0, p3

    .line 58
    :cond_39
    :goto_39
    return p0
.end method

.method public static getSysFontScale(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "key_miui_font_weight_scale"

    .line 7
    const/16 v1, 0x32

    .line 9
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private static getWeightArray(I)[I
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_a

    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p0, v0, :cond_7

    .line 7
    goto :goto_a

    .line 8
    :cond_7
    sget-object p0, Lmiuix/animation/font/VarFontUtils;->MIUI_WGHT:[I

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    :goto_a
    sget-object p0, Lmiuix/animation/font/VarFontUtils;->MITYPE_WGHT:[I

    .line 13
    :goto_c
    return-object p0
.end method

.method private static getWeightByType(II)I
    .registers 2

    .line 1
    invoke-static {p1}, Lmiuix/animation/font/VarFontUtils;->getWeightArray(I)[I

    .line 4
    move-result-object p1

    .line 5
    aget p0, p1, p0

    .line 7
    return p0
.end method

.method private static getWeightRange(IF)[I
    .registers 3

    .line 1
    const/high16 v0, 0x41a00000  # 20.0f

    .line 3
    cmpl-float v0, p1, v0

    .line 5
    if-lez v0, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_16

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    cmpl-float v0, p1, v0

    .line 12
    if-lez v0, :cond_15

    .line 14
    const/high16 v0, 0x41400000  # 12.0f

    .line 16
    cmpg-float p1, p1, v0

    .line 18
    if-gez p1, :cond_15

    .line 20
    const/4 p1, 0x2

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    :goto_16
    sget-object v0, Lmiuix/animation/font/VarFontUtils;->RULES:[[[I

    .line 25
    aget-object p1, v0, p1

    .line 27
    aget-object p0, p1, p0

    .line 29
    return-object p0
.end method

.method private static isFontAnimDisabled()Z
    .registers 3

    .line 1
    :try_start_0
    const-string v0, "ro.miui.ui.font.animation"

    .line 3
    invoke-static {v0}, Lmiuix/animation/utils/CommonUtils;->readProp(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "disable"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 13
    return v0

    .line 14
    :catch_d
    move-exception v0

    .line 15
    const-string v1, "miuix_anim"

    .line 17
    const-string v2, "isFontAnimationEnabled failed"

    .line 19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method private static isUsingThemeFont()Z
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/data/system/theme/fonts/"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_21

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_18

    .line 21
    array-length v0, v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_19

    .line 22
    if-lez v0, :cond_18

    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_18
    return v1

    .line 26
    :catch_19
    move-exception v0

    .line 27
    const-string v2, "miuix_anim"

    .line 29
    const-string v3, "isUsingThemeFont, failed to check theme font directory"

    .line 31
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :cond_21
    return v1
.end method

.method public static setVariationFont(Landroid/widget/TextView;I)V
    .registers 4

    .line 1
    sget-boolean v0, Lmiuix/animation/font/VarFontUtils;->IS_USING_VAR_FONT:Z

    .line 3
    if-eqz v0, :cond_18

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v1, "\'wght\' "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {p0, p1}, Landroidx/appcompat/widget/x;->s(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 25
    :cond_18
    return-void
.end method
