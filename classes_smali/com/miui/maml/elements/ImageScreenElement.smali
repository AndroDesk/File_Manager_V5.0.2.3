.class public Lcom/miui/maml/elements/ImageScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "ImageScreenElement.java"

# interfaces
.implements Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ImageScreenElement$Mask;,
        Lcom/miui/maml/elements/ImageScreenElement$pair;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageScreenElement"

.field public static final MASK_TAG_NAME:Ljava/lang/String; = "Mask"

.field private static final PI:D = 3.1415926535897

.field public static final TAG_NAME:Ljava/lang/String; = "Image"

.field private static final VAR_BMP_HEIGHT:Ljava/lang/String; = "bmp_height"

.field private static final VAR_BMP_WIDTH:Ljava/lang/String; = "bmp_width"

.field private static final VAR_HAS_BITMAP:Ljava/lang/String; = "has_bitmap"


# instance fields
.field private mAntiAlias:Z

.field public mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

.field private mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mBlurRadius:I

.field private mBmpSizeHeightVar:Lcom/miui/maml/data/IndexedVariable;

.field private mBmpSizeWidthVar:Lcom/miui/maml/data/IndexedVariable;

.field public mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

.field private mDesRect:Landroid/graphics/Rect;

.field private mExpH:Lcom/miui/maml/data/Expression;

.field private mExpSrcH:Lcom/miui/maml/data/Expression;

.field private mExpSrcW:Lcom/miui/maml/data/Expression;

.field private mExpSrcX:Lcom/miui/maml/data/Expression;

.field private mExpSrcY:Lcom/miui/maml/data/Expression;

.field private mExpW:Lcom/miui/maml/data/Expression;

.field private mH:I

.field private mHasBitmapVar:Lcom/miui/maml/data/IndexedVariable;

.field private mHasSrcRect:Z

.field private mHasWidthAndHeight:Z

.field private mIsLoadAsyncSet:Z

.field private mLoadAsync:Z

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ImageScreenElement$Mask;",
            ">;"
        }
    .end annotation
.end field

.field private mMeshHeight:I

