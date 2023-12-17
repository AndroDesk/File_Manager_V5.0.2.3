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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-void
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .registers 6

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v0

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, p0

    mul-double/2addr v0, v2

    int-to-double p0, p1

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const/4 v0, 0x1

    :goto_e
    mul-int/lit8 v1, v0, 0x2

    int-to-double v2, v1

    cmpg-double v2, v2, p0

    if-gtz v2, :cond_17

    move v0, v1

    goto :goto_e

    :cond_17
    return v0
.end method

.method public static create(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_a0

    goto :goto_58

    :sswitch_c
    const-string v0, "ApplicationIcon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_58

    :cond_15
    const/4 v1, 0x6

    goto :goto_58

    :sswitch_17
    const-string v0, "ResourceImage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_58

    :cond_20
    const/4 v1, 0x5

    goto :goto_58

    :sswitch_22
    const-string v0, "VirtualScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_58

    :cond_2b
    const/4 v1, 0x4

    goto :goto_58

    :sswitch_2d
    const-string v0, "Uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_58

    :cond_36
    const/4 v1, 0x3

    goto :goto_58

    :sswitch_38
    const-string v0, "FileSystem"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_58

    :cond_41
    const/4 v1, 0x2

    goto :goto_58

    :sswitch_43
    const-string v0, "BitmapHolder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_58

    :cond_4c
    const/4 v1, 0x1

    goto :goto_58

    :sswitch_4e
    const-string v0, "BitmapVar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_58

    :cond_57
    const/4 v1, 0x0

    :goto_58
    packed-switch v1, :pswitch_data_be

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    const-string v1, "BitmapProvider"

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenContext;->getObjectFactory(Ljava/lang/String;)Lcom/miui/maml/ObjectFactory;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;

    if-eqz v0, :cond_70

    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;->create(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;

    move-result-object p1

    if-eqz p1, :cond_70

    return-object p1

    :cond_70
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

    :pswitch_76  #0x6
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

    :pswitch_7c  #0x5
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

    :pswitch_82  #0x4
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

    :pswitch_88  #0x3
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

    :pswitch_8e  #0x2
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$FileSystemProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$FileSystemProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

    :pswitch_94  #0x1
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

    :pswitch_9a  #0x0
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

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

    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    return-void
.end method

.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 5

    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p1
.end method

.method public getBitmapFromUri(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_60
    .catchall {:try_start_1 .. :try_end_11} :catchall_5d

    if-lez p2, :cond_4c

    if-lez p3, :cond_4c

    :try_start_15
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    mul-int v3, p2, p3

    invoke-static {v2, v3}, Lcom/miui/maml/elements/BitmapProvider;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput p3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3f} :catch_5a
    .catchall {:try_start_15 .. :try_end_3f} :catchall_57

    :try_start_3f
    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_4a
    .catchall {:try_start_3f .. :try_end_43} :catchall_71

    invoke-static {v1}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p2

    :catch_4a
    move-exception p2

    goto :goto_63

    :cond_4c
    :try_start_4c
    invoke-static {v1, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_50} :catch_5a
    .catchall {:try_start_4c .. :try_end_50} :catchall_57

    invoke-static {v1}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    :catchall_57
    move-exception p2

    move-object p1, v0

    goto :goto_72

    :catch_5a
    move-exception p2

    move-object p1, v0

    goto :goto_63

    :catchall_5d
    move-exception p2

    move-object p1, v0

    goto :goto_73

    :catch_60
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    :goto_63
    :try_start_63
    const-string p3, "BitmapProvider"

    const-string v2, "getBitmapFromUri Exception"

    invoke-static {p3, v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_71

    invoke-static {v1}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v0

    :catchall_71
    move-exception p2

    :goto_72
    move-object v0, v1

    :goto_73
    invoke-static {v0}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/miui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw p2
.end method

.method public init(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider;->reset()V

    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method
