.class public Lmiuix/animation/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;
    }
.end annotation


# static fields
.field private static final BUILT_IN:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "miuix_anim"

.field public static final UNIT_SECOND:I = 0x3e8

.field public static final sArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private static sTimeStatArray:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sTouchSlop:F


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 3
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 6
    sput-object v0, Lmiuix/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 8
    const/16 v0, 0xb

    .line 10
    new-array v0, v0, [Ljava/lang/Class;

    .line 12
    const/4 v1, 0x0

    .line 13
    const-class v2, Ljava/lang/String;

    .line 15
    aput-object v2, v0, v1

    .line 17
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 22
    const/4 v1, 0x2

    .line 23
    const-class v2, Ljava/lang/Integer;

    .line 25
    aput-object v2, v0, v1

    .line 27
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 29
    const/4 v2, 0x3

    .line 30
    aput-object v1, v0, v2

    .line 32
    const/4 v1, 0x4

    .line 33
    const-class v2, Ljava/lang/Long;

    .line 35
    aput-object v2, v0, v1

    .line 37
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 39
    const/4 v2, 0x5

    .line 40
    aput-object v1, v0, v2

    .line 42
    const/4 v1, 0x6

    .line 43
    const-class v2, Ljava/lang/Short;

    .line 45
    aput-object v2, v0, v1

    .line 47
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 49
    const/4 v2, 0x7

    .line 50
    aput-object v1, v0, v2

    .line 52
    const/16 v1, 0x8

    .line 54
    const-class v2, Ljava/lang/Float;

    .line 56
    aput-object v2, v0, v1

    .line 58
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 60
    const/16 v2, 0x9

    .line 62
    aput-object v1, v0, v2

    .line 64
    const/16 v1, 0xa

    .line 66
    const-class v2, Ljava/lang/Double;

    .line 68
    aput-object v2, v0, v1

    .line 70
    sput-object v0, Lmiuix/animation/utils/CommonUtils;->BUILT_IN:[Ljava/lang/Class;

    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    .line 74
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 77
    sput-object v0, Lmiuix/animation/utils/CommonUtils;->sTimeStatArray:Landroid/util/ArrayMap;

    .line 79
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTo(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_18

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_4

    .line 21
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 24
    goto :goto_4

    .line 25
    :cond_18
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .registers 4

    .line 1
    if-eqz p0, :cond_22

    .line 3
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 6
    goto :goto_22

    .line 7
    :catch_6
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v2, "close "

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string p0, " failed"

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    const-string v1, "miuix_anim"

    .line 32
    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_22
    :goto_22
    return-void
.end method

.method public static compressImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 8

    .line 1
    const-string v0, "IO close fail, "

    .line 3
    const-string v1, "miuix_anim"

    .line 5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 7
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_a
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 13
    invoke-virtual {p0, v4, p1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 16
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    .line 18
    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 21
    iput p2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 23
    invoke-static {v2}, Lmiuix/animation/utils/CommonUtils;->parseToInputStream(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayInputStream;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1, v3, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 30
    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_38
    .catchall {:try_start_a .. :try_end_1e} :catchall_36

    .line 31
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    .line 34
    goto :goto_58

    .line 35
    :catch_22
    move-exception p0

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    :goto_28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    goto :goto_58

    .line 55
    :catchall_36
    move-exception p0

    .line 56
    goto :goto_59

    .line 57
    :catch_38
    move-exception p0

    .line 58
    :try_start_39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string p2, "TintDrawable.compressImage failed, "

    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_36

    .line 78
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 81
    goto :goto_58

    .line 82
    :catch_51
    move-exception p0

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    goto :goto_28

    .line 89
    :goto_58
    return-object v3

    .line 90
    :goto_59
    :try_start_59
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    .line 93
    goto :goto_70

    .line 94
    :catch_5d
    move-exception p1

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_70
    throw p0
.end method

.method public static getDistance(FFFF)D
    .registers 8

    .line 1
    sub-float/2addr p2, p0

    .line 2
    float-to-double v0, p2

    .line 3
    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 5
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 8
    move-result-wide v0

    .line 9
    sub-float/2addr p3, p1

    .line 10
    float-to-double p0, p3

    .line 11
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 14
    move-result-wide p0

    .line 15
    add-double/2addr p0, v0

    .line 16
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 19
    move-result-wide p0

    .line 20
    return-wide p0
.end method

.method public static getLocal(Ljava/lang/ThreadLocal;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ThreadLocal<",
            "TT;>;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_12

    .line 7
    if-eqz p1, :cond_12

    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    invoke-static {p1, v0}, Lmiuix/animation/utils/ObjectPool;->acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    :cond_12
    return-object v0
.end method

.method public static getRect(Lmiuix/animation/IAnimTarget;Landroid/graphics/RectF;)V
    .registers 4

    .line 1
    sget-object v0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 3
    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 6
    move-result v0

    .line 7
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 9
    sget-object v0, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    .line 11
    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 14
    move-result v0

    .line 15
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 17
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 19
    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 21
    invoke-virtual {p0, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 24
    move-result v1

    .line 25
    add-float/2addr v1, v0

    .line 26
    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 28
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 30
    sget-object v1, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 32
    invoke-virtual {p0, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 35
    move-result p0

    .line 36
    add-float/2addr p0, v0

    .line 37
    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    .line 39
    return-void
.end method

.method public static getSize(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)F
    .registers 3

    .line 1
    sget-object v0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 3
    if-ne p1, v0, :cond_7

    .line 5
    sget-object p1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 7
    goto :goto_18

    .line 8
    :cond_7
    sget-object v0, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    .line 10
    if-ne p1, v0, :cond_e

    .line 12
    sget-object p1, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 14
    goto :goto_18

    .line 15
    :cond_e
    sget-object v0, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 17
    if-eq p1, v0, :cond_18

    .line 19
    sget-object v0, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 21
    if-ne p1, v0, :cond_17

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    :cond_18
    :goto_18
    if-nez p1, :cond_1c

    .line 27
    const/4 p0, 0x0

    .line 28
    goto :goto_20

    .line 29
    :cond_1c
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 32
    move-result p0

    .line 33
    :goto_20
    return p0
.end method

.method public static getTouchSlop(Landroid/view/View;)F
    .registers 3

    .line 1
    sget v0, Lmiuix/animation/utils/CommonUtils;->sTouchSlop:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-nez v0, :cond_18

    .line 8
    if-eqz p0, :cond_18

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 21
    move-result p0

    .line 22
    int-to-float p0, p0

    .line 23
    sput p0, Lmiuix/animation/utils/CommonUtils;->sTouchSlop:F

    .line 25
    :cond_18
    sget p0, Lmiuix/animation/utils/CommonUtils;->sTouchSlop:F

    .line 27
    return p0
.end method

.method public static hasFlags(JJ)Z
    .registers 4

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static inArray([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_19

    .line 4
    if-eqz p0, :cond_19

    .line 6
    array-length v1, p0

    .line 7
    if-lez v1, :cond_19

    .line 9
    array-length v1, p0

    .line 10
    move v2, v0

    .line 11
    :goto_a
    if-ge v2, v1, :cond_19

    .line 13
    aget-object v3, p0, v2

    .line 15
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_16

    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_a

    .line 26
    :cond_19
    return v0
.end method

.method public static isArrayEmpty([Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_8

    .line 3
    array-length p0, p0

    .line 4
    if-nez p0, :cond_6

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    const/4 p0, 0x0

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    :goto_8
    const/4 p0, 0x1

    .line 10
    :goto_9
    return p0
.end method

.method public static isBuiltInClass(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiuix/animation/utils/CommonUtils;->BUILT_IN:[Ljava/lang/Class;

    .line 3
    invoke-static {v0, p0}, Lmiuix/animation/utils/CommonUtils;->inArray([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/16 v1, 0x7b

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    if-eqz p0, :cond_45

    .line 13
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_45

    .line 19
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p0

    .line 27
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    const/16 v2, 0xa

    .line 33
    if-eqz v1, :cond_42

    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/util/Map$Entry;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const/16 v2, 0x3d

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    goto :goto_1a

    .line 67
    :cond_42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    :cond_45
    const/16 p0, 0x7d

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    return-object v0
.end method

.method public static mapsToString([Ljava/util/Map;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/16 v1, 0x5b

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    array-length v2, p0

    .line 13
    const/16 v3, 0xa

    .line 15
    if-ge v1, v2, :cond_29

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const/16 v2, 0x2e

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    aget-object v2, p0, v1

    .line 30
    const-string v3, "    "

    .line 32
    invoke-static {v2, v3}, Lmiuix/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_b

    .line 42
    :cond_29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    const/16 p0, 0x5d

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static varargs mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-object p1

    .line 4
    :cond_3
    if-nez p1, :cond_6

    .line 6
    return-object p0

    .line 7
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 14
    move-result-object v0

    .line 15
    array-length v1, p0

    .line 16
    array-length v2, p1

    .line 17
    add-int/2addr v1, v2

    .line 18
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    array-length v1, p0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    array-length p0, p0

    .line 28
    array-length v1, p1

    .line 29
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    check-cast v0, [Ljava/lang/Object;

    .line 34
    return-object v0
.end method

.method public static parseToInputStream(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayInputStream;
    .registers 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    return-object v0
.end method

.method public static readProp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v3, "getprop "

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 26
    move-result-object p0

    .line 27
    new-instance v1, Ljava/io/InputStreamReader;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_23} :catch_44
    .catchall {:try_start_1 .. :try_end_23} :catchall_3f

    .line 36
    :try_start_23
    new-instance p0, Ljava/io/BufferedReader;

    .line 38
    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_3a
    .catchall {:try_start_23 .. :try_end_28} :catchall_35

    .line 41
    :try_start_28
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 44
    move-result-object v0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_33
    .catchall {:try_start_28 .. :try_end_2c} :catchall_58

    .line 45
    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 48
    invoke-static {v1}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 51
    return-object v0

    .line 52
    :catch_33
    move-exception v0

    .line 53
    goto :goto_48

    .line 54
    :catchall_35
    move-exception p0

    .line 55
    move-object v4, v0

    .line 56
    move-object v0, p0

    .line 57
    move-object p0, v4

    .line 58
    goto :goto_59

    .line 59
    :catch_3a
    move-exception p0

    .line 60
    move-object v4, v0

    .line 61
    move-object v0, p0

    .line 62
    move-object p0, v4

    .line 63
    goto :goto_48

    .line 64
    :catchall_3f
    move-exception p0

    .line 65
    move-object v1, v0

    .line 66
    move-object v0, p0

    .line 67
    move-object p0, v1

    .line 68
    goto :goto_59

    .line 69
    :catch_44
    move-exception p0

    .line 70
    move-object v1, v0

    .line 71
    move-object v0, p0

    .line 72
    move-object p0, v1

    .line 73
    :goto_48
    :try_start_48
    const-string v2, "miuix_anim"

    .line 75
    const-string v3, "readProp failed"

    .line 77
    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_58

    .line 80
    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    invoke-static {v1}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 86
    const-string p0, ""

    .line 88
    return-object p0

    .line 89
    :catchall_58
    move-exception v0

    .line 90
    :goto_59
    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    invoke-static {v1}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 96
    throw v0
.end method

.method public static runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance v0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;

    .line 6
    invoke-direct {v0, p1}, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;-><init>(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {v0, p0}, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->start(Landroid/view/View;)V

    .line 12
    return-void
.end method

.method public static varargs timeStatBegin([Ljava/lang/String;)V
    .registers 8

    .line 1
    if-eqz p0, :cond_22

    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_6

    .line 6
    goto :goto_22

    .line 7
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    move-result-wide v0

    .line 11
    array-length v2, p0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_c
    if-ge v3, v2, :cond_22

    .line 15
    aget-object v4, p0, v3

    .line 17
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_1f

    .line 23
    sget-object v5, Lmiuix/animation/utils/CommonUtils;->sTimeStatArray:Landroid/util/ArrayMap;

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    .line 34
    goto :goto_c

    .line 35
    :cond_22
    :goto_22
    return-void
.end method

.method public static timeStatClear()V
    .registers 1

    .line 1
    sget-object v0, Lmiuix/animation/utils/CommonUtils;->sTimeStatArray:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 6
    return-void
.end method

.method public static timeStatEnd(Ljava/lang/String;)J
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lmiuix/animation/utils/CommonUtils;->sTimeStatArray:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Long;

    .line 13
    if-eqz v2, :cond_10

    .line 15
    move-wide v2, v0

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    const-wide/16 v2, 0x0

    .line 19
    :goto_12
    sub-long/2addr v0, v2

    .line 20
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_38

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v3, "打印当前用时： TAG = "

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string p0, " 用时为 "

    .line 41
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    const/4 v2, 0x0

    .line 52
    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    invoke-static {p0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_38
    return-wide v0
.end method

.method public static toFloatValue(Ljava/lang/Object;)F
    .registers 4

    .line 1
    instance-of v0, p0, Ljava/lang/Integer;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->floatValue()F

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    instance-of v0, p0, Ljava/lang/Float;

    .line 14
    if-eqz v0, :cond_16

    .line 16
    check-cast p0, Ljava/lang/Float;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v2, "toFloat failed, value is "

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw v0
.end method

.method public static toIntArray([F)[I
    .registers 4

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_4
    array-length v2, p0

    .line 6
    if-ge v1, v2, :cond_f

    .line 8
    aget v2, p0, v1

    .line 10
    float-to-int v2, v2

    .line 11
    aput v2, v0, v1

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 15
    goto :goto_4

    .line 16
    :cond_f
    return-object v0
.end method

.method public static toIntValue(Ljava/lang/Object;)I
    .registers 4

    .line 1
    instance-of v0, p0, Ljava/lang/Integer;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    instance-of v0, p0, Ljava/lang/Float;

    .line 14
    if-eqz v0, :cond_16

    .line 16
    check-cast p0, Ljava/lang/Float;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Float;->intValue()I

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v2, "toFloat failed, value is "

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw v0
.end method