.field private mMeshVerts:[F

.field private mMeshWidth:I

.field public mPaint:Landroid/graphics/Paint;

.field private mPendingBlur:Z

.field private mRawBlurRadius:I

.field private mRetainWhenInvisible:Z

.field private mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/maml/elements/ImageScreenElement$pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSources:Lcom/miui/maml/animation/SourcesAnimation;

.field private mSrc:Ljava/lang/String;

.field private mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

.field private mSrcH:I

.field private mSrcIdExpression:Lcom/miui/maml/data/Expression;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcW:I

.field private mSrcX:I

.field private mSrcY:I

.field private mW:I

.field private mXfermodeNumExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p2, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p2, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    iput-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 12
    new-instance p2, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 14
    invoke-direct {p2, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 17
    iput-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 19
    new-instance p2, Landroid/graphics/Paint;

    .line 21
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 26
    new-instance p2, Landroid/graphics/Paint;

    .line 28
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 33
    new-instance p2, Landroid/graphics/Rect;

    .line 35
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 40
    const/4 p2, -0x1

    .line 41
    iput p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mW:I

    .line 43
    iput p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mH:I

    .line 45
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 48
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 10

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object v7

    .line 8
    const-string v2, "src"

    .line 10
    const-string v3, "srcFormat"

    .line 12
    const-string v4, "srcParas"

    .line 14
    const-string v5, "srcExp"

    .line 16
    const-string v6, "srcFormatExp"

    .line 18
    move-object v0, v7

    .line 19
    move-object v1, p1

    .line 20
    invoke-static/range {v0 .. v6}, Lcom/miui/maml/util/TextFormatter;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 26
    const-string v0, "srcid"

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lcom/miui/maml/data/Expression;

    .line 38
    const-string v0, "antiAlias"

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    const-string v1, "false"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x1

    .line 51
    xor-int/2addr v0, v1

    .line 52
    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    .line 54
    iget-object v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 59
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    .line 63
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 65
    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 68
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 71
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 73
    iget-boolean v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    .line 75
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 78
    const-string v0, "srcX"

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcX:Lcom/miui/maml/data/Expression;

    .line 90
    const-string v0, "srcY"

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcY:Lcom/miui/maml/data/Expression;

    .line 102
    const-string v0, "srcW"

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcW:Lcom/miui/maml/data/Expression;

    .line 114
    const-string v0, "srcH"

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcH:Lcom/miui/maml/data/Expression;

    .line 126
    const-string v0, "w"

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 135
    move-result-object v0

    .line 136
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpW:Lcom/miui/maml/data/Expression;

    .line 138
    const-string v0, "h"

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 147
    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpH:Lcom/miui/maml/data/Expression;

    .line 150
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcW:Lcom/miui/maml/data/Expression;

    .line 152
    if-eqz v0, :cond_a6

    .line 154
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcH:Lcom/miui/maml/data/Expression;

    .line 156
    if-eqz v0, :cond_a6

    .line 158
    iput-boolean v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    .line 162
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 165
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 167
    :cond_a6
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpH:Lcom/miui/maml/data/Expression;

    .line 169
    if-eqz v0, :cond_b0

    .line 171
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpW:Lcom/miui/maml/data/Expression;

    .line 173
    if-eqz v0, :cond_b0

    .line 175
    iput-boolean v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasWidthAndHeight:Z

    .line 177
    :cond_b0
    const/4 v0, 0x0

    .line 178
    const-string v2, "blur"

    .line 180
    invoke-virtual {p0, p1, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 183
    move-result v0

    .line 184
    iput v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mRawBlurRadius:I

    .line 186
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->loadMesh(Lorg/w3c/dom/Element;)V

    .line 189
    const-string v0, "xfermodeNum"

    .line 191
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 198
    move-result-object v0

    .line 199
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 201
    if-nez v0, :cond_de

    .line 203
    const-string v0, "xfermode"

    .line 205
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    .line 212
    move-result-object v0

    .line 213
    iget-object v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 215
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    .line 217
    invoke-direct {v3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 220
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 223
    :cond_de
    const-string v0, "useVirtualScreen"

    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    move-result-object v0

    .line 229
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 232
    move-result v0

    .line 233
    const-string v2, "srcType"

    .line 235
    invoke-virtual {p0, p1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    move-result-object v2

    .line 239
    if-eqz v0, :cond_f2

    .line 241
    const-string v2, "VirtualScreen"

    .line 243
    :cond_f2
    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ImageScreenElement;->setSrcType(Ljava/lang/String;)V

    .line 246
    const-string v0, "loadAsync"

    .line 248
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    move-result-object v0

    .line 252
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 255
    move-result v2

    .line 256
    if-nez v2, :cond_109

    .line 258
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 261
    move-result v0

    .line 262
    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 264
    iput-boolean v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mIsLoadAsyncSet:Z

    .line 266
    :cond_109
    const-string v0, "retainWhenInvisible"

    .line 268
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    move-result-object v0

    .line 272
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 275
    move-result v0

    .line 276
    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mRetainWhenInvisible:Z

    .line 278
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 280
    if-eqz v0, :cond_157

    .line 282
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    .line 286
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 291
    const-string v4, "."

    .line 293
    const-string v5, "bmp_width"

    .line 295
    invoke-static {v2, v3, v4, v5}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    move-result-object v2

    .line 299
    invoke-direct {v0, v2, v7, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 302
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 304
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    .line 308
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 313
    const-string v5, "bmp_height"

    .line 315
    invoke-static {v2, v3, v4, v5}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    move-result-object v2

    .line 319
    invoke-direct {v0, v2, v7, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 322
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 324
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    .line 328
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 333
    const-string v5, "has_bitmap"

    .line 335
    invoke-static {v2, v3, v4, v5}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    move-result-object v2

    .line 339
    invoke-direct {v0, v2, v7, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 342
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasBitmapVar:Lcom/miui/maml/data/IndexedVariable;

    .line 344
    :cond_157
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->loadMask(Lorg/w3c/dom/Element;)V

    .line 347
    return-void
.end method

.method private loadMask(Lorg/w3c/dom/Element;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    const-string v0, "Mask"

    .line 19
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_17
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 27
    move-result v1

    .line 28
    if-ge v0, v1, :cond_32

    .line 30
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 32
    new-instance v2, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 34
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lorg/w3c/dom/Element;

    .line 40
    iget-object v4, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 42
    invoke-direct {v2, p0, v3, v4}, Lcom/miui/maml/elements/ImageScreenElement$Mask;-><init>(Lcom/miui/maml/elements/ImageScreenElement;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 45
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_17

    .line 51
    :cond_32
    return-void
.end method

.method private renderWithMask(Landroid/graphics/Canvas;Lcom/miui/maml/elements/ImageScreenElement$Mask;II)V
    .registers 34

    .line 1
    move-object/from16 v8, p0

    .line 3
    move-object/from16 v9, p1

    .line 5
    move/from16 v10, p3

    .line 7
    move/from16 v11, p4

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 22
    move-result-object v12

    .line 23
    if-nez v12, :cond_19

    .line 25
    return-void

    .line 26
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement;->getX()F

    .line 32
    move-result v0

    .line 33
    float-to-double v13, v0

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement;->getY()F

    .line 37
    move-result v0

    .line 38
    float-to-double v5, v0

    .line 39
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotation()F

    .line 42
    move-result v0

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->isAlignAbsolute()Z

    .line 46
    move-result v1

    .line 47
    const/4 v15, 0x0

    .line 48
    if-eqz v1, :cond_10d

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotation()F

    .line 53
    move-result v1

    .line 54
    const/4 v2, 0x0

    .line 55
    cmpl-float v2, v1, v2

    .line 57
    if-nez v2, :cond_40

    .line 59
    int-to-double v1, v10

    .line 60
    sub-double/2addr v13, v1

    .line 61
    int-to-double v1, v11

    .line 62
    sub-double/2addr v5, v1

    .line 63
    goto/16 :goto_100

    .line 65
    :cond_40
    sub-float v16, v0, v1

    .line 67
    float-to-double v0, v1

    .line 68
    const-wide v17, 0x400921fb54442c46L  # 3.1415926535897

    .line 73
    mul-double v0, v0, v17

    .line 75
    const-wide v19, 0x4066800000000000L  # 180.0

    .line 80
    div-double v21, v0, v19

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotX()F

    .line 85
    move-result v0

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotY()F

    .line 89
    move-result v1

    .line 90
    iget-object v2, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 92
    if-nez v2, :cond_64

    .line 94
    new-instance v2, Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 96
    invoke-direct {v2, v15}, Lcom/miui/maml/elements/ImageScreenElement$pair;-><init>(Lcom/miui/maml/elements/ImageScreenElement$1;)V

    .line 99
    iput-object v2, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 101
    :cond_64
    float-to-double v2, v0

    .line 102
    float-to-double v0, v1

    .line 103
    iget-object v7, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 105
    move-wide/from16 v23, v0

    .line 107
    move-object/from16 v0, p0

    .line 109
    move-wide v1, v2

    .line 110
    move-wide/from16 v3, v23

    .line 112
    move-wide/from16 v23, v5

    .line 114
    move-wide/from16 v5, v21

    .line 116
    invoke-direct/range {v0 .. v7}, Lcom/miui/maml/elements/ImageScreenElement;->rotateXY(DDDLcom/miui/maml/elements/ImageScreenElement$pair;)V

    .line 119
    int-to-double v0, v10

    .line 120
    iget-object v2, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 122
    iget-object v2, v2, Lcom/miui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 124
    check-cast v2, Ljava/lang/Double;

    .line 126
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 129
    move-result-wide v2

    .line 130
    add-double v25, v2, v0

    .line 132
    int-to-double v0, v11

    .line 133
    iget-object v2, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 135
    iget-object v2, v2, Lcom/miui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 137
    check-cast v2, Ljava/lang/Double;

    .line 139
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 142
    move-result-wide v2

    .line 143
    add-double v27, v2, v0

    .line 145
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotX()F

    .line 148
    move-result v0

    .line 149
    float-to-double v0, v0

    .line 150
    invoke-virtual {v8, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 153
    move-result-wide v1

    .line 154
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotY()F

    .line 157
    move-result v0

    .line 158
    float-to-double v3, v0

    .line 159
    invoke-virtual {v8, v3, v4}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 162
    move-result-wide v3

    .line 163
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotation()F

    .line 166
    move-result v0

    .line 167
    float-to-double v5, v0

    .line 168
    mul-double v5, v5, v17

    .line 170
    div-double v5, v5, v19

    .line 172
    iget-object v7, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 174
    move-object/from16 v0, p0

    .line 176
    invoke-direct/range {v0 .. v7}, Lcom/miui/maml/elements/ImageScreenElement;->rotateXY(DDDLcom/miui/maml/elements/ImageScreenElement$pair;)V

    .line 179
    iget-object v0, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 181
    iget-object v0, v0, Lcom/miui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 183
    check-cast v0, Ljava/lang/Double;

    .line 185
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 188
    move-result-wide v0

    .line 189
    invoke-virtual {v8, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 192
    move-result v0

    .line 193
    float-to-double v0, v0

    .line 194
    add-double/2addr v13, v0

    .line 195
    iget-object v0, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    .line 197
    iget-object v0, v0, Lcom/miui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 199
    check-cast v0, Ljava/lang/Double;

    .line 201
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 204
    move-result-wide v0

    .line 205
    invoke-virtual {v8, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 208
    move-result v0

    .line 209
    float-to-double v0, v0

    .line 210
    add-double v5, v23, v0

    .line 212
    sub-double v13, v13, v25

    .line 214
    sub-double v5, v5, v27

    .line 216
    mul-double v0, v13, v13

    .line 218
    mul-double v2, v5, v5

    .line 220
    add-double/2addr v2, v0

    .line 221
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 224
    move-result-wide v0

    .line 225
    div-double/2addr v13, v0

    .line 226
    invoke-static {v13, v14}, Ljava/lang/Math;->asin(D)D

    .line 229
    move-result-wide v2

    .line 230
    const-wide/16 v13, 0x0

    .line 232
    cmpl-double v4, v5, v13

    .line 234
    if-lez v4, :cond_ee

    .line 236
    add-double v21, v21, v2

    .line 238
    goto :goto_f2

    .line 239
    :cond_ee
    add-double v21, v21, v17

    .line 241
    sub-double v21, v21, v2

    .line 243
    :goto_f2
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    .line 246
    move-result-wide v2

    .line 247
    mul-double v13, v2, v0

    .line 249
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    .line 252
    move-result-wide v2

    .line 253
    mul-double v5, v2, v0

    .line 255
    move/from16 v0, v16

    .line 257
    :goto_100
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getX()F

    .line 260
    move-result v1

    .line 261
    float-to-double v1, v1

    .line 262
    sub-double/2addr v13, v1

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getY()F

    .line 266
    move-result v1

    .line 267
    float-to-double v1, v1

    .line 268
    sub-double/2addr v5, v1

    .line 269
    goto :goto_10f

    .line 270
    :cond_10d
    move-wide/from16 v23, v5

    .line 272
    :goto_10f
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotX()F

    .line 275
    move-result v1

    .line 276
    float-to-double v1, v1

    .line 277
    add-double/2addr v1, v13

    .line 278
    int-to-double v3, v10

    .line 279
    add-double/2addr v1, v3

    .line 280
    double-to-float v1, v1

    .line 281
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotY()F

    .line 284
    move-result v2

    .line 285
    float-to-double v2, v2

    .line 286
    add-double/2addr v2, v5

    .line 287
    int-to-double v7, v11

    .line 288
    add-double/2addr v2, v7

    .line 289
    double-to-float v2, v2

    .line 290
    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 293
    double-to-int v0, v13

    .line 294
    double-to-int v1, v5

    .line 295
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement;->getWidth()F

    .line 298
    move-result v2

    .line 299
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 302
    move-result v2

    .line 303
    if-gez v2, :cond_134

    .line 305
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    .line 308
    move-result v2

    .line 309
    :cond_134
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement;->getHeight()F

    .line 312
    move-result v3

    .line 313
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 316
    move-result v3

    .line 317
    if-gez v3, :cond_142

    .line 319
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    .line 322
    move-result v3

    .line 323
    :cond_142
    move-object/from16 v4, p0

    .line 325
    iget-object v5, v4, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 327
    add-int/2addr v0, v10

    .line 328
    add-int/2addr v1, v11

    .line 329
    add-int/2addr v2, v0

    .line 330
    add-int/2addr v3, v1

    .line 331
    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 334
    iget-object v0, v4, Lcom/miui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 336
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAlpha()I

    .line 339
    move-result v1

    .line 340
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 343
    iget-object v0, v4, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 345
    iget-object v1, v4, Lcom/miui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 347
    invoke-virtual {v9, v12, v15, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 353
    return-void
.end method

.method private rotateXY(DDDLcom/miui/maml/elements/ImageScreenElement$pair;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD",
            "Lcom/miui/maml/elements/ImageScreenElement$pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 1
    mul-double v0, p1, p1

    .line 3
    mul-double v2, p3, p3

    .line 5
    add-double/2addr v2, v0

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 15
    move-result-object v4

    .line 16
    cmpl-double v2, v0, v2

    .line 18
    if-lez v2, :cond_39

    .line 20
    div-double v2, p1, v0

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    .line 25
    move-result-wide v2

    .line 26
    const-wide v4, 0x400921fb54442c46L  # 3.1415926535897

    .line 31
    sub-double/2addr v4, v2

    .line 32
    sub-double/2addr v4, p5

    .line 33
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 36
    move-result-wide p5

    .line 37
    mul-double/2addr p5, v0

    .line 38
    add-double/2addr p5, p1

    .line 39
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p7, Lcom/miui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 48
    move-result-wide p1

    .line 49
    mul-double/2addr p1, v0

    .line 50
    sub-double/2addr p3, p1

    .line 51
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p7, Lcom/miui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 57
    goto :goto_3d

    .line 58
    :cond_39
    iput-object v4, p7, Lcom/miui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 60
    iput-object v4, p7, Lcom/miui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 62
    :goto_3d
    return-void
.end method

.method private updateBitmap(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmapImpl(Z)V

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mIsLoadAsyncSet:Z

    .line 6
    if-nez v0, :cond_c

    .line 8
    if-nez p1, :cond_c

    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 13
    :cond_c
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v10, p1

    .line 5
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 7
    invoke-virtual {v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    iget-boolean v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_52

    .line 19
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 21
    if-eqz v2, :cond_2e

    .line 23
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 26
    move-result v2

    .line 27
    iget-object v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 29
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 32
    move-result v4

    .line 33
    if-ne v2, v4, :cond_2e

    .line 35
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 38
    move-result v2

    .line 39
    iget-object v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 41
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 44
    move-result v4

    .line 45
    if-eq v2, v4, :cond_3e

    .line 47
    :cond_2e
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 54
    move-result v4

    .line 55
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 57
    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 60
    move-result-object v2

    .line 61
    iput-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 63
    :cond_3e
    iput-boolean v3, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 65
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 67
    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 70
    move-result-object v2

    .line 71
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 73
    iget-object v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 75
    iget v5, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 77
    invoke-static {v2, v1, v4, v5}, Lmiuix/graphics/BitmapFactory;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 80
    move-result-object v2

    .line 81
    iput-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 83
    :cond_52
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 85
    if-eqz v2, :cond_5c

    .line 87
    iget v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 89
    if-lez v4, :cond_5c

    .line 91
    move-object v8, v2

    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    move-object v8, v1

    .line 94
    :goto_5d
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAlpha()I

    .line 97
    move-result v1

    .line 98
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 100
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    .line 106
    move-result v11

    .line 107
    invoke-virtual {v10, v3}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getWidth()F

    .line 113
    move-result v9

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getHeight()F

    .line 117
    move-result v12

    .line 118
    invoke-super/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 121
    move-result v13

    .line 122
    invoke-super/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 125
    move-result v14

    .line 126
    const/4 v15, 0x0

    .line 127
    cmpl-float v1, v9, v15

    .line 129
    if-eqz v1, :cond_1cb

    .line 131
    cmpl-float v1, v12, v15

    .line 133
    if-nez v1, :cond_88

    .line 135
    goto/16 :goto_1cb

    .line 137
    :cond_88
    invoke-virtual {v0, v15, v9}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 140
    move-result v1

    .line 141
    float-to-int v7, v1

    .line 142
    invoke-virtual {v0, v15, v12}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 145
    move-result v1

    .line 146
    float-to-int v6, v1

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_135

    .line 158
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    .line 161
    move-result-object v1

    .line 162
    if-eqz v1, :cond_df

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 167
    move-result-object v1

    .line 168
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Lcom/miui/maml/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    .line 177
    move-result-object v1

    .line 178
    if-eqz v1, :cond_c7

    .line 180
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 182
    int-to-float v3, v7

    .line 183
    add-float/2addr v3, v9

    .line 184
    float-to-int v3, v3

    .line 185
    int-to-float v4, v6

    .line 186
    add-float/2addr v4, v12

    .line 187
    float-to-int v4, v4

    .line 188
    invoke-virtual {v2, v7, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 191
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 193
    iget-object v3, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 195
    invoke-virtual {v1, v10, v2, v3}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 198
    goto/16 :goto_1c5

    .line 200
    :cond_c7
    const-string v1, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    .line 202
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    move-result-object v1

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v1

    .line 217
    const-string v2, "ImageScreenElement"

    .line 219
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    goto/16 :goto_1c5

    .line 224
    :cond_df
    cmpl-float v1, v13, v15

    .line 226
    if-gtz v1, :cond_10e

    .line 228
    cmpl-float v1, v14, v15

    .line 230
    if-gtz v1, :cond_10e

    .line 232
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 234
    if-eqz v1, :cond_ec

    .line 236
    goto :goto_10e

    .line 237
    :cond_ec
    iget v3, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 239
    if-lez v3, :cond_105

    .line 241
    iget v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshHeight:I

    .line 243
    if-lez v4, :cond_105

    .line 245
    iget-object v5, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshVerts:[F

    .line 247
    const/4 v6, 0x0

    .line 248
    const/4 v7, 0x0

    .line 249
    const/4 v9, 0x0

    .line 250
    iget-object v12, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 252
    move-object/from16 v1, p1

    .line 254
    move-object v2, v8

    .line 255
    move v8, v9

    .line 256
    move-object v9, v12

    .line 257
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 260
    goto/16 :goto_1c5

    .line 262
    :cond_105
    int-to-float v1, v7

    .line 263
    int-to-float v2, v6

    .line 264
    iget-object v3, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 266
    invoke-virtual {v10, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 269
    goto/16 :goto_1c5

    .line 271
    :cond_10e
    :goto_10e
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 273
    int-to-float v2, v7

    .line 274
    add-float/2addr v2, v9

    .line 275
    float-to-int v2, v2

    .line 276
    int-to-float v3, v6

    .line 277
    add-float/2addr v3, v12

    .line 278
    float-to-int v3, v3

    .line 279
    invoke-virtual {v1, v7, v6, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 282
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 284
    if-eqz v1, :cond_12a

    .line 286
    iget v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcX:I

    .line 288
    iget v3, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcY:I

    .line 290
    iget v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcW:I

    .line 292
    add-int/2addr v4, v2

    .line 293
    iget v5, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcH:I

    .line 295
    add-int/2addr v5, v3

    .line 296
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 299
    :cond_12a
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 301
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 303
    iget-object v3, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 305
    invoke-virtual {v10, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 308
    goto/16 :goto_1c5

    .line 310
    :cond_135
    float-to-double v1, v9

    .line 311
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 314
    move-result-wide v1

    .line 315
    double-to-int v1, v1

    .line 316
    float-to-double v2, v12

    .line 317
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 320
    move-result-wide v2

    .line 321
    double-to-int v2, v2

    .line 322
    int-to-float v5, v7

    .line 323
    int-to-float v4, v6

    .line 324
    add-int/2addr v1, v7

    .line 325
    int-to-float v3, v1

    .line 326
    add-int/2addr v2, v6

    .line 327
    int-to-float v2, v2

    .line 328
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 330
    const/16 v16, 0x1f

    .line 332
    move-object/from16 v17, v1

    .line 334
    move-object/from16 v1, p1

    .line 336
    move/from16 v18, v2

    .line 338
    move v2, v5

    .line 339
    move/from16 v19, v3

    .line 341
    move v3, v4

    .line 342
    move/from16 v20, v4

    .line 344
    move/from16 v4, v19

    .line 346
    move/from16 v21, v5

    .line 348
    move/from16 v5, v18

    .line 350
    move/from16 v22, v6

    .line 352
    move-object/from16 v6, v17

    .line 354
    move/from16 v23, v7

    .line 356
    move/from16 v7, v16

    .line 358
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 361
    cmpl-float v1, v13, v15

    .line 363
    if-gtz v1, :cond_183

    .line 365
    cmpl-float v1, v14, v15

    .line 367
    if-gtz v1, :cond_183

    .line 369
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 371
    if-eqz v1, :cond_175

    .line 373
    goto :goto_183

    .line 374
    :cond_175
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 376
    move/from16 v3, v20

    .line 378
    move/from16 v2, v21

    .line 380
    invoke-virtual {v10, v8, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 383
    move/from16 v4, v22

    .line 385
    move/from16 v3, v23

    .line 387
    goto :goto_1ac

    .line 388
    :cond_183
    :goto_183
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 390
    float-to-int v2, v9

    .line 391
    move/from16 v3, v23

    .line 393
    add-int v7, v3, v2

    .line 395
    float-to-int v2, v12

    .line 396
    move/from16 v4, v22

    .line 398
    add-int v6, v4, v2

    .line 400
    invoke-virtual {v1, v3, v4, v7, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 403
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 405
    if-eqz v1, :cond_1a3

    .line 407
    iget v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcX:I

    .line 409
    iget v5, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcY:I

    .line 411
    iget v6, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcW:I

    .line 413
    add-int/2addr v6, v2

    .line 414
    iget v7, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcH:I

    .line 416
    add-int/2addr v7, v5

    .line 417
    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 420
    :cond_1a3
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 422
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 424
    iget-object v5, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 426
    invoke-virtual {v10, v8, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 429
    :goto_1ac
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 431
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 434
    move-result-object v1

    .line 435
    :goto_1b2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 438
    move-result v2

    .line 439
    if-eqz v2, :cond_1c2

    .line 441
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 444
    move-result-object v2

    .line 445
    check-cast v2, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 447
    invoke-direct {v0, v10, v2, v3, v4}, Lcom/miui/maml/elements/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Lcom/miui/maml/elements/ImageScreenElement$Mask;II)V

    .line 450
    goto :goto_1b2

    .line 451
    :cond_1c2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 454
    :goto_1c5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 457
    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 460
    :cond_1cb
    :goto_1cb
    return-void
.end method

.method public doTick(J)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 13
    if-eqz v0, :cond_13

    .line 15
    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrc:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 25
    if-eqz v0, :cond_2e

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v0

    .line 31
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2e

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 43
    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->doTick(J)V

    .line 46
    goto :goto_1e

    .line 47
    :cond_2e
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 49
    if-eqz p1, :cond_45

    .line 51
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 54
    move-result-wide p1

    .line 55
    double-to-int p1, p1

    .line 56
    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    .line 59
    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 64
    invoke-direct {v0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 67
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    :cond_45
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    .line 72
    if-eqz p1, :cond_7d

    .line 74
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcX:Lcom/miui/maml/data/Expression;

    .line 76
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 79
    move-result-wide p1

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 83
    move-result p1

    .line 84
    float-to-int p1, p1

    .line 85
    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcX:I

    .line 87
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcY:Lcom/miui/maml/data/Expression;

    .line 89
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 92
    move-result-wide p1

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 96
    move-result p1

    .line 97
    float-to-int p1, p1

    .line 98
    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcY:I

    .line 100
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcW:Lcom/miui/maml/data/Expression;

    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 105
    move-result-wide p1

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 109
    move-result p1

    .line 110
    float-to-int p1, p1

    .line 111
    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcW:I

    .line 113
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcH:Lcom/miui/maml/data/Expression;

    .line 115
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 118
    move-result-wide p1

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 122
    move-result p1

    .line 123
    float-to-int p1, p1

    .line 124
    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcH:I

    .line 126
    :cond_7d
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasWidthAndHeight:Z

    .line 128
    if-eqz p1, :cond_9b

    .line 130
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpW:Lcom/miui/maml/data/Expression;

    .line 132
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 135
    move-result-wide p1

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 139
    move-result p1

    .line 140
    float-to-int p1, p1

    .line 141
    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mW:I

    .line 143
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpH:Lcom/miui/maml/data/Expression;

    .line 145
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 148
    move-result-wide p1

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 152
    move-result p1

    .line 153
    float-to-int p1, p1

    .line 154
    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mH:I

    .line 156
    :cond_9b
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 158
    if-eqz p1, :cond_a6

    .line 160
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 162
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 164
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 167
    :cond_a6
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 169
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 172
    return-void
.end method

.method public finish()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider;->finish()V

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 13
    if-eqz v0, :cond_22

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_22

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 31
    invoke-virtual {v1}, Lcom/miui/maml/elements/ImageScreenElement;->finish()V

    .line 34
    goto :goto_12

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 37
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 40
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 42
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 45
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p1
.end method

.method public getBitmap(Z)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p1

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_1e

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 p1, p1, 0x1

    iget v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mW:I

    iget v3, p0, Lcom/miui/maml/elements/ImageScreenElement;->mH:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/miui/maml/elements/BitmapProvider;->getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object p1

    return-object p1

    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBitmapHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 12
    move-result v0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    return v0
.end method

.method public getBitmapWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 12
    move-result v0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    return v0
.end method

.method public getHeight()F
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v1, v0, v1

    .line 8
    if-ltz v1, :cond_a

    .line 10
    return v0

    .line 11
    :cond_a
    iget-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    .line 13
    if-eqz v0, :cond_12

    .line 15
    iget v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcH:I

    .line 17
    :goto_10
    int-to-float v0, v0

    .line 18
    return v0

    .line 19
    :cond_12
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    .line 22
    move-result v0

    .line 23
    goto :goto_10
.end method

.method public final getSrc()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/animation/SourcesAnimation;->getSrc()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrc:Ljava/lang/String;

    .line 12
    :goto_b
    if-eqz v0, :cond_1e

    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lcom/miui/maml/data/Expression;

    .line 16
    if-eqz v1, :cond_1e

    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 21
    move-result-wide v1

    .line 22
    double-to-long v1, v1

    .line 23
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    :cond_1e
    return-object v0
.end method

.method public getWidth()F
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v1, v0, v1

    .line 8
    if-ltz v1, :cond_a

    .line 10
    return v0

    .line 11
    :cond_a
    iget-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    .line 13
    if-eqz v0, :cond_12

    .line 15
    iget v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcW:I

    .line 17
    :goto_10
    int-to-float v0, v0

    .line 18
    return v0

    .line 19
    :cond_12
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    .line 22
    move-result v0

    .line 23
    goto :goto_10
.end method

.method public getX()F
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    .line 7
    if-eqz v1, :cond_11

    .line 9
    invoke-virtual {v1}, Lcom/miui/maml/animation/PositionAnimation;->getX()D

    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 16
    move-result v1

    .line 17
    add-float/2addr v0, v1

    .line 18
    :cond_11
    return v0
.end method

.method public getY()F
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    .line 7
    if-eqz v1, :cond_11

    .line 9
    invoke-virtual {v1}, Lcom/miui/maml/animation/PositionAnimation;->getY()D

    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 16
    move-result v1

    .line 17
    add-float/2addr v0, v1

    .line 18
    :cond_11
    return v0
.end method

.method public init()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 6
    if-eqz v0, :cond_c

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrc:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 21
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 23
    if-eqz v0, :cond_2c

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v0

    .line 29
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2c

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 41
    invoke-virtual {v1}, Lcom/miui/maml/elements/ImageScreenElement;->init()V

    .line 44
    goto :goto_1c

    .line 45
    :cond_2c
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    .line 47
    if-eqz v0, :cond_37

    .line 49
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 56
    :cond_37
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_42

    .line 62
    iget-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 64
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 67
    :cond_42
    iget v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mRawBlurRadius:I

    .line 69
    int-to-double v0, v0

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 73
    move-result v0

    .line 74
    float-to-int v0, v0

    .line 75
    iput v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 77
    if-lez v0, :cond_51

    .line 79
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 82
    :cond_51
    return-void
.end method

.method public loadMesh(Lorg/w3c/dom/Element;)V
    .registers 7

    .line 1
    const-string v0, "ImageScreenElement"

    .line 3
    const-string v1, "mesh"

    .line 5
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, ","

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 14
    move-result v2

    .line 15
    const/4 v3, -0x1

    .line 16
    if-eq v2, v3, :cond_7b

    .line 18
    const/4 v3, 0x0

    .line 19
    :try_start_12
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 22
    move-result-object v4

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    move-result v4

    .line 27
    iput v4, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    move-result v2

    .line 39
    iput v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshHeight:I
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_28} :catch_29

    .line 41
    goto :goto_3d

    .line 42
    :catch_29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v4, "Invalid mesh format:"

    .line 49
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_3d
    iget v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 64
    if-eqz v1, :cond_7b

    .line 66
    iget v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshHeight:I

    .line 68
    if-eqz v1, :cond_7b

    .line 70
    const-string v1, "meshVertsArr"

    .line 72
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1, p1}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_5e

    .line 86
    instance-of v2, v1, [F

    .line 88
    if-eqz v2, :cond_5e

    .line 90
    check-cast v1, [F

    .line 92
    iput-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshVerts:[F

    .line 94
    goto :goto_7b

    .line 95
    :cond_5e
    iput v3, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshHeight:I

    .line 97
    iput v3, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    const-string v2, "Invalid meshVertsArr:"

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string p1, "  undifined or not float[] type"

    .line 114
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_7b
    :goto_7b
    return-void
.end method

.method public onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;
    .registers 4

    .line 1
    const-string v0, "SourcesAnimation"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 9
    new-instance p1, Lcom/miui/maml/animation/SourcesAnimation;

    .line 11
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/SourcesAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 14
    iput-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    .line 16
    return-object p1

    .line 17
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public onSetAnimBefore()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onSetAnimBefore()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    .line 7
    return-void
.end method

.method public onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/miui/maml/animation/SourcesAnimation;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    check-cast p1, Lcom/miui/maml/animation/SourcesAnimation;

    .line 7
    iput-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    .line 9
    goto :goto_c

    .line 10
    :cond_9
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V

    .line 13
    :goto_c
    return-void
.end method

.method public onVisibilityChange(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 4
    if-eqz p1, :cond_b

    .line 6
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 8
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 11
    goto :goto_1b

    .line 12
    :cond_b
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mRetainWhenInvisible:Z

    .line 14
    if-nez p1, :cond_1b

    .line 16
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    .line 18
    if-eqz p1, :cond_16

    .line 20
    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider;->finish()V

    .line 23
    :cond_16
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 25
    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 28
    :cond_1b
    :goto_1b
    return-void
.end method

.method public pause()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->pause()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1b

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 24
    invoke-virtual {v1}, Lcom/miui/maml/elements/ImageScreenElement;->pause()V

    .line 27
    goto :goto_b

    .line 28
    :cond_1b
    return-void
.end method

.method public pauseAnim(J)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1b

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 24
    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->pauseAnim(J)V

    .line 27
    goto :goto_b

    .line 28
    :cond_1b
    return-void
.end method

.method public playAnim(JJJZZ)V
    .registers 21

    .line 1
    move-object v0, p0

    .line 2
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 5
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 7
    if-eqz v1, :cond_25

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v1

    .line 13
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_25

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    move-object v3, v2

    .line 24
    check-cast v3, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 26
    move-wide v4, p1

    .line 27
    move-wide v6, p3

    .line 28
    move-wide/from16 v8, p5

    .line 30
    move/from16 v10, p7

    .line 32
    move/from16 v11, p8

    .line 34
    invoke-virtual/range {v3 .. v11}, Lcom/miui/maml/elements/ImageScreenElement;->playAnim(JJJZZ)V

    .line 37
    goto :goto_c

    .line 38
    :cond_25
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    .line 40
    if-eqz v1, :cond_2c

    .line 42
    invoke-virtual {v1}, Lcom/miui/maml/elements/BitmapProvider;->reset()V

    .line 45
    :cond_2c
    return-void
.end method

.method public reset(J)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1b

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 24
    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->reset(J)V

    .line 27
    goto :goto_b

    .line 28
    :cond_1b
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    .line 30
    if-eqz p1, :cond_22

    .line 32
    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider;->reset()V

    .line 35
    :cond_22
    iget p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 37
    if-lez p1, :cond_29

    .line 39
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 42
    :cond_29
    return-void
.end method

.method public resume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1b

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 24
    invoke-virtual {v1}, Lcom/miui/maml/elements/ImageScreenElement;->resume()V

    .line 27
    goto :goto_b

    .line 28
    :cond_1b
    return-void
.end method

.method public resumeAnim(J)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 6
    if-eqz v0, :cond_1b

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1b

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 24
    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->resumeAnim(J)V

    .line 27
    goto :goto_b

    .line 28
    :cond_1b
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 6
    move-result-object v0

    .line 7
    if-eq p1, v0, :cond_15

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 11
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 14
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 16
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 22
    :cond_15
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 11
    :cond_a
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/util/TextFormatter;->setText(Ljava/lang/String;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setSrcId(D)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    instance-of v1, v0, Lcom/miui/maml/data/Expression$NumberExpression;

    .line 7
    if-eqz v1, :cond_e

    .line 9
    check-cast v0, Lcom/miui/maml/data/Expression$NumberExpression;

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/Expression$NumberExpression;->setValue(D)V

    .line 14
    goto :goto_19

    .line 15
    :cond_e
    new-instance v0, Lcom/miui/maml/data/Expression$NumberExpression;

    .line 17
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Lcom/miui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lcom/miui/maml/data/Expression;

    .line 26
    :goto_19
    return-void
.end method

.method public setSrcType(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-static {v0, p1}, Lcom/miui/maml/elements/BitmapProvider;->create(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    .line 9
    return-void
.end method

.method public updateBitmapImpl(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->getBitmap(Z)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 7
    if-lez v0, :cond_13

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 11
    invoke-static {p1, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->equals(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_13

    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 20
    :cond_13
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 22
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->set(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;)V

    .line 25
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmapVars()V

    .line 28
    return-void
.end method

.method public updateBitmapVars()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 3
    if-eqz v0, :cond_32

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    .line 10
    move-result v1

    .line 11
    int-to-double v1, v1

    .line 12
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 19
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 21
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    .line 24
    move-result v1

    .line 25
    int-to-double v1, v1

    .line 26
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 33
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasBitmapVar:Lcom/miui/maml/data/IndexedVariable;

    .line 35
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 37
    invoke-virtual {v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_2d

    .line 43
    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    .line 45
    goto :goto_2f

    .line 46
    :cond_2d
    const-wide/16 v1, 0x0

    .line 48
    :goto_2f
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 51
    :cond_32
    return-void
.end method
