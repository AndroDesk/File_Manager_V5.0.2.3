.class public Lcom/miui/maml/elements/TimepanelScreenElement;
.super Lcom/miui/maml/elements/ImageScreenElement;
.source "TimepanelScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TimepanelScreenElement"

.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field public static final TAG_NAME:Ljava/lang/String; = "Time"


# instance fields
.field private mBmpHeight:I

.field private mBmpWidth:I

.field public mCalendar:Ljava/util/Calendar;

.field private mForceUpdate:Z

.field private mFormat:Ljava/lang/String;

.field private mFormatExp:Lcom/miui/maml/data/Expression;

.field private mFormatRaw:Ljava/lang/String;

.field private mLoadResourceFailed:Z

.field private mLocalizedZero:C

.field private mOldFormat:Ljava/lang/String;

.field private mOldSrc:Ljava/lang/String;

.field private mPreMinute:J

.field private mPreTime:Ljava/lang/CharSequence;

.field private mSpace:I

.field private mTimeZoneExp:Lcom/miui/maml/data/Expression;

.field private mUpdateTimeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 10
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    .line 17
    move-result p2

    .line 18
    iput-char p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    .line 20
    new-instance p2, Lcom/miui/maml/elements/TimepanelScreenElement$1;

    .line 22
    invoke-direct {p2, p0}, Lcom/miui/maml/elements/TimepanelScreenElement$1;-><init>(Lcom/miui/maml/elements/TimepanelScreenElement;)V

    .line 25
    iput-object p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    .line 27
    const-string p2, "format"

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 38
    move-result-object p2

    .line 39
    const-string v0, "formatExp"

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 48
    move-result-object p2

    .line 49
    iput-object p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatExp:Lcom/miui/maml/data/Expression;

    .line 51
    const-string p2, "space"

    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 57
    move-result p2

    .line 58
    int-to-double v0, p2

    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 62
    move-result p2

    .line 63
    float-to-int p2, p2

    .line 64
    iput p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mSpace:I

    .line 66
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 69
    move-result-object p2

    .line 70
    const-string v0, "timeZoneId"

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mTimeZoneExp:Lcom/miui/maml/data/Expression;

    .line 82
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/TimepanelScreenElement;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/TimepanelScreenElement;)Lcom/miui/maml/data/Expression;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mTimeZoneExp:Lcom/miui/maml/data/Expression;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/TimepanelScreenElement;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/TimepanelScreenElement;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mForceUpdate:Z

    .line 3
    return p0
.end method

