.class public Lcom/miui/maml/util/AssetsResourceLoader;
.super Lcom/miui/maml/ResourceLoader;
.source "AssetsResourceLoader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AssetsResourceLoader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/ResourceLoader;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/miui/maml/util/AssetsResourceLoader;->mContext:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/miui/maml/util/AssetsResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "AssetsResourceLoader"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/util/AssetsResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_50

    .line 8
    :try_start_7
    iget-object v0, p0, Lcom/miui/maml/util/AssetsResourceLoader;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    iget-object v3, p0, Lcom/miui/maml/util/AssetsResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v3, "/"

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 39
    move-result-object v1

    .line 40
    if-eqz p2, :cond_50

    .line 42
    array-length v0, p2

    .line 43
    if-lez v0, :cond_50

    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 49
    move-result v2

    .line 50
    int-to-long v2, v2

    .line 51
    aput-wide v2, p2, v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_34} :catch_35

    .line 53
    goto :goto_50

    .line 54
    :catch_35
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string v0, "resource "

    .line 61
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string p1, " do not exists"

    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    const-string p2, "AssetsResourceLoader"

    .line 78
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_50
    :goto_50
    return-object v1
.end method

.method public resourceExists(Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_51

    .line 7
    :try_start_6
    iget-object v0, p0, Lcom/miui/maml/util/AssetsResourceLoader;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    iget-object v2, p0, Lcom/miui/maml/util/AssetsResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, "/"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 38
    move-result-object p1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_26} :catch_34
    .catchall {:try_start_6 .. :try_end_26} :catchall_32

    .line 39
    if-eqz p1, :cond_51

    .line 41
    :try_start_28
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2d

    .line 44
    const/4 p1, 0x1

    .line 45
    goto :goto_52

    .line 46
    :catch_2d
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    goto :goto_51

    .line 51
    :catchall_32
    move-exception p1

    .line 52
    goto :goto_50

    .line 53
    :catch_34
    :try_start_34
    const-string v0, "AssetsResourceLoader"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v2, "resource "

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string p1, " do not exists"

    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_34 .. :try_end_4f} :catchall_32

    .line 80
    goto :goto_51

    .line 81
    :goto_50
    throw p1

    .line 82
    :cond_51
    :goto_51
    const/4 p1, 0x0

    .line 83
    :goto_52
    return p1
.end method
