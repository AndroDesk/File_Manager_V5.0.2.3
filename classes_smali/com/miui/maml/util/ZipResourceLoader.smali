.class public Lcom/miui/maml/util/ZipResourceLoader;
.super Lcom/miui/maml/ResourceLoader;
.source "ZipResourceLoader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZipResourceLoader"


# instance fields
.field private mInnerPath:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mResourcePath:Ljava/lang/String;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3
    invoke-direct {p0}, Lcom/miui/maml/ResourceLoader;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 6
    iput-object p1, p0, Lcom/miui/maml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    if-nez p2, :cond_16

    const-string p2, ""

    .line 7
    :cond_16
    iput-object p2, p0, Lcom/miui/maml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    if-eqz p3, :cond_1c

    .line 8
    iput-object p3, p0, Lcom/miui/maml/ResourceLoader;->mManifestName:Ljava/lang/String;

    .line 9
    :cond_1c
    invoke-virtual {p0}, Lcom/miui/maml/util/ZipResourceLoader;->init()V

    return-void

    .line 10
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "empty zip path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f

    .line 6
    if-eqz v1, :cond_d

    .line 8
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    .line 11
    :catch_a
    const/4 v1, 0x0

    .line 12
    :try_start_b
    iput-object v1, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 14
    :cond_d
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    .line 18
    throw v1
.end method


# virtual methods
.method public finalize()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/util/ZipResourceLoader;->close()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

.method public finish()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/util/ZipResourceLoader;->close()V

    .line 4
    invoke-super {p0}, Lcom/miui/maml/ResourceLoader;->finish()V

    .line 7
    return-void
.end method

.method public getID()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ZipResourceLoader"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Lcom/miui/maml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_48

    .line 6
    if-nez p1, :cond_8

    .line 8
    goto :goto_48

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_b
    iget-object v2, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 14
    if-eqz v2, :cond_43

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    iget-object v4, p0, Lcom/miui/maml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_28

    .line 39
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_45

    .line 40
    return-object v1

    .line 41
    :cond_28
    if-eqz p2, :cond_31

    .line 43
    const/4 v2, 0x0

    .line 44
    :try_start_2b
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 47
    move-result-wide v3

    .line 48
    aput-wide v3, p2, v2

    .line 50
    :cond_31
    iget-object p2, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 52
    invoke-virtual {p2, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 55
    move-result-object p1
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_37} :catch_39
    .catchall {:try_start_2b .. :try_end_37} :catchall_45

    .line 56
    :try_start_37
    monitor-exit v0

    .line 57
    return-object p1

    .line 58
    :catch_39
    move-exception p1

    .line 59
    const-string p2, "ZipResourceLoader"

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_43
    monitor-exit v0

    .line 69
    return-object v1

    .line 70
    :catchall_45
    move-exception p1

    .line 71
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_45

    .line 72
    throw p1

    .line 73
    :cond_48
    :goto_48
    return-object v1
.end method

.method public init()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ResourceLoader;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_6
    iget-object v1, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_32

    .line 9
    if-nez v1, :cond_30

    .line 11
    :try_start_a
    new-instance v1, Ljava/util/zip/ZipFile;

    .line 13
    iget-object v2, p0, Lcom/miui/maml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 15
    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object v1, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_14
    .catchall {:try_start_a .. :try_end_13} :catchall_32

    .line 20
    goto :goto_30

    .line 21
    :catch_14
    move-exception v1

    .line 22
    :try_start_15
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    const-string v1, "ZipResourceLoader"

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const-string v3, "fail to init zip file: "

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v3, p0, Lcom/miui/maml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_30
    :goto_30
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_32
    move-exception v1

    .line 52
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_32

    .line 53
    throw v1
.end method

.method public resourceExists(Ljava/lang/String;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2c

    .line 6
    if-nez p1, :cond_8

    .line 8
    goto :goto_2c

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_b
    iget-object v2, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 14
    if-eqz v2, :cond_27

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    iget-object v4, p0, Lcom/miui/maml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_27

    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_27
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :catchall_29
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_29

    .line 44
    throw p1

    .line 45
    :cond_2c
    :goto_2c
    return v1
.end method