.method public static synthetic access$400(Lcom/miui/maml/elements/TimepanelScreenElement;)Ljava/lang/CharSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method public static synthetic access$402(Lcom/miui/maml/elements/TimepanelScreenElement;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 3
    return-object p1
.end method

.method public static synthetic access$500(Lcom/miui/maml/elements/TimepanelScreenElement;C)Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$600(Lcom/miui/maml/elements/TimepanelScreenElement;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mSpace:I

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lcom/miui/maml/elements/TimepanelScreenElement;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    .line 3
    return p0
.end method

.method public static synthetic access$702(Lcom/miui/maml/elements/TimepanelScreenElement;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    .line 3
    return p1
.end method

.method private createBitmap()V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    const/16 v3, 0xb

    .line 6
    if-ge v0, v3, :cond_4e

    .line 8
    const-string v3, "0123456789:"

    .line 10
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 13
    move-result v4

    .line 14
    invoke-direct {p0, v4}, Lcom/miui/maml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    .line 17
    move-result-object v4

    .line 18
    if-nez v4, :cond_2d

    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    .line 23
    const-string v1, "Failed to load digit bitmap: "

    .line 25
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 32
    move-result v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const-string v1, "TimepanelScreenElement"

    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 46
    :cond_2d
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 49
    move-result v3

    .line 50
    if-ge v1, v3, :cond_37

    .line 52
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 55
    move-result v1

    .line 56
    :cond_37
    iget v3, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    .line 58
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 61
    move-result v5

    .line 62
    if-ge v3, v5, :cond_45

    .line 64
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 67
    move-result v3

    .line 68
    iput v3, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    .line 70
    :cond_45
    if-nez v2, :cond_4b

    .line 72
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    .line 75
    move-result v2

    .line 76
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    .line 78
    goto :goto_3

    .line 79
    :cond_4e
    mul-int/lit8 v1, v1, 0x5

    .line 81
    iget v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mSpace:I

    .line 83
    mul-int/lit8 v0, v0, 0x4

    .line 85
    add-int/2addr v0, v1

    .line 86
    iget v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    .line 88
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 90
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 97
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 99
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 102
    iget v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    .line 104
    int-to-double v0, v0

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 108
    move-result-wide v0

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->setActualHeight(D)V

    .line 112
    return-void
.end method

.method private getDigitBmp(C)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_c

    .line 11
    const-string v0, "time.png"

    .line 13
    :cond_c
    const/16 v1, 0x3a

    .line 15
    if-ne p1, v1, :cond_13

    .line 17
    const-string p1, "dot"

    .line 19
    goto :goto_23

    .line 20
    :cond_13
    iget-char v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    .line 22
    if-lt p1, v1, :cond_1f

    .line 24
    add-int/lit8 v2, v1, 0x9

    .line 26
    if-gt p1, v2, :cond_1f

    .line 28
    sub-int/2addr p1, v1

    .line 29
    add-int/lit8 p1, p1, 0x30

    .line 31
    int-to-char p1, p1

    .line 32
    :cond_1f
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    :goto_23
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 39
    move-result-object v1

    .line 40
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 42
    invoke-static {v0, p1}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1, p1}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method private getFormat()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatExp:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    .line 12
    return-object v0
.end method

.method private setDateFormat()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_20

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatExp:Lcom/miui/maml/data/Expression;

    .line 11
    if-nez v0, :cond_20

    .line 13
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1b

    .line 25
    const-string v0, "kk:mm"

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    const-string v0, "hh:mm"

    .line 30
    :goto_1d
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    .line 32
    goto :goto_24

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    .line 37
    :goto_24
    return-void
.end method

.method private updateTime(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iput-boolean p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mForceUpdate:Z

    .line 16
    iget-object p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->postInMainThread(Ljava/lang/Runnable;)V

    .line 21
    return-void
.end method


# virtual methods
.method public doTick(J)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->doTick(J)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    move-result-wide p1

    .line 8
    const-wide/32 v0, 0xea60

    .line 11
    div-long/2addr p1, v0

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0}, Lcom/miui/maml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    iget-wide v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreMinute:J

    .line 22
    cmp-long v2, p1, v2

    .line 24
    if-nez v2, :cond_29

    .line 26
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mOldSrc:Ljava/lang/String;

    .line 28
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_29

    .line 34
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mOldFormat:Ljava/lang/String;

    .line 36
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_33

    .line 42
    :cond_29
    const/4 v2, 0x1

    .line 43
    invoke-direct {p0, v2}, Lcom/miui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    .line 46
    iput-wide p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreMinute:J

    .line 48
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mOldSrc:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mOldFormat:Ljava/lang/String;

    .line 52
    :cond_33
    return-void
.end method

.method public finish()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    invoke-super {p0}, Lcom/miui/maml/elements/ImageScreenElement;->finish()V

    .line 23
    return-void
.end method

.method public getBitmapWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    .line 3
    return v0
.end method

.method public init()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ImageScreenElement;->init()V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/TimepanelScreenElement;->setDateFormat()V

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 10
    invoke-direct {p0}, Lcom/miui/maml/elements/TimepanelScreenElement;->createBitmap()V

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    .line 17
    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 7
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    .line 14
    move-result v0

    .line 15
    iput-char v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    .line 17
    invoke-direct {p0}, Lcom/miui/maml/elements/TimepanelScreenElement;->setDateFormat()V

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    .line 24
    return-void
.end method
