.class public Lcom/miui/maml/elements/ImageNumberScreenElement;
.super Lcom/miui/maml/elements/ImageScreenElement;
.source "ImageNumberScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ImageNumber"

.field public static final TAG_NAME1:Ljava/lang/String; = "ImageChars"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mBmpHeight:I

.field private mBmpWidth:I

.field private mCachedBmp:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field private mNameMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;",
            ">;"
        }
    .end annotation
.end field

.field private mNumExpression:Lcom/miui/maml/data/Expression;

.field private mOldSrc:Ljava/lang/String;

.field private mPreNumber:D

.field private mPreStr:Ljava/lang/String;

.field private mSpace:I

.field private mSpaceExpression:Lcom/miui/maml/data/Expression;

.field private mStrExpression:Lcom/miui/maml/data/Expression;

.field private mStrValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 10

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    const-string p2, "ImageNumberScreenElement"

    .line 6
    iput-object p2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    .line 8
    const-wide/16 v0, 0x1

    .line 10
    iput-wide v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 15
    move-result-object p2

    .line 16
    const-string v0, "number"

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lcom/miui/maml/data/Expression;

    .line 28
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 31
    move-result-object p2

    .line 32
    const-string v0, "string"

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 41
    move-result-object p2

    .line 42
    iput-object p2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lcom/miui/maml/data/Expression;

    .line 44
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 47
    move-result-object p2

    .line 48
    const-string v0, "space"

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 57
    move-result-object p2

    .line 58
    iput-object p2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mSpaceExpression:Lcom/miui/maml/data/Expression;

    .line 60
    const-string p2, "charNameMap"

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    move-result p2

    .line 70
    if-nez p2, :cond_71

    .line 72
    new-instance p2, Ljava/util/ArrayList;

    .line 74
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    .line 79
    const-string p2, ","

    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    array-length p2, p1

    .line 86
    const/4 v0, 0x0

    .line 87
    move v1, v0

    .line 88
    :goto_57
    if-ge v1, p2, :cond_71

    .line 90
    aget-object v2, p1, v1

    .line 92
    iget-object v3, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    .line 94
    new-instance v4, Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;

    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 99
    move-result v5

    .line 100
    const/4 v6, 0x1

    .line 101
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 104
    move-result-object v2

    .line 105
    invoke-direct {v4, p0, v5, v2}, Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;-><init>(Lcom/miui/maml/elements/ImageNumberScreenElement;CLjava/lang/String;)V

    .line 108
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 113
    goto :goto_57

    .line 114
    :cond_71
    return-void
.end method

.method private charToStr(C)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_1b

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1b

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;

    .line 21
    iget-char v2, v1, Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;->ch:C

    .line 23
    if-ne v2, p1, :cond_8

    .line 25
    iget-object p1, v1, Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;->name:Ljava/lang/String;

    .line 27
    return-object p1

    .line 28
    :cond_1b
    const/16 v0, 0x2e

    .line 30
    if-ne p1, v0, :cond_22

    .line 32
    const-string p1, "dot"

    .line 34
    return-object p1

    .line 35
    :cond_22
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method private getNumberBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 8
    move-result-object p2

    .line 9
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 11
    invoke-virtual {p2, p1}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method


