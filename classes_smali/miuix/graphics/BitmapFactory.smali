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

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiuix/graphics/BitmapFactory;->sLockForRsContext:Ljava/lang/Object;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_8c

    sput-object v0, Lmiuix/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiuix/graphics/BitmapFactory;->sCanvasCache:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lmiuix/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const-string v0, "[㄀-ㄭㆠ-ㆺ一-鿌㐀-䶵豈-龎⼀-⿕⺀-⻳㇀-㇣ᄀ-ᇿꥠ-ꥼힰ-ퟻㄱ-ㆎ가-힣぀-ゟ゠-ヿㇰ-ㇿ㆐-㆟ꀀ-ꒌ꒐-꓆]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiuix/graphics/BitmapFactory;->ASIALANGPATTERN:Ljava/util/regex/Pattern;

    const-string v1, "老师"

    const-string v2, "先生"

    const-string v3, "老板"

    const-string v4, "仔"

    const-string v5, "手机"

    const-string v6, "叔"

    const-string v7, "阿姨"

    const-string v8, "宅"

    const-string v9, "伯"

    const-string v10, "伯母"

    const-string v11, "伯父"

    const-string v12, "哥"

    const-string v13, "姐"

    const-string v14, "弟"

    const-string v15, "妹"

    const-string v16, "舅"

    const-string v17, "姑"

    const-string v18, "父"

    const-string v19, "主任"

    const-string v20, "经理"

    const-string v21, "工作"

    const-string v22, "同事"

    const-string v23, "律师"

    const-string v24, "司机"

    const-string v25, "师傅"

    const-string v26, "师父"

    const-string v27, "爷"

    const-string v28, "奶"

    const-string v29, "中介"

    const-string v30, "董"

    const-string v31, "总"

    const-string v32, "太太"

    const-string v33, "保姆"

    const-string v34, "某"

    const-string v35, "秘书"

    const-string v36, "处长"

    const-string v37, "局长"

    const-string v38, "班长"

    const-string v39, "兄"

    const-string v40, "助理"

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/graphics/BitmapFactory;->APPELLATION_SUFFIX:[Ljava/lang/String;

    return-void

    nop

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

    invoke-direct {p0}, Landroid/graphics/BitmapFactory;-><init>()V

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static between(III)I
    .registers 3

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 12

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v5, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_1e

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2b

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

    invoke-static/range {v0 .. v6}, Lmiuix/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .registers 13

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

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-lez p1, :cond_24

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-gtz p1, :cond_15

    goto :goto_24

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

    new-instance p6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p6, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_35
    :goto_35
    invoke-static {p0, p2, v0, p5, p6}, Lmiuix/graphics/BitmapFactory;->maskOutBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {}, Lmiuix/graphics/BitmapFactory;->getCachedCanvas()Landroid/graphics/Canvas;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p4, :cond_48

    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_48
    invoke-virtual {p2, p0, p6, p6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p3, :cond_56

    invoke-virtual {p3, p6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_56
    return-object p1
.end method

.method private static computeSampleSize(Lmiuix/io/ResettableInputStream;I)I
    .registers 6

    if-lez p1, :cond_15

    invoke-static {p0}, Lmiuix/graphics/BitmapFactory;->getBitmapSize(Lmiuix/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, p0

    mul-double/2addr v0, v2

    int-to-double p0, p1

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private static containsEastAsianCharacter(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lmiuix/graphics/BitmapFactory;->ASIALANGPATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method private static copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :cond_c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-static {v1, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

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

    invoke-static/range {v0 .. v5}, Lmiuix/graphics/BitmapFactory;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/graphics/BitmapFactory;->getWordFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    return-object v0

    :cond_13
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p3, :cond_63

    if-nez p5, :cond_24

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/graphics/R$drawable;->word_photo_bg_light:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_6b

    :cond_24
    if-ne v1, p5, :cond_31

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/graphics/R$drawable;->word_photo_bg_dark:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_6b

    :cond_31
    if-ne v0, p5, :cond_57

    sget p3, Lmiuix/graphics/R$attr;->wordPhotoBackground:I

    invoke-static {p0, p3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_6b

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/graphics/R$drawable;->word_photo_bg_dark:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_6b

    :cond_4c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/graphics/R$drawable;->word_photo_bg_light:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_6b

    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown mode when get drawable: "

    invoke-static {p1, p5}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_6b
    :goto_6b
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-nez p4, :cond_c7

    if-nez p5, :cond_83

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lmiuix/graphics/R$color;->word_photo_color:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_cf

    :cond_83
    if-ne v1, p5, :cond_90

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lmiuix/graphics/R$color;->word_photo_color_dark:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_cf

    :cond_90
    if-ne v0, p5, :cond_bb

    const/4 p4, -0x1

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

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_ae

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lmiuix/graphics/R$color;->word_photo_color_dark:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_cf

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

    :cond_bb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown mode when get photo color: "

    invoke-static {p1, p5}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    :goto_cf
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    new-instance p5, Landroid/graphics/Canvas;

    invoke-direct {p5, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p0, p2

    const v0, 0x3f19999a  # 0.6f

    mul-float/2addr p0, v0

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, p1, v3, v0, p0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    sub-int v0, p2, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p0

    sub-int/2addr p2, v1

    int-to-double v4, p2

    mul-double/2addr v4, v2

    double-to-int p0, v4

    int-to-float p2, v0

    int-to-float p0, p0

    invoke-virtual {p5, p1, p2, p0, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object p4
.end method

.method public static createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$dimen;->contact_photo_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lmiuix/graphics/BitmapFactory;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/graphics/R$drawable;->ic_contact_photo_fg:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v0, Lmiuix/graphics/R$drawable;->ic_contact_photo_bg:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget v0, Lmiuix/graphics/R$drawable;->ic_contact_photo_mask:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v2, 0x0

    move-object v1, p1

    move v6, p2

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

    new-instance v2, Lmiuix/graphics/BitmapFactory$CropOption;

    invoke-direct {v2}, Lmiuix/graphics/BitmapFactory$CropOption;-><init>()V

    goto :goto_14

    :cond_12
    move-object/from16 v2, p2

    :goto_14
    iget-object v3, v2, Lmiuix/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    const/4 v4, 0x0

    if-nez v3, :cond_26

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5, v7}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v7, v8}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v8, v9}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v9, v3}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v3

    sub-int v9, v7, v5

    sub-int v10, v3, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    invoke-static {v4, v13, v14}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v13

    iput v13, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    div-int/lit8 v13, v11, 0x2

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    invoke-static {v4, v13, v14}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v13

    iput v13, v2, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    div-int/lit8 v13, v12, 0x2

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    invoke-static {v4, v13, v14}, Lmiuix/graphics/BitmapFactory;->between(III)I

    move-result v13

    iput v13, v2, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    iget v4, v2, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    iget v14, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int/2addr v4, v14

    if-lez v4, :cond_c7

    iget v4, v2, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    sub-int/2addr v4, v14

    if-lez v4, :cond_c7

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

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

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

    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr v5, v4

    add-int/2addr v8, v0

    sub-int/2addr v7, v4

    sub-int/2addr v3, v0

    invoke-direct {v1, v5, v8, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    iget v3, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int v4, v11, v3

    sub-int v5, v12, v3

    invoke-direct {v0, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v3, p0

    invoke-virtual {v6, v3, v1, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    if-lez v0, :cond_12b

    iget v0, v2, Lmiuix/graphics/BitmapFactory$CropOption;->borderColor:I

    ushr-int/lit8 v1, v0, 0x18

    if-eqz v1, :cond_12b

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

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

    invoke-static {p0}, Lmiuix/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

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

    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    :try_start_6
    invoke-static {v1, p2, p3, p4}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

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

    :cond_17
    throw p0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    :try_start_6
    invoke-static {v1, p2, p3}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

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

    :cond_17
    throw p0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    const/4 p0, -0x1

    :try_start_7
    invoke-static {v1, p0, p2}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

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

    :cond_18
    throw p0
.end method

.method public static decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    :try_start_6
    invoke-static {v1, p1, p2, p3}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

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

    :cond_17
    throw p0
.end method

.method public static decodeBitmap(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    :try_start_6
    invoke-static {v1, p1, p2}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

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

    :cond_17
    throw p0
.end method

.method public static decodeBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    const/4 p0, -0x1

    :try_start_7
    invoke-static {v1, p0, p1}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

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

    :cond_7
    invoke-static {p0, v0, p3}, Lmiuix/graphics/BitmapFactory;->decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    return-object p0

    :cond_f
    if-lez v0, :cond_1b

    invoke-static {p0, p1, p2}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_1a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1a
    move-object p0, p1

    :cond_1b
    return-object p0
.end method

.method public static decodeBitmap(Lmiuix/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;
    .registers 7

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-static {p0, p1}, Lmiuix/graphics/BitmapFactory;->computeSampleSize(Lmiuix/io/ResettableInputStream;I)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_11
    add-int/lit8 p1, v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2b

    :try_start_17
    invoke-virtual {p0}, Lmiuix/io/ResettableInputStream;->reset()V

    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_2b

    :catch_1f
    move-exception v1

    if-eqz p2, :cond_2a

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move v1, p1

    goto :goto_11

    :cond_2a
    throw v1

    :cond_2b
    :goto_2b
    return-object v3
.end method

.method public static fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 4

    invoke-static {p1}, Lmiuix/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

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

    :cond_1a
    invoke-static {p1}, Lmiuix/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_1e
    invoke-static {p0, p1, p2, p3}, Lmiuix/graphics/BitmapFactory;->fastblur_v17(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    return-object p2
.end method

.method private static fastblur_v17(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 13

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    const/16 v2, 0x19

    if-le p3, v2, :cond_b

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 p3, p3, 0x2

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v1, v0, :cond_17

    move-object v2, p1

    goto :goto_25

    :cond_17
    div-int/2addr v2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v3, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p1, v2, v3}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_31

    new-instance v3, Lmiuix/graphics/BitmapFactory$1;

    invoke-direct {v3, p0}, Lmiuix/graphics/BitmapFactory$1;-><init>(Landroid/content/Context;)V

    move-object p0, v3

    :cond_31
    :try_start_31
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "android.graphics.Bitmap$Config"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_41
    if-ge v5, v4, :cond_61

    aget-object v6, v3, v5

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "RGBA_F16"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    if-ne v7, v6, :cond_5e

    invoke-static {v2}, Lmiuix/graphics/BitmapFactory;->transferF16ToARGB(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5d} :catch_61

    goto :goto_61

    :cond_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    :catch_61
    :cond_61
    :goto_61
    sget-object v3, Lmiuix/graphics/BitmapFactory;->sLockForRsContext:Ljava/lang/Object;

    monitor-enter v3

    :try_start_64
    sget-object v4, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    if-nez v4, :cond_6e

    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    sput-object p0, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    :cond_6e
    if-ne v1, v0, :cond_72

    move-object p0, p2

    goto :goto_73

    :cond_72
    move-object p0, v2

    :goto_73
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    if-eq v1, v4, :cond_83

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_83
    sget-object v0, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    sget-object v1, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    sget-object v4, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    int-to-float p3, p3

    invoke-virtual {v4, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v4, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v4, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v1, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    if-eq p0, p2, :cond_af

    invoke-static {p0, p2}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_af
    if-eq v2, p1, :cond_b4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b4
    if-eq p0, p2, :cond_b9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b9
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v4}, Landroid/renderscript/BaseObj;->destroy()V

    monitor-exit v3

    return-object p2

    :catchall_c4
    move-exception p0

    monitor-exit v3
    :try_end_c6
    .catchall {:try_start_64 .. :try_end_c6} :catchall_c4

    throw p0
.end method

.method public static getBitmapColorMode(Landroid/graphics/Bitmap;I)I
    .registers 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int v1, v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int v2, v2, p1

    mul-int v3, v2, v1

    div-int/lit8 v3, v3, 0x5

    invoke-static {v0, v2, v1}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_1a
    if-ge v7, v2, :cond_60

    move v9, v6

    :goto_1d
    if-ge v9, v1, :cond_5d

    invoke-virtual {v4, v7, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    const/high16 v11, 0xff0000

    and-int/2addr v11, v10

    shr-int/lit8 v11, v11, 0x10

    const v12, 0xff00

    and-int/2addr v12, v10

    shr-int/lit8 v12, v12, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-float v11, v11

    float-to-double v13, v11

    const-wide v15, 0x3fd3333333333333L  # 0.3

    mul-double/2addr v13, v15

    int-to-float v11, v12

    float-to-double v11, v11

    const-wide v15, 0x3fe2e147ae147ae1L  # 0.59

    mul-double/2addr v11, v15

    add-double/2addr v11, v13

    int-to-float v10, v10

    float-to-double v13, v10

    const-wide v15, 0x3fbc28f5c28f5c29L  # 0.11

    mul-double/2addr v13, v15

    add-double/2addr v13, v11

    double-to-int v10, v13

    const/16 v11, 0xb4

    if-ge v10, v11, :cond_5a

    add-int/lit8 v8, v8, 0x1

    if-le v8, v3, :cond_54

    const/4 v5, 0x1

    :cond_54
    mul-int/lit8 v10, v3, 0x2

    if-le v8, v10, :cond_5a

    move v5, v6

    goto :goto_5d

    :cond_5a
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_5d
    :goto_5d
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_60
    if-eq v4, v0, :cond_65

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_65
    return v5
.end method

.method public static getBitmapSize(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    :try_start_6
    invoke-static {v1}, Lmiuix/graphics/BitmapFactory;->getBitmapSize(Lmiuix/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

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

    :cond_17
    throw p0
.end method

.method public static getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    :try_start_6
    invoke-static {v1}, Lmiuix/graphics/BitmapFactory;->getBitmapSize(Lmiuix/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

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

    :cond_17
    throw p0
.end method

.method public static getBitmapSize(Lmiuix/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;
    .registers 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static getCachedCanvas()Landroid/graphics/Canvas;
    .registers 2

    sget-object v0, Lmiuix/graphics/BitmapFactory;->sCanvasCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Canvas;

    if-nez v1, :cond_12

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_12
    return-object v1
.end method

.method public static getRoundBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Lmiuix/graphics/BitmapFactory;->getRoundBitmap(Landroid/graphics/Bitmap;FLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getRoundBitmap(Landroid/graphics/Bitmap;FLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {v0, v3, p1, p1, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object p2
.end method

.method private static getWordFromName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {p0}, Lmiuix/graphics/BitmapFactory;->containsEastAsianCharacter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0}, Lmiuix/graphics/BitmapFactory;->removeSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-object v1

    :cond_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmiuix/core/util/Utf8TextUtils;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isPngFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    :try_start_6
    invoke-static {v1}, Lmiuix/graphics/BitmapFactory;->isPngFormat(Lmiuix/io/ResettableInputStream;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

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

    :cond_17
    throw p0
.end method

.method public static isPngFormat(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiuix/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    :try_start_6
    invoke-static {v1}, Lmiuix/graphics/BitmapFactory;->isPngFormat(Lmiuix/io/ResettableInputStream;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

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

    :cond_17
    throw p0
.end method

.method public static isPngFormat(Lmiuix/io/ResettableInputStream;)Z
    .registers 3

    sget-object v0, Lmiuix/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    array-length v0, v0

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Lmiuix/io/ResettableInputStream;->read([B)I

    move-result p0

    if-lt p0, v0, :cond_10

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

    array-length v1, p0

    sget-object v2, Lmiuix/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    array-length v2, v2

    if-ge v1, v2, :cond_a

    goto :goto_1c

    :cond_a
    move v1, v0

    :goto_b
    sget-object v2, Lmiuix/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1a

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

    const/4 v0, 0x0

    if-nez p2, :cond_6

    if-nez p4, :cond_6

    return-object v0

    :cond_6
    const/4 v1, 0x0

    if-nez p2, :cond_26

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-lez p2, :cond_25

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-gtz p2, :cond_16

    goto :goto_25

    :cond_16
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_35

    :cond_25
    :goto_25
    return-object v0

    :cond_26
    if-nez p4, :cond_35

    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p4, v1, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_35
    :goto_35
    invoke-static {}, Lmiuix/graphics/BitmapFactory;->getCachedCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz p1, :cond_49

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_49
    if-nez p3, :cond_89

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v4, v3, v2

    int-to-float v5, p1

    div-float v2, v5, v2

    int-to-float v6, p3

    div-float v3, v6, v3

    cmpl-float v7, v2, v3

    if-lez v7, :cond_73

    div-float/2addr v6, v4

    float-to-int v2, v6

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    move v8, v1

    move v1, p1

    move p1, v2

    move v2, v8

    goto :goto_81

    :cond_73
    cmpg-float v2, v2, v3

    if-gez v2, :cond_80

    mul-float/2addr v4, v5

    float-to-int v2, v4

    sub-int/2addr p3, v2

    div-int/lit8 p3, p3, 0x2

    move v8, v2

    move v2, p3

    move p3, v8

    goto :goto_81

    :cond_80
    move v2, v1

    :goto_81
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr p1, v1

    add-int/2addr p3, v2

    invoke-direct {v3, v1, v2, p1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p3, v3

    :cond_89
    sget-object p1, Lmiuix/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, p3, p4, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p2
.end method

.method private static removeSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    move-object v0, p0

    :cond_9
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_c
    sget-object v4, Lmiuix/graphics/BitmapFactory;->APPELLATION_SUFFIX:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v2, v5, :cond_52

    aget-object v5, v4, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_29
    move v3, v6

    goto :goto_48

    :cond_2b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiuix/graphics/BitmapFactory;->containsEastAsianCharacter(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_48
    :goto_48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4f

    goto :goto_52

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_52
    :goto_52
    if-eqz v3, :cond_5a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_5a
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_6f
    return-object v0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiuix/graphics/BitmapFactory;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .registers 5

    if-eqz p0, :cond_23

    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    if-eqz p2, :cond_d

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

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_11

    goto :goto_25

    :cond_11
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :cond_1d
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

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

    :cond_1a
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

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

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eqz v0, :cond_2f

    if-nez v1, :cond_d

    goto :goto_2f

    :cond_d
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2e
    return-object v0

    :cond_2f
    :goto_2f
    return-object p0
.end method
