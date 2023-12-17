.class public abstract Lcom/miui/maml/elements/BitmapProvider;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;,
        Lcom/miui/maml/elements/BitmapProvider$UriProvider;,
        Lcom/miui/maml/elements/BitmapProvider$FileSystemProvider;,
        Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;,
        Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;,
        Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;,
        Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;,
        Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;,
        Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BitmapProvider"


# instance fields
.field public mRoot:Lcom/miui/maml/ScreenElementRoot;

.field public mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    iput-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 12
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 14
    return-void
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .registers 6

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 3
    int-to-double v0, v0

    .line 4
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 6
    int-to-double v2, p0

    .line 7
    mul-double/2addr v0, v2

    .line 8
    int-to-double p0, p1

    .line 9
    div-double/2addr v0, p0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 13
    move-result-wide p0

    .line 14
    const/4 v0, 0x1

    .line 15
    :goto_e
    mul-int/lit8 v1, v0, 0x2

    .line 17
    int-to-double v2, v1

    .line 18
    cmpg-double v2, v2, p0

    .line 20
    if-gtz v2, :cond_17

    .line 22
    move v0, v1

    .line 23
    goto :goto_e

    .line 24
    :cond_17
    return v0
.end method

.method public static create(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    sparse-switch v0, :sswitch_data_a0

    .line 12
    goto :goto_58

    .line 13
    :sswitch_c
    const-string v0, "ApplicationIcon"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 21
    goto :goto_58

    .line 22
    :cond_15
    const/4 v1, 0x6

    .line 23
    goto :goto_58

    .line 24
    :sswitch_17
    const-string v0, "ResourceImage"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_20

    .line 32
    goto :goto_58

    .line 33
    :cond_20
    const/4 v1, 0x5

    .line 34
    goto :goto_58

    .line 35
    :sswitch_22
    const-string v0, "VirtualScreen"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2b

    .line 43
    goto :goto_58

    .line 44
    :cond_2b
    const/4 v1, 0x4

    .line 45
    goto :goto_58

    .line 46
    :sswitch_2d
    const-string v0, "Uri"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_36

    .line 54
    goto :goto_58

    .line 55
    :cond_36
    const/4 v1, 0x3

    .line 56
    goto :goto_58

    .line 57
    :sswitch_38
    const-string v0, "FileSystem"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_41

    .line 65
    goto :goto_58

    .line 66
    :cond_41
    const/4 v1, 0x2

    .line 67
    goto :goto_58

    .line 68
    :sswitch_43
    const-string v0, "BitmapHolder"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_4c

    .line 76
    goto :goto_58

    .line 77
    :cond_4c
    const/4 v1, 0x1

    .line 78
    goto :goto_58

    .line 79
    :sswitch_4e
    const-string v0, "BitmapVar"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_57

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    const/4 v1, 0x0

    .line 89
    :goto_58
    packed-switch v1, :pswitch_data_be

    .line 92
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 95
    move-result-object v0

    .line 96
    const-string v1, "BitmapProvider"

    .line 98
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenContext;->getObjectFactory(Ljava/lang/String;)Lcom/miui/maml/ObjectFactory;

    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;

    .line 104
    if-eqz v0, :cond_70

    .line 106
    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;->create(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;

    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_70

    .line 112
    return-object p1

    .line 113
    :cond_70
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 115
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 118
    return-object p1

    .line 119
    :pswitch_76  #0x6
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;

    .line 121
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 124
    return-object p1

    .line 125
    :pswitch_7c  #0x5
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 127
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 130
    return-object p1

    .line 131
    :pswitch_82  #0x4
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;

    .line 133
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 136
    return-object p1

    .line 137
    :pswitch_88  #0x3
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    .line 139
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 142
    return-object p1

    .line 143
    :pswitch_8e  #0x2
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$FileSystemProvider;

    .line 145
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$FileSystemProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 148
    return-object p1

    .line 149
    :pswitch_94  #0x1
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;

    .line 151
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 154
    return-object p1

    .line 155
    :pswitch_9a  #0x0
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;

    .line 157
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 160
    return-object p1

    .line 161
    :sswitch_data_a0
    .sparse-switch
        -0x7321c4a8 -> :sswitch_4e
        -0x1dc3e025 -> :sswitch_43
        -0x1d83dd15 -> :sswitch_38
        0x14d4c -> :sswitch_2d
        0x4b044737 -> :sswitch_22
        0x68c97dcd -> :sswitch_17
        0x7a3645c9 -> :sswitch_c
    .end sparse-switch

    .line 191
    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_9a  #00000000
        :pswitch_94  #00000001
        :pswitch_8e  #00000002
        :pswitch_88  #00000003
        :pswitch_82  #00000004
        :pswitch_7c  #00000005
        :pswitch_76  #00000006
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 6
    return-void
.end method

.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 3
    return-object p1
.end method

.method public getBitmapFromUri(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 4
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 7
    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 17
    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_60
    .catchall {:try_start_1 .. :try_end_11} :catchall_5d

    .line 18
    if-lez p2, :cond_4c

    .line 20
    if-lez p3, :cond_4c

    .line 22
    :try_start_15
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 24
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 27
    const/4 v3, 0x1

    .line 28
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 30
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 33
    mul-int v3, p2, p3

    .line 35
    invoke-static {v2, v3}, Lcom/miui/maml/elements/BitmapProvider;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    .line 38
    move-result v3

    .line 39
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 41
    const/4 v3, 0x0

    .line 42
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 44
    iput p3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 46
    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 48
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 50
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 53
    move-result-object p2

    .line 54
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 63
    move-result-object p1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3f} :catch_5a
    .catchall {:try_start_15 .. :try_end_3f} :catchall_57

    .line 64
    :try_start_3f
    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 67
    move-result-object p2
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_4a
    .catchall {:try_start_3f .. :try_end_43} :catchall_71

    .line 68
    invoke-static {v1}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 71
    invoke-static {p1}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 74
    return-object p2

    .line 75
    :catch_4a
    move-exception p2

    .line 76
    goto :goto_63

    .line 77
    :cond_4c
    :try_start_4c
    invoke-static {v1, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 80
    move-result-object p1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_50} :catch_5a
    .catchall {:try_start_4c .. :try_end_50} :catchall_57

    .line 81
    invoke-static {v1}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 84
    invoke-static {v0}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 87
    return-object p1

    .line 88
    :catchall_57
    move-exception p2

    .line 89
    move-object p1, v0

    .line 90
    goto :goto_72

    .line 91
    :catch_5a
    move-exception p2

    .line 92
    move-object p1, v0

    .line 93
    goto :goto_63

    .line 94
    :catchall_5d
    move-exception p2

    .line 95
    move-object p1, v0

    .line 96
    goto :goto_73

    .line 97
    :catch_60
    move-exception p2

    .line 98
    move-object p1, v0

    .line 99
    move-object v1, p1

    .line 100
    :goto_63
    :try_start_63
    const-string p3, "BitmapProvider"

    .line 102
    const-string v2, "getBitmapFromUri Exception"

    .line 104
    invoke-static {p3, v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_71

    .line 107
    invoke-static {v1}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 110
    invoke-static {p1}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 113
    return-object v0

    .line 114
    :catchall_71
    move-exception p2

    .line 115
    :goto_72
    move-object v0, v1

    .line 116
    :goto_73
    invoke-static {v0}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 119
    invoke-static {p1}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 122
    throw p2
.end method

.method public init(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider;->reset()V

    .line 4
    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method