# virtual methods
.method public doTick(J)V
    .registers 15

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->doTick(J)V

    .line 4
    iget-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lcom/miui/maml/data/Expression;

    .line 6
    const/4 p2, 0x0

    .line 7
    if-nez p1, :cond_21

    .line 9
    iget-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lcom/miui/maml/data/Expression;

    .line 11
    if-nez p1, :cond_21

    .line 13
    iget-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    .line 15
    if-nez p1, :cond_21

    .line 17
    iget-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 19
    if-eqz p1, :cond_20

    .line 21
    iput-object p2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 23
    iput-object p2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    .line 25
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 27
    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 30
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmapVars()V

    .line 33
    :cond_20
    return-void

    .line 34
    :cond_21
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mOldSrc:Ljava/lang/String;

    .line 40
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 43
    move-result v0

    .line 44
    xor-int/lit8 v0, v0, 0x1

    .line 46
    iget-object v1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lcom/miui/maml/data/Expression;

    .line 48
    if-eqz v1, :cond_45

    .line 50
    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 53
    move-result-wide v1

    .line 54
    iget-wide v3, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    .line 56
    cmpl-double v3, v1, v3

    .line 58
    if-nez v3, :cond_3e

    .line 60
    if-nez v0, :cond_3e

    .line 62
    return-void

    .line 63
    :cond_3e
    iput-wide v1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    .line 65
    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    goto :goto_68

    .line 70
    :cond_45
    iget-object v1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lcom/miui/maml/data/Expression;

    .line 72
    if-nez v1, :cond_50

    .line 74
    iget-object v2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    .line 76
    if-eqz v2, :cond_4e

    .line 78
    goto :goto_50

    .line 79
    :cond_4e
    move-object v0, p2

    .line 80
    goto :goto_68

    .line 81
    :cond_50
    :goto_50
    iget-object v2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    .line 83
    if-eqz v2, :cond_56

    .line 85
    move-object v1, v2

    .line 86
    goto :goto_5a

    .line 87
    :cond_56
    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ScreenElement;->evaluateStr(Lcom/miui/maml/data/Expression;)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    :goto_5a
    iget-object v2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    .line 93
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_65

    .line 99
    if-nez v0, :cond_65

    .line 101
    return-void

    .line 102
    :cond_65
    iput-object v1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    .line 104
    move-object v0, v1

    .line 105
    :goto_68
    iget-object v1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 107
    const/4 v2, 0x0

    .line 108
    if-eqz v1, :cond_70

    .line 110
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 113
    :cond_70
    iput-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mOldSrc:Ljava/lang/String;

    .line 115
    iput v2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    .line 117
    if-eqz v0, :cond_7b

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 122
    move-result v1

    .line 123
    goto :goto_7c

    .line 124
    :cond_7b
    move v1, v2

    .line 125
    :goto_7c
    move v3, v2

    .line 126
    :goto_7d
    if-ge v3, v1, :cond_128

    .line 128
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 131
    move-result v4

    .line 132
    invoke-direct {p0, v4}, Lcom/miui/maml/elements/ImageNumberScreenElement;->charToStr(C)Ljava/lang/String;

    .line 135
    move-result-object v4

    .line 136
    invoke-direct {p0, p1, v4}, Lcom/miui/maml/elements/ImageNumberScreenElement;->getNumberBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 139
    move-result-object v4

    .line 140
    if-nez v4, :cond_a8

    .line 142
    iget-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    .line 144
    const-string p2, "Fail to get bitmap for number "

    .line 146
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 153
    move-result v0

    .line 154
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object p2

    .line 165
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 169
    :cond_a8
    iget v5, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    .line 171
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 174
    move-result v6

    .line 175
    add-int/2addr v6, v5

    .line 176
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 179
    move-result v5

    .line 180
    iget-object v7, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 182
    if-nez v7, :cond_b9

    .line 184
    move v7, v2

    .line 185
    goto :goto_bd

    .line 186
    :cond_b9
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 189
    move-result v7

    .line 190
    :goto_bd
    iget-object v8, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 192
    if-nez v8, :cond_c3

    .line 194
    move v8, v2

    .line 195
    goto :goto_c7

    .line 196
    :cond_c3
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 199
    move-result v8

    .line 200
    :goto_c7
    const/4 v9, 0x0

    .line 201
    if-gt v6, v7, :cond_cc

    .line 203
    if-le v5, v8, :cond_10a

    .line 205
    :cond_cc
    iget-object v10, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 207
    if-le v6, v7, :cond_e1

    .line 209
    sub-int v6, v1, v3

    .line 211
    iget v7, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    .line 213
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 216
    move-result v11

    .line 217
    mul-int/2addr v11, v6

    .line 218
    add-int/2addr v11, v7

    .line 219
    iget v7, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mSpace:I

    .line 221
    add-int/lit8 v6, v6, -0x1

    .line 223
    mul-int/2addr v6, v7

    .line 224
    add-int v7, v6, v11

    .line 226
    :cond_e1
    if-gt v5, v8, :cond_e4

    .line 228
    move v5, v8

    .line 229
    :cond_e4
    iput v5, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    .line 231
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 233
    invoke-static {v7, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 236
    move-result-object v5

    .line 237
    iput-object v5, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 239
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    .line 242
    move-result v6

    .line 243
    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 246
    iget-object v5, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 248
    iget-object v6, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 250
    invoke-virtual {v5, v6}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 253
    new-instance v5, Landroid/graphics/Canvas;

    .line 255
    iget-object v6, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 257
    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 260
    iput-object v5, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 262
    if-eqz v10, :cond_10a

    .line 264
    invoke-virtual {v5, v10, v9, v9, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 267
    :cond_10a
    iget-object v5, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 269
    iget v6, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    .line 271
    int-to-float v6, v6

    .line 272
    invoke-virtual {v5, v4, v6, v9, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 275
    iget v5, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    .line 277
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 280
    move-result v4

    .line 281
    add-int/2addr v4, v5

    .line 282
    iput v4, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    .line 284
    add-int/lit8 v5, v1, -0x1

    .line 286
    if-ge v3, v5, :cond_124

    .line 288
    iget v5, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mSpace:I

    .line 290
    add-int/2addr v4, v5

    .line 291
    iput v4, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    .line 293
    :cond_124
    add-int/lit8 v3, v3, 0x1

    .line 295
    goto/16 :goto_7d

    .line 297
    :cond_128
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 299
    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    .line 302
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmapVars()V

    .line 305
    return-void
.end method

.method public finish()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ImageScreenElement;->finish()V

    .line 4
    const-wide/16 v0, 0x1

    .line 6
    iput-wide v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public getBitmapHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    .line 3
    return v0
.end method

.method public getBitmapWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    .line 3
    return v0
.end method

.method public init()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ImageScreenElement;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mSpaceExpression:Lcom/miui/maml/data/Expression;

    .line 6
    if-nez v0, :cond_9

    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_12

    .line 10
    :cond_9
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 17
    move-result v0

    .line 18
    float-to-int v0, v0

    .line 19
    :goto_12
    iput v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mSpace:I

    .line 21
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 23
    iget-object v1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 25
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 28
    return-void
.end method

.method public setValue(D)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageNumberScreenElement;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    return-void
.end method

.method public updateBitmapImpl(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 3
    iget-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmapVars()V

    .line 11
    return-void
.end method
