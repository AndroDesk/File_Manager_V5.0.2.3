.class public Landroidx/core/graphics/drawable/IconCompat;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "IconCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/drawable/IconCompat$a;,
        Landroidx/core/graphics/drawable/IconCompat$b;,
        Landroidx/core/graphics/drawable/IconCompat$d;,
        Landroidx/core/graphics/drawable/IconCompat$c;
    }
.end annotation


# static fields
.field public static final k:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:[B

.field public d:Landroid/os/Parcelable;

.field public e:I

.field public f:I

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/graphics/PorterDuff$Mode;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 3
    sput-object v0, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 4
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 6
    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 7
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 8
    sget-object v1, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 9
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 10
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 12
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 14
    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 15
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 16
    sget-object v1, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 17
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 18
    iput p1, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    const v1, 0x3f2aaaab

    .line 17
    mul-float/2addr v0, v1

    .line 18
    float-to-int v0, v0

    .line 19
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 21
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Landroid/graphics/Canvas;

    .line 27
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 30
    new-instance v3, Landroid/graphics/Paint;

    .line 32
    const/4 v4, 0x3

    .line 33
    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 36
    int-to-float v4, v0

    .line 37
    const/high16 v5, 0x3f000000  # 0.5f

    .line 39
    mul-float/2addr v5, v4

    .line 40
    const v6, 0x3f6aaaab

    .line 43
    mul-float/2addr v6, v5

    .line 44
    if-eqz p1, :cond_4d

    .line 46
    const p1, 0x3c2aaaab

    .line 49
    mul-float/2addr p1, v4

    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    const v7, 0x3caaaaab

    .line 57
    mul-float/2addr v4, v7

    .line 58
    const/high16 v7, 0x3d000000  # 0.03125f

    .line 60
    const/4 v8, 0x0

    .line 61
    invoke-virtual {v3, p1, v8, v4, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 64
    invoke-virtual {v2, v5, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 67
    const/high16 v4, 0x1e000000

    .line 69
    invoke-virtual {v3, p1, v8, v8, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 72
    invoke-virtual {v2, v5, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 75
    invoke-virtual {v3}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 78
    :cond_4d
    const/high16 p1, -0x1000000

    .line 80
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    new-instance p1, Landroid/graphics/BitmapShader;

    .line 85
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 87
    invoke-direct {p1, p0, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 90
    new-instance v4, Landroid/graphics/Matrix;

    .line 92
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 95
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 98
    move-result v7

    .line 99
    sub-int/2addr v7, v0

    .line 100
    neg-int v7, v7

    .line 101
    int-to-float v7, v7

    .line 102
    const/high16 v8, 0x40000000  # 2.0f

    .line 104
    div-float/2addr v7, v8

    .line 105
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 108
    move-result p0

    .line 109
    sub-int/2addr p0, v0

    .line 110
    neg-int p0, p0

    .line 111
    int-to-float p0, p0

    .line 112
    div-float/2addr p0, v8

    .line 113
    invoke-virtual {v4, v7, p0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 116
    invoke-virtual {p1, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 119
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 122
    invoke-virtual {v2, v5, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    const/4 p0, 0x0

    .line 126
    invoke-virtual {v2, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    return-object v1
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_c

    .line 6
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat$a;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_c
    const/4 v2, 0x2

    .line 14
    if-ne v0, v2, :cond_2b

    .line 16
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 18
    if-eqz v0, :cond_1d

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1a

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 29
    return-object v0

    .line 30
    :cond_1d
    :goto_1d
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 34
    const-string v2, ":"

    .line 36
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    aget-object v0, v0, v1

    .line 43
    return-object v0

    .line 44
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v2, "called getResPackage() on "

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    throw v0
.end method

.method public final c()Landroid/net/Uri;
    .registers 4

    .line 1
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_c

    .line 6
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat$a;->c(Ljava/lang/Object;)Landroid/net/Uri;

    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_c
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_2a

    .line 16
    const/4 v1, 0x6

    .line 17
    if-ne v0, v1, :cond_13

    .line 19
    goto :goto_2a

    .line 20
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v2, "called getUri() on "

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0

    .line 43
    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 45
    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public final d(Landroid/content/Context;)Ljava/io/InputStream;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->c()Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "content"

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v2

    .line 15
    const-string v3, "IconCompat"

    .line 17
    if-nez v2, :cond_40

    .line 19
    const-string v2, "file"

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1b

    .line 27
    goto :goto_40

    .line 28
    :cond_1b
    :try_start_1b
    new-instance p1, Ljava/io/FileInputStream;

    .line 30
    new-instance v1, Ljava/io/File;

    .line 32
    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 36
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_29} :catch_2a

    .line 42
    return-object p1

    .line 43
    :catch_2a
    move-exception p1

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v2, "Unable to load image from path: "

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    goto :goto_5e

    .line 65
    :cond_40
    :goto_40
    :try_start_40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 72
    move-result-object p1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_48} :catch_49

    .line 73
    return-object p1

    .line 74
    :catch_49
    move-exception p1

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    const-string v2, "Unable to load image from URI: "

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :goto_5e
    const/4 p1, 0x0

    .line 96
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_c

    .line 6
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "Icon(typ="

    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 22
    packed-switch v2, :pswitch_data_ee

    .line 25
    const-string v2, "UNKNOWN"

    .line 27
    goto :goto_2c

    .line 28
    :pswitch_1b  #0x6
    const-string v2, "URI_MASKABLE"

    .line 30
    goto :goto_2c

    .line 31
    :pswitch_1e  #0x5
    const-string v2, "BITMAP_MASKABLE"

    .line 33
    goto :goto_2c

    .line 34
    :pswitch_21  #0x4
    const-string v2, "URI"

    .line 36
    goto :goto_2c

    .line 37
    :pswitch_24  #0x3
    const-string v2, "DATA"

    .line 39
    goto :goto_2c

    .line 40
    :pswitch_27  #0x2
    const-string v2, "RESOURCE"

    .line 42
    goto :goto_2c

    .line 43
    :pswitch_2a  #0x1
    const-string v2, "BITMAP"

    .line 45
    :goto_2c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 50
    packed-switch v2, :pswitch_data_fe

    .line 53
    goto/16 :goto_c5

    .line 55
    :pswitch_36  #0x4, 0x6
    const-string v1, " uri="

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    goto/16 :goto_c5

    .line 67
    :pswitch_42  #0x3
    const-string v1, " len="

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 79
    if-eqz v1, :cond_c5

    .line 81
    const-string v1, " off="

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    goto :goto_c5

    .line 92
    :pswitch_5b  #0x2
    const-string v2, " pkg="

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, " id="

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const/4 v2, 0x1

    .line 108
    new-array v2, v2, [Ljava/lang/Object;

    .line 110
    const/4 v3, 0x0

    .line 111
    iget v4, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 113
    if-ne v4, v1, :cond_79

    .line 115
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 117
    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat$a;->a(Ljava/lang/Object;)I

    .line 120
    move-result v1

    .line 121
    goto :goto_7e

    .line 122
    :cond_79
    const/4 v1, 0x2

    .line 123
    if-ne v4, v1, :cond_8e

    .line 125
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 127
    :goto_7e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v1

    .line 131
    aput-object v1, v2, v3

    .line 133
    const-string v1, "0x%08x"

    .line 135
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    goto :goto_c5

    .line 143
    :cond_8e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const-string v2, "called getResId() on "

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v1

    .line 162
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    throw v0

    .line 166
    :pswitch_a5  #0x1, 0x5
    const-string v1, " size="

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 173
    check-cast v1, Landroid/graphics/Bitmap;

    .line 175
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 178
    move-result v1

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, "x"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 189
    check-cast v1, Landroid/graphics/Bitmap;

    .line 191
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 194
    move-result v1

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    :cond_c5
    :goto_c5
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 200
    if-eqz v1, :cond_d3

    .line 202
    const-string v1, " tint="

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    :cond_d3
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 214
    sget-object v2, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 216
    if-eq v1, v2, :cond_e3

    .line 218
    const-string v1, " mode="

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    :cond_e3
    const-string v1, ")"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object v0

    .line 237
    return-object v0

    .line 238
    nop

    .line 239
    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_2a  #00000001
        :pswitch_27  #00000002
        :pswitch_24  #00000003
        :pswitch_21  #00000004
        :pswitch_1e  #00000005
        :pswitch_1b  #00000006
    .end packed-switch

    .line 255
    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_a5  #00000001
        :pswitch_5b  #00000002
        :pswitch_42  #00000003
        :pswitch_36  #00000004
        :pswitch_a5  #00000005
        :pswitch_36  #00000006
    .end packed-switch
.end method
