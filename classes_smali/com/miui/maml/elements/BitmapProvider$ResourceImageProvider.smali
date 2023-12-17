.class Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceImageProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ResourceImage"


# instance fields
.field private mAsyncLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

.field private mCachedBitmapName:Ljava/lang/String;

.field public mLoadingBitmapName:Ljava/lang/String;

.field public mSrcNameLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    .line 11
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;

    .line 13
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;-><init>(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;)V

    .line 16
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mAsyncLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

    .line 18
    return-void
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 3
    return-object p1
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/BitmapProvider;->finish()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_7
    iput-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 14
    invoke-virtual {v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    .line 21
    throw v1
.end method

.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 6

    .line 1
    iget-object p3, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 3
    invoke-virtual {p3}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 6
    move-result-object p3

    .line 7
    if-eqz p3, :cond_e

    .line 9
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 12
    move-result p3

    .line 13
    if-nez p3, :cond_16

    .line 15
    :cond_e
    iget-object p3, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 17
    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    move-result p3

    .line 21
    if-nez p3, :cond_61

    .line 23
    :cond_16
    const/4 p3, 0x0

    .line 24
    if-eqz p2, :cond_32

    .line 26
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 28
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 31
    move-result-object p2

    .line 32
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 34
    invoke-virtual {p2, p1}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 37
    move-result-object p2

    .line 38
    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 40
    if-nez p2, :cond_2a

    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    iget-object p3, p2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 45
    :goto_2c
    invoke-virtual {p4, p3}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 48
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 50
    goto :goto_61

    .line 51
    :cond_32
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 53
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 56
    move-result-object p2

    .line 57
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 59
    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mAsyncLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

    .line 61
    invoke-virtual {p2, p1, p4}, Lcom/miui/maml/ResourceManager;->getBitmapInfoAsync(Ljava/lang/String;Lcom/miui/maml/ResourceManager$AsyncLoadListener;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 64
    move-result-object p2

    .line 65
    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    .line 67
    monitor-enter p4

    .line 68
    if-eqz p2, :cond_4d

    .line 70
    :try_start_45
    iget-boolean v0, p2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLoading:Z

    .line 72
    if-nez v0, :cond_4a

    .line 74
    goto :goto_4d

    .line 75
    :cond_4a
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 77
    goto :goto_5c

    .line 78
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 80
    if-nez p2, :cond_53

    .line 82
    move-object p2, p3

    .line 83
    goto :goto_55

    .line 84
    :cond_53
    iget-object p2, p2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 86
    :goto_55
    invoke-virtual {v0, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 89
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 93
    :goto_5c
    monitor-exit p4

    .line 94
    goto :goto_61

    .line 95
    :catchall_5e
    move-exception p1

    .line 96
    monitor-exit p4
    :try_end_60
    .catchall {:try_start_45 .. :try_end_60} :catchall_5e

    .line 97
    throw p1

    .line 98
    :cond_61
    :goto_61
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 100
    return-object p1
.end method
