.class Lcom/miui/maml/elements/BitmapProvider$UriProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Uri"


# instance fields
.field private mCachedBitmapUri:Ljava/lang/String;

.field private mCurLoadingBitmapUri:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;


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
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$302(Lcom/miui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic access$402(Lcom/miui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    .line 3
    return-object p1
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/BitmapProvider;->finish()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_7
    iput-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

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
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_f

    .line 7
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 13
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 15
    return-object p1

    .line 16
    :cond_f
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 18
    invoke-virtual {p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_1d

    .line 24
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_25

    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    .line 32
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_4a

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    .line 40
    monitor-enter v0

    .line 41
    :try_start_28
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    .line 43
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_45

    .line 49
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    .line 51
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_45

    .line 57
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    .line 59
    new-instance v1, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;

    .line 61
    invoke-direct {v1, p0, p1, p3, p4}, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;-><init>(Lcom/miui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;II)V

    .line 64
    const/4 p1, 0x0

    .line 65
    new-array p1, p1, [Ljava/lang/Object;

    .line 67
    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    :cond_45
    monitor-exit v0

    .line 71
    goto :goto_4a

    .line 72
    :catchall_47
    move-exception p1

    .line 73
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_28 .. :try_end_49} :catchall_47

    .line 74
    throw p1

    .line 75
    :cond_4a
    :goto_4a
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 77
    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 80
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 82
    return-object p1
.end method
