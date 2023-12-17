.class public Lcom/android/fileexplorer/view/viewlarge/decoder/SkiaImageRegionDecoder;
.super Ljava/lang/Object;
.source "SkiaImageRegionDecoder.java"

# interfaces
.implements Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;


# static fields
.field private static final ASSET_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final FILE_PREFIX:Ljava/lang/String; = "file://"

.field private static final RESOURCE_PREFIX:Ljava/lang/String; = "android.resource://"


# instance fields
.field private mDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private final mDecoderLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/decoder/SkiaImageRegionDecoder;->mDecoderLock:Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/decoder/SkiaImageRegionDecoder;->mDecoderLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 6
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 9
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 13
    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 15
    iget-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/decoder/SkiaImageRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 17
    invoke-virtual {p2, p1, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 20
    move-result-object p1

    .line 21
    monitor-exit v0

    .line 22
    return-object p1

    .line 23
    :catchall_16
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    .line 25
    throw p1
.end method

.method public init(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Point;
    .registers 10

    .line 1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.resource://"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_74

    .line 15
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_21

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v1

    .line 33
    goto :goto_29

    .line 34
    :cond_21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 41
    move-result-object v1

    .line 42
    :goto_29
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 45
    move-result-object p2

    .line 46
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x2

    .line 51
    if-ne v4, v5, :cond_4b

    .line 53
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 57
    const-string v6, "drawable"

    .line 59
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_4b

    .line 65
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Ljava/lang/String;

    .line 71
    invoke-virtual {v1, p2, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    move-result p2

    .line 75
    goto :goto_65

    .line 76
    :cond_4b
    if-ne v4, v2, :cond_64

    .line 78
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/CharSequence;

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_64

    .line 90
    :try_start_59
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Ljava/lang/String;

    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    move-result p2
    :try_end_63
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_63} :catch_64

    .line 100
    goto :goto_65

    .line 101
    :catch_64
    :cond_64
    move p2, v3

    .line 102
    :goto_65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/decoder/SkiaImageRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 116
    goto :goto_b3

    .line 117
    :cond_74
    const-string v1, "file:///android_asset/"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_91

    .line 125
    const/16 p2, 0x16

    .line 127
    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1, p2, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    .line 138
    move-result-object p1

    .line 139
    invoke-static {p1, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    .line 142
    move-result-object p1

    .line 143
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/decoder/SkiaImageRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 145
    goto :goto_b3

    .line 146
    :cond_91
    const-string v1, "file://"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_a5

    .line 154
    const/4 p1, 0x7

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    .line 162
    move-result-object p1

    .line 163
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/decoder/SkiaImageRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 165
    goto :goto_b3

    .line 166
    :cond_a5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 173
    move-result-object p1

    .line 174
    invoke-static {p1, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    .line 177
    move-result-object p1

    .line 178
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/decoder/SkiaImageRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 180
    :goto_b3
    new-instance p1, Landroid/graphics/Point;

    .line 182
    iget-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/decoder/SkiaImageRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 184
    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    .line 187
    move-result p2

    .line 188
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/decoder/SkiaImageRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 190
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    .line 193
    move-result v0

    .line 194
    invoke-direct {p1, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 197
    return-object p1
.end method

.method public isReady()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/decoder/SkiaImageRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public recycle()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/decoder/SkiaImageRegionDecoder;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 6
    return-void
.end method
