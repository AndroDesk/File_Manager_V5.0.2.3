.class public Lmiuix/graphics/BitmapFactory;
.super Landroid/graphics/BitmapFactory;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/graphics/BitmapFactory$CropOption;
    }
.end annotation


# static fields
.field private static final APPELLATION_SUFFIX:[Ljava/lang/String;

.field private static final ASIALANGPATTERN:Ljava/util/regex/Pattern;

.field public static final BITMAP_COLOR_MODE_DARK:I = 0x0

.field public static final BITMAP_COLOR_MODE_LIGHT:I = 0x2

.field public static final BITMAP_COLOR_MODE_MEDIUM:I = 0x1

.field public static final MODE_DARK:I = 0x1

.field public static final MODE_DAYNIGHT:I = 0x2

.field public static final MODE_LIGHT:I

.field private static PNG_HEAD_FORMAT:[B

.field private static final sCanvasCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field public static sLockForRsContext:Ljava/lang/Object;

.field public static sRsContext:Landroid/renderscript/RenderScript;

.field private static final sSrcInPaint:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .registers 41

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lmiuix/graphics/BitmapFactory;->sLockForRsContext:Ljava/lang/Object;

    .line 8
    const/16 v0, 0x8

    .line 10
    new-array v0, v0, [B

    .line 12
    fill-array-data v0, :array_8c

    .line 15
    sput-object v0, Lmiuix/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    .line 17
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 19
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 22
    sput-object v0, Lmiuix/graphics/BitmapFactory;->sCanvasCache:Ljava/lang/ThreadLocal;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 30
    sput-object v0, Lmiuix/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 35
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 37
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 39
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 45
    const-string v0, "[㄀-ㄭㆠ-ㆺ一-鿌㐀-䶵豈-龎⼀-⿕⺀-⻳㇀-㇣ᄀ-ᇿꥠ-ꥼힰ-ퟻㄱ-ㆎ가-힣぀-ゟ゠-ヿㇰ-ㇿ㆐-㆟ꀀ-ꒌ꒐-꓆]"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lmiuix/graphics/BitmapFactory;->ASIALANGPATTERN:Ljava/util/regex/Pattern;

    .line 53
    const-string v1, "老师"

    .line 55
    const-string v2, "先生"

    .line 57
    const-string v3, "老板"

    .line 59
    const-string v4, "仔"

    .line 61
    const-string v5, "手机"

    .line 63
    const-string v6, "叔"

    .line 65
    const-string v7, "阿姨"

    .line 67
    const-string v8, "宅"

    .line 69
    const-string v9, "伯"

    .line 71
    const-string v10, "伯母"

    .line 73
    const-string v11, "伯父"

    .line 75
    const-string v12, "哥"

    .line 77
    const-string v13, "姐"

    .line 79
    const-string v14, "弟"

    .line 81
    const-string v15, "妹"

    .line 83
    const-string v16, "舅"

    .line 85
    const-string v17, "姑"

    .line 87
    const-string v18, "父"

    .line 89
    const-string v19, "主任"

    .line 91
    const-string v20, "经理"

    .line 93
    const-string v21, "工作"

    .line 95
    const-string v22, "同事"

    .line 97
    const-string v23, "律师"

    .line 99
    const-string v24, "司机"

    .line 101
    const-string v25, "师傅"

    .line 103
    const-string v26, "师父"

    .line 105
    const-string v27, "爷"

    .line 107
    const-string v28, "奶"

    .line 109
    const-string v29, "中介"

    .line 111
    const-string v30, "董"

    .line 113
    const-string v31, "总"

    .line 115
    const-string v32, "太太"

    .line 117
    const-string v33, "保姆"

    .line 119
    const-string v34, "某"

    .line 121
    const-string v35, "秘书"

    .line 123
    const-string v36, "处长"

    .line 125
    const-string v37, "局长"

    .line 127
    const-string v38, "班长"

    .line 129
    const-string v39, "兄"

    .line 131
    const-string v40, "助理"

    .line 133
    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 137
    sput-object v0, Lmiuix/graphics/BitmapFactory;->APPELLATION_SUFFIX:[Ljava/lang/String;

    .line 139
    return-void

    .line 140
    nop

    .line 141
    :array_8c
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/BitmapFactory;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/InstantiationException;

    .line 6
    const-string v1, "Cannot instantiate utility class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method private static between(III)I
    .registers 3

    .line 1
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 12

    .line 1
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v5, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_1e

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2b

    .line 3
    :cond_1e
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_2b
    move-object v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4
    invoke-static/range {v0 .. v6}, Lmiuix/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .registers 13

    .line 5
    new-instance v6, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v6, v0, v0, p5, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lmiuix/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p6, :cond_6

    return-object v0

    :cond_6
    if-nez p1, :cond_25

    .line 6
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-lez p1, :cond_24

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-gtz p1, :cond_15

    goto :goto_24

    .line 7
    :cond_15
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_35

    :cond_24
    :goto_24
    return-object v0

    :cond_25
    if-nez p6, :cond_35

    .line 8
    new-instance p6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p6, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    :cond_35
    :goto_35
    invoke-static {p0, p2, v0, p5, p6}, Lmiuix/graphics/BitmapFactory;->maskOutBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 10
    invoke-static {}, Lmiuix/graphics/BitmapFactory;->getCachedCanvas()Landroid/graphics/Canvas;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p4, :cond_48

    .line 12
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 13
    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 14
    :cond_48
    invoke-virtual {p2, p0, p6, p6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 15
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p3, :cond_56

    .line 16
    invoke-virtual {p3, p6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 17
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_56
    return-object p1
.end method

.method private static computeSampleSize(Lmiuix/io/ResettableInputStream;I)I
    .registers 6

    .line 1
    if-lez p1, :cond_15

    .line 3
    invoke-static {p0}, Lmiuix/graphics/BitmapFactory;->getBitmapSize(Lmiuix/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    .line 6
    move-result-object p0

    .line 7
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 9
    int-to-double v0, v0

    .line 10
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 12
    int-to-double v2, p0

    .line 13
    mul-double/2addr v0, v2

    .line 14
    int-to-double p0, p1

    .line 15
    div-double/2addr v0, p0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 19
    move-result-wide p0

    .line 20
    double-to-int p0, p0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 p0, 0x1

    .line 23
    :goto_16
    return p0
.end method

.method private static containsEastAsianCharacter(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lmiuix/graphics/BitmapFactory;->ASIALANGPATTERN:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_c

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 20
    move-result p0

    .line 21
    invoke-static {v1, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, v0}, Lmiuix/graphics/BitmapFactory;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 3
    invoke-static/range {v0 .. v5}, Lmiuix/graphics/BitmapFactory;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lmiuix/graphics/BitmapFactory;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 4
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/graphics/BitmapFactory;->getWordFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    return-object v0

    :cond_13
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p3, :cond_63

    if-nez p5, :cond_24

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/graphics/R$drawable;->word_photo_bg_light:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_6b

    :cond_24
    if-ne v1, p5, :cond_31

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/graphics/R$drawable;->word_photo_bg_dark:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_6b

    :cond_31
    if-ne v0, p5, :cond_57

    .line 8
    sget p3, Lmiuix/graphics/R$attr;->wordPhotoBackground:I

    invoke-static {p0, p3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_6b

    .line 9
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4c

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/graphics/R$drawable;->word_photo_bg_dark:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_6b

    .line 11
    :cond_4c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/graphics/R$drawable;->word_photo_bg_light:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_6b

    .line 12
    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown mode when get drawable: "

    .line 13
    invoke-static {p1, p5}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 16
    :cond_6b
    :goto_6b
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-nez p4, :cond_c7

    if-nez p5, :cond_83

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lmiuix/graphics/R$color;->word_photo_color:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_cf

    :cond_83
    if-ne v1, p5, :cond_90

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lmiuix/graphics/R$color;->word_photo_color_dark:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_cf

    :cond_90
    if-ne v0, p5, :cond_bb

    const/4 p4, -0x1

    .line 19
    :try_start_93
    sget p5, Lmiuix/graphics/R$attr;->wordPhotoTextColor:I

    invoke-static {p0, p5}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p5
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_99} :catch_9a

    goto :goto_9b

    :catch_9a
    move p5, p4

    :goto_9b
    if-ne p5, p4, :cond_b9

    .line 20
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_ae

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lmiuix/graphics/R$color;->word_photo_color_dark:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_cf

    .line 22
    :cond_ae
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lmiuix/graphics/R$color;->word_photo_color:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_cf

    :cond_b9
    move p0, p5

    goto :goto_cf

    .line 23
    :cond_bb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown mode when get photo color: "

    .line 24
    invoke-static {p1, p5}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_c7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 27
    :goto_cf
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 28
    new-instance p5, Landroid/graphics/Canvas;

    invoke-direct {p5, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    invoke-virtual {p3, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 30
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 31
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 32
    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p0, p2

    const v0, 0x3f19999a  # 0.6f

    mul-float/2addr p0, v0

    .line 33
    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 34
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, p1, v3, v0, p0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 36
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    sub-int v0, p2, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 37
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p0

    sub-int/2addr p2, v1

    int-to-double v4, p2

    mul-double/2addr v4, v2

    double-to-int p0, v4

    int-to-float p2, v0

    int-to-float p0, p0

    .line 38
    invoke-virtual {p5, p1, p2, p0, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object p4
.end method

.method public static createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$dimen;->contact_photo_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2
    invoke-static {p0, p1, v0}, Lmiuix/graphics/BitmapFactory;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 4
    sget v0, Lmiuix/graphics/R$drawable;->ic_contact_photo_fg:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 5
    sget v0, Lmiuix/graphics/R$drawable;->ic_contact_photo_bg:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 6
    sget v0, Lmiuix/graphics/R$drawable;->ic_contact_photo_mask:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v2, 0x0

    move-object v1, p1

    move v6, p2

    .line 7
    invoke-static/range {v1 .. v6}, Lmiuix/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmiuix/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_12c

    if-nez v1, :cond_a

    goto/16 :goto_12c

    :cond_a
    if-nez p2, :cond_12

    .line 3
    new-instance v2, Lmiuix/graphics/BitmapFactory$CropOption;

    invoke-direct {v2}, Lmiuix/graphics/BitmapFactory$CropOption;-><init>()V

    goto :goto_14

    :cond_12
    move-object/from16 v2, p2

    .line 4
    :goto_14
    iget-object v3, v2, Lmiuix/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    const/4 v4, 0x0

    if-nez v3, :cond_26

    .line 5
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5, v7}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v5

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v7, v8}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v7

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v8, v9}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v8

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v9, v3}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v3

    sub-int v9, v7, v5

    sub-int v10, v3, v8

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 12
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    invoke-static {v4, v13, v14}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v13

    iput v13, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    .line 13
    div-int/lit8 v13, v11, 0x2

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    invoke-static {v4, v13, v14}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v13

    iput v13, v2, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    .line 14
    div-int/lit8 v13, v12, 0x2

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    invoke-static {v4, v13, v14}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v13

    iput v13, v2, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    .line 15
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 16
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 17
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 19
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 21
    iget v4, v2, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int/2addr v4, v14

    if-lez v4, :cond_c7

    iget v4, v2, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    sub-int/2addr v4, v14

    if-lez v4, :cond_c7

    .line 22
    new-instance v4, Landroid/graphics/RectF;

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    int-to-float v15, v14

    int-to-float v1, v14

    sub-int v0, v11, v14

    int-to-float v0, v0

    sub-int v14, v12, v14

    int-to-float v14, v14

    invoke-direct {v4, v15, v1, v0, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, v2, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    iget v1, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    sub-int/2addr v14, v1

    int-to-float v1, v14

    invoke-virtual {v6, v4, v0, v1, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 23
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 24
    :cond_c7
    iget v0, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    mul-int/lit8 v1, v0, 0x2

    sub-int v1, v11, v1

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v12, v0

    int-to-float v4, v9

    const/high16 v9, 0x3f800000  # 1.0f

    mul-float v14, v4, v9

    int-to-float v1, v1

    div-float/2addr v14, v1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    int-to-float v0, v0

    div-float/2addr v9, v0

    .line 25
    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float/2addr v1, v9

    sub-float/2addr v4, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v4, v1

    float-to-int v4, v4

    mul-float/2addr v0, v9

    sub-float/2addr v10, v0

    div-float/2addr v10, v1

    float-to-int v0, v10

    .line 26
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr v5, v4

    add-int/2addr v8, v0

    sub-int/2addr v7, v4

    sub-int/2addr v3, v0

    invoke-direct {v1, v5, v8, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    iget v3, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int v4, v11, v3

    sub-int v5, v12, v3

    invoke-direct {v0, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v3, p0

    .line 28
    invoke-virtual {v6, v3, v1, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 29
    iget v0, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    if-lez v0, :cond_12b

    iget v0, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderColor:I

    ushr-int/lit8 v1, v0, 0x18

    if-eqz v1, :cond_12b

    .line 30
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, v11

    int-to-float v3, v12

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, v2, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    int-to-float v1, v1

    iget v2, v2, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    int-to-float v2, v2

    invoke-virtual {v6, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_12b
    return-object p1

    :cond_12c
    :goto_12c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Lmiuix/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;
    .registers 3

    if-eqz p0, :cond_b

    .line 1
    invoke-static {p0}, Lmiuix/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    invoke-static {p0, v0, p1}, Lmiuix/graphics/BitmapFactory;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmiuix/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v0, 0x0

    .line 13
    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    .line 14
    :try_start_6
    invoke-static {v1, p2, p3, p4}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 15
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_e
    move-exception p0

    move-object v0, v1

    goto :goto_12

    :catchall_11
    move-exception p0

    :goto_12
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 16
    :cond_17
    throw p0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    .line 21
    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    .line 22
    :try_start_6
    invoke-static {v1, p2, p3}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 23
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_e
    move-exception p0

    move-object v0, v1

    goto :goto_12

    :catchall_11
    move-exception p0

    :goto_12
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 24
    :cond_17
    throw p0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    .line 9
    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    const/4 p0, -0x1

    .line 10
    :try_start_7
    invoke-static {v1, p0, p2}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 11
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_f
    move-exception p0

    move-object v0, v1

    goto :goto_13

    :catchall_12
    move-exception p0

    :goto_13
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 12
    :cond_18
    throw p0
.end method

.method public static decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    .line 5
    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    .line 6
    :try_start_6
    invoke-static {v1, p1, p2, p3}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 7
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_e
    move-exception p0

    move-object v0, v1

    goto :goto_12

    :catchall_11
    move-exception p0

    :goto_12
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 8
    :cond_17
    throw p0
.end method

.method public static decodeBitmap(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    .line 17
    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    .line 18
    :try_start_6
    invoke-static {v1, p1, p2}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 19
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_e
    move-exception p0

    move-object v0, v1

    goto :goto_12

    :catchall_11
    move-exception p0

    :goto_12
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 20
    :cond_17
    throw p0
.end method

.method public static decodeBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    const/4 p0, -0x1

    .line 2
    :try_start_7
    invoke-static {v1, p0, p1}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 3
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_f
    move-exception p0

    move-object v0, v1

    goto :goto_13

    :catchall_12
    move-exception p0

    :goto_13
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 4
    :cond_18
    throw p0
.end method

.method public static decodeBitmap(Lmiuix/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;
    .registers 5

    mul-int v0, p1, p2

    if-lez p1, :cond_6

    if-gtz p2, :cond_7

    :cond_6
    const/4 v0, -0x1

    .line 33
    :cond_7
    invoke-static {p0, v0, p3}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    return-object p0

    :cond_f
    if-lez v0, :cond_1b

    .line 34
    invoke-static {p0, p1, p2}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_1a

    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1a
    move-object p0, p1

    :cond_1b
    return-object p0
.end method

.method public static decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;
    .registers 7

    .line 25
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 26
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 28
    invoke-static {p0, p1}, Lmiuix/graphics/BitmapFactory;->computeSampleSize(Lmiuix/io/ResettableInputStream;I)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_11
    add-int/lit8 p1, v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2b

    .line 29
    :try_start_17
    invoke-virtual {p0}, Lmiuix/io/ResettableInputStream;->reset()V

    .line 30
    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_2b

    :catch_1f
    move-exception v1

    if-eqz p2, :cond_2a

    .line 31
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move v1, p1

    goto :goto_11

    .line 32
    :cond_2a
    throw v1

    :cond_2b
    :goto_2b
    return-object v3
.end method

.method public static fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 4

    .line 1
    invoke-static {p1}, Lmiuix/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lmiuix/graphics/BitmapFactory;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_1a

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1a

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1e

    .line 4
    :cond_1a
    invoke-static {p1}, Lmiuix/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 5
    :cond_1e
    invoke-static {p0, p1, p2, p3}, Lmiuix/graphics/BitmapFactory;->fastblur_v17(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    return-object p2
.end method

.method private static fastblur_v17(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 13

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :goto_2
    const/16 v2, 0x19

    .line 5
    if-le p3, v2, :cond_b

    .line 7
    mul-int/lit8 v1, v1, 0x2

    .line 9
    div-int/lit8 p3, p3, 0x2

    .line 11
    goto :goto_2

    .line 12
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 15
    move-result v2

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 19
    move-result v3

    .line 20
    if-ne v1, v0, :cond_17

    .line 22
    move-object v2, p1

    .line 23
    goto :goto_25

    .line 24
    :cond_17
    div-int/2addr v2, v1

    .line 25
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 28
    move-result v2

    .line 29
    div-int/2addr v3, v1

    .line 30
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 33
    move-result v3

    .line 34
    invoke-static {p1, v2, v3}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 37
    move-result-object v2

    .line 38
    :goto_25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_31

    .line 44
    new-instance v3, Lmiuix/graphics/BitmapFactory$1;

    .line 46
    invoke-direct {v3, p0}, Lmiuix/graphics/BitmapFactory$1;-><init>(Landroid/content/Context;)V

    .line 49
    move-object p0, v3

    .line 50
    :cond_31
    :try_start_31
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 53
    move-result-object v3

    .line 54
    const-string v4, "android.graphics.Bitmap$Config"

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    array-length v4, v3

    .line 65
    const/4 v5, 0x0

    .line 66
    :goto_41
    if-ge v5, v4, :cond_61

    .line 68
    aget-object v6, v3, v5

    .line 70
    check-cast v6, Ljava/lang/Enum;

    .line 72
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 75
    move-result-object v7

    .line 76
    const-string v8, "RGBA_F16"

    .line 78
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_5e

    .line 84
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 87
    move-result-object v7

    .line 88
    if-ne v7, v6, :cond_5e

    .line 90
    invoke-static {v2}, Lmiuix/graphics/BitmapFactory;->transferF16ToARGB(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 93
    move-result-object v2
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5d} :catch_61

    .line 94
    goto :goto_61

    .line 95
    :cond_5e
    add-int/lit8 v5, v5, 0x1

    .line 97
    goto :goto_41

    .line 98
    :catch_61
    :cond_61
    :goto_61
    sget-object v3, Lmiuix/graphics/BitmapFactory;->sLockForRsContext:Ljava/lang/Object;

    .line 100
    monitor-enter v3

    .line 101
    :try_start_64
    sget-object v4, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    .line 103
    if-nez v4, :cond_6e

    .line 105
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    .line 108
    move-result-object p0

    .line 109
    sput-object p0, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    .line 111
    :cond_6e
    if-ne v1, v0, :cond_72

    .line 113
    move-object p0, p2

    .line 114
    goto :goto_73

    .line 115
    :cond_72
    move-object p0, v2

    .line 116
    :goto_73
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    .line 119
    move-result v1

    .line 120
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    .line 123
    move-result v4

    .line 124
    if-eq v1, v4, :cond_83

    .line 126
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 128
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 131
    move-result-object v2

    .line 132
    :cond_83
    sget-object v0, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    .line 134
    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    .line 137
    move-result-object v0

    .line 138
    sget-object v1, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    .line 140
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 143
    move-result-object v4

    .line 144
    invoke-static {v1, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    .line 147
    move-result-object v1

    .line 148
    sget-object v4, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    .line 150
    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 153
    move-result-object v5

    .line 154
    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    .line 157
    move-result-object v4

    .line 158
    int-to-float p3, p3

    .line 159
    invoke-virtual {v4, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 162
    invoke-virtual {v4, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 165
    invoke-virtual {v4, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 168
    invoke-virtual {v1, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 171
    if-eq p0, p2, :cond_af

    .line 173
    invoke-static {p0, p2}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 176
    :cond_af
    if-eq v2, p1, :cond_b4

    .line 178
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    :cond_b4
    if-eq p0, p2, :cond_b9

    .line 183
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    :cond_b9
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 189
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 192
    invoke-virtual {v4}, Landroid/renderscript/BaseObj;->destroy()V

    .line 195
    monitor-exit v3

    .line 196
    return-object p2

    .line 197
    :catchall_c4
    move-exception p0

    .line 198
    monitor-exit v3
    :try_end_c6
    .catchall {:try_start_64 .. :try_end_c6} :catchall_c4

    .line 199
    throw p0
.end method

.method public static getBitmapColorMode(Landroid/graphics/Bitmap;I)I
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    move-result v1

    .line 7
    div-int v1, v1, p1

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 12
    move-result v2

    .line 13
    div-int v2, v2, p1

    .line 15
    mul-int v3, v2, v1

    .line 17
    div-int/lit8 v3, v3, 0x5

    .line 19
    invoke-static {v0, v2, v1}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x2

    .line 24
    const/4 v6, 0x0

    .line 25
    move v7, v6

    .line 26
    move v8, v7

    .line 27
    :goto_1a
    if-ge v7, v2, :cond_60

    .line 29
    move v9, v6

    .line 30
    :goto_1d
    if-ge v9, v1, :cond_5d

    .line 32
    invoke-virtual {v4, v7, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 35
    move-result v10

    .line 36
    const/high16 v11, 0xff0000

    .line 38
    and-int/2addr v11, v10

    .line 39
    shr-int/lit8 v11, v11, 0x10

    .line 41
    const v12, 0xff00

    .line 44
    and-int/2addr v12, v10

    .line 45
    shr-int/lit8 v12, v12, 0x8

    .line 47
    and-int/lit16 v10, v10, 0xff

    .line 49
    int-to-float v11, v11

    .line 50
    float-to-double v13, v11

    .line 51
    const-wide v15, 0x3fd3333333333333L  # 0.3

    .line 56
    mul-double/2addr v13, v15

    .line 57
    int-to-float v11, v12

    .line 58
    float-to-double v11, v11

    .line 59
    const-wide v15, 0x3fe2e147ae147ae1L  # 0.59

    .line 64
    mul-double/2addr v11, v15

    .line 65
    add-double/2addr v11, v13

    .line 66
    int-to-float v10, v10

    .line 67
    float-to-double v13, v10

    .line 68
    const-wide v15, 0x3fbc28f5c28f5c29L  # 0.11

    .line 73
    mul-double/2addr v13, v15

    .line 74
    add-double/2addr v13, v11

    .line 75
    double-to-int v10, v13

    .line 76
    const/16 v11, 0xb4

    .line 78
    if-ge v10, v11, :cond_5a

    .line 80
    add-int/lit8 v8, v8, 0x1

    .line 82
    if-le v8, v3, :cond_54

    .line 84
    const/4 v5, 0x1

    .line 85
    :cond_54
    mul-int/lit8 v10, v3, 0x2

    .line 87
    if-le v8, v10, :cond_5a

    .line 89
    move v5, v6

    .line 90
    goto :goto_5d

    .line 91
    :cond_5a
    add-int/lit8 v9, v9, 0x1

    .line 93
    goto :goto_1d

    .line 94
    :cond_5d
    :goto_5d
    add-int/lit8 v7, v7, 0x1

    .line 96
    goto :goto_1a

    .line 97
    :cond_60
    if-eq v4, v0, :cond_65

    .line 99
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    :cond_65
    return v5
.end method

.method public static getBitmapSize(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .registers 4

    const/4 v0, 0x0

    .line 8
    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    .line 9
    :try_start_6
    invoke-static {v1}, Lmiuix/graphics/BitmapFactory;->getBitmapSize(Lmiuix/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 10
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_e
    move-exception p0

    move-object v0, v1

    goto :goto_12

    :catchall_11
    move-exception p0

    :goto_12
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 11
    :cond_17
    throw p0
.end method

.method public static getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .registers 3

    const/4 v0, 0x0

    .line 4
    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    .line 5
    :try_start_6
    invoke-static {v1}, Lmiuix/graphics/BitmapFactory;->getBitmapSize(Lmiuix/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 6
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_e
    move-exception p0

    move-object v0, v1

    goto :goto_12

    :catchall_11
    move-exception p0

    :goto_12
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 7
    :cond_17
    throw p0
.end method

.method public static getBitmapSize(Lmiuix/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static getCachedCanvas()Landroid/graphics/Canvas;
    .registers 2

    .line 1
    sget-object v0, Lmiuix/graphics/BitmapFactory;->sCanvasCache:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/graphics/Canvas;

    .line 9
    if-nez v1, :cond_12

    .line 11
    new-instance v1, Landroid/graphics/Canvas;

    .line 13
    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    :cond_12
    return-object v1
.end method

.method public static getRoundBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Lmiuix/graphics/BitmapFactory;->getRoundBitmap(Landroid/graphics/Bitmap;FLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getRoundBitmap(Landroid/graphics/Bitmap;FLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 9

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 8
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 9
    invoke-virtual {v0, v3, p1, p1, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 10
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 11
    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object p2
.end method

.method private static getWordFromName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-static {p0}, Lmiuix/graphics/BitmapFactory;->containsEastAsianCharacter(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_28

    .line 15
    invoke-static {p0}, Lmiuix/graphics/BitmapFactory;->removeSuffix(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_19

    .line 25
    return-object v1

    .line 26
    :cond_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    move-result v0

    .line 30
    add-int/lit8 v1, v0, -0x1

    .line 32
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_28
    const/4 v0, 0x0

    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-static {p0, v0, v1}, Lmiuix/core/util/Utf8TextUtils;->subString(Ljava/lang/String;II)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public static isPngFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    .line 2
    :try_start_6
    invoke-static {v1}, Lmiuix/graphics/BitmapFactory;->isPngFormat(Lmiuix/io/ResettableInputStream;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 3
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return p0

    :catchall_e
    move-exception p0

    move-object v0, v1

    goto :goto_12

    :catchall_11
    move-exception p0

    :goto_12
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 4
    :cond_17
    throw p0
.end method

.method public static isPngFormat(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 5
    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    .line 6
    :try_start_6
    invoke-static {v1}, Lmiuix/graphics/BitmapFactory;->isPngFormat(Lmiuix/io/ResettableInputStream;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 7
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return p0

    :catchall_e
    move-exception p0

    move-object v0, v1

    goto :goto_12

    :catchall_11
    move-exception p0

    :goto_12
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 8
    :cond_17
    throw p0
.end method

.method public static isPngFormat(Lmiuix/io/ResettableInputStream;)Z
    .registers 3

    .line 9
    sget-object v0, Lmiuix/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    array-length v0, v0

    new-array v1, v0, [B

    .line 10
    invoke-virtual {p0, v1}, Lmiuix/io/ResettableInputStream;->read([B)I

    move-result p0

    if-lt p0, v0, :cond_10

    .line 11
    invoke-static {v1}, Lmiuix/graphics/BitmapFactory;->isPngFormat([B)Z

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private static isPngFormat([B)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    .line 12
    array-length v1, p0

    sget-object v2, Lmiuix/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    array-length v2, v2

    if-ge v1, v2, :cond_a

    goto :goto_1c

    :cond_a
    move v1, v0

    .line 13
    :goto_b
    sget-object v2, Lmiuix/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 14
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static maskOutBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 14

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_6

    .line 4
    if-nez p4, :cond_6

    .line 6
    return-object v0

    .line 7
    :cond_6
    const/4 v1, 0x0

    .line 8
    if-nez p2, :cond_26

    .line 10
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 13
    move-result p2

    .line 14
    if-lez p2, :cond_25

    .line 16
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 19
    move-result p2

    .line 20
    if-gtz p2, :cond_16

    .line 22
    goto :goto_25

    .line 23
    :cond_16
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 26
    move-result p2

    .line 27
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 30
    move-result v0

    .line 31
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 33
    invoke-static {p2, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 36
    move-result-object p2

    .line 37
    goto :goto_35

    .line 38
    :cond_25
    :goto_25
    return-object v0

    .line 39
    :cond_26
    if-nez p4, :cond_35

    .line 41
    new-instance p4, Landroid/graphics/Rect;

    .line 43
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 46
    move-result v0

    .line 47
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 50
    move-result v2

    .line 51
    invoke-direct {p4, v1, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 54
    :cond_35
    :goto_35
    invoke-static {}, Lmiuix/graphics/BitmapFactory;->getCachedCanvas()Landroid/graphics/Canvas;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 66
    if-eqz p1, :cond_49

    .line 68
    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 71
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 74
    :cond_49
    if-nez p3, :cond_89

    .line 76
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 79
    move-result p1

    .line 80
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 83
    move-result p3

    .line 84
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 87
    move-result v2

    .line 88
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 91
    move-result v3

    .line 92
    int-to-float v3, v3

    .line 93
    int-to-float v2, v2

    .line 94
    div-float v4, v3, v2

    .line 96
    int-to-float v5, p1

    .line 97
    div-float v2, v5, v2

    .line 99
    int-to-float v6, p3

    .line 100
    div-float v3, v6, v3

    .line 102
    cmpl-float v7, v2, v3

    .line 104
    if-lez v7, :cond_73

    .line 106
    div-float/2addr v6, v4

    .line 107
    float-to-int v2, v6

    .line 108
    sub-int/2addr p1, v2

    .line 109
    div-int/lit8 p1, p1, 0x2

    .line 111
    move v8, v1

    .line 112
    move v1, p1

    .line 113
    move p1, v2

    .line 114
    move v2, v8

    .line 115
    goto :goto_81

    .line 116
    :cond_73
    cmpg-float v2, v2, v3

    .line 118
    if-gez v2, :cond_80

    .line 120
    mul-float/2addr v4, v5

    .line 121
    float-to-int v2, v4

    .line 122
    sub-int/2addr p3, v2

    .line 123
    div-int/lit8 p3, p3, 0x2

    .line 125
    move v8, v2

    .line 126
    move v2, p3

    .line 127
    move p3, v8

    .line 128
    goto :goto_81

    .line 129
    :cond_80
    move v2, v1

    .line 130
    :goto_81
    new-instance v3, Landroid/graphics/Rect;

    .line 132
    add-int/2addr p1, v1

    .line 133
    add-int/2addr p3, v2

    .line 134
    invoke-direct {v3, v1, v2, p1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 137
    move-object p3, v3

    .line 138
    :cond_89
    sget-object p1, Lmiuix/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    .line 140
    invoke-virtual {v0, p0, p3, p4, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 143
    return-object p2
.end method

.method private static removeSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    move-object v0, p0

    .line 10
    :cond_9
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    move v3, v2

    .line 13
    :goto_c
    sget-object v4, Lmiuix/graphics/BitmapFactory;->APPELLATION_SUFFIX:[Ljava/lang/String;

    .line 15
    array-length v5, v4

    .line 16
    const/4 v6, 0x1

    .line 17
    if-ge v2, v5, :cond_52

    .line 19
    aget-object v5, v4, v2

    .line 21
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_2b

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 30
    move-result v3

    .line 31
    aget-object v4, v4, v2

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 36
    move-result v4

    .line 37
    sub-int/2addr v3, v4

    .line 38
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    :goto_29
    move v3, v6

    .line 43
    goto :goto_48

    .line 44
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 47
    move-result v4

    .line 48
    sub-int/2addr v4, v6

    .line 49
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 52
    move-result v4

    .line 53
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    invoke-static {v4}, Lmiuix/graphics/BitmapFactory;->containsEastAsianCharacter(Ljava/lang/String;)Z

    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_48

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 66
    move-result v3

    .line 67
    sub-int/2addr v3, v6

    .line 68
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    goto :goto_29

    .line 73
    :cond_48
    :goto_48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_4f

    .line 79
    goto :goto_52

    .line 80
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_c

    .line 83
    :cond_52
    :goto_52
    if-eqz v3, :cond_5a

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_9

    .line 91
    :cond_5a
    if-eqz v0, :cond_60

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    :cond_60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_6f

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 106
    move-result v0

    .line 107
    sub-int/2addr v0, v6

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    :cond_6f
    return-object v0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lmiuix/graphics/BitmapFactory;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .registers 5

    if-eqz p0, :cond_23

    const/4 v0, 0x0

    .line 2
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    if-eqz p2, :cond_d

    .line 3
    :try_start_a
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_f

    :cond_d
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_f
    const/16 p2, 0x64

    invoke-virtual {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_19

    .line 4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_19
    move-exception p0

    move-object v0, v1

    goto :goto_1d

    :catchall_1c
    move-exception p0

    :goto_1d
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 5
    :cond_22
    throw p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_11

    goto :goto_25

    .line 2
    :cond_11
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 5
    :cond_1d
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-object p0, p1

    :goto_25
    return-object p0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9

    if-eqz p0, :cond_51

    if-nez p1, :cond_5

    goto :goto_51

    .line 7
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1a

    goto :goto_50

    .line 8
    :cond_1a
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 10
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 12
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 14
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 16
    invoke-virtual {v0, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p0, p1

    :goto_50
    return-object p0

    :cond_51
    :goto_51
    const/4 p0, 0x0

    return-object p0
.end method

.method private static transferF16ToARGB(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    move-result v1

    .line 9
    if-eqz v0, :cond_2f

    .line 11
    if-nez v1, :cond_d

    .line 13
    goto :goto_2f

    .line 14
    :cond_d
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 16
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Landroid/graphics/Canvas;

    .line 22
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 25
    new-instance v2, Landroid/graphics/Paint;

    .line 27
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 30
    const/4 v3, 0x3

    .line 31
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 38
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2e

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 47
    :cond_2e
    return-object v0

    .line 48
    :cond_2f
    :goto_2f
    return-object p0
.end method
