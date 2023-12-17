.class public final Lb/a;
.super Ljava/lang/Object;
.source "WpsSnapshotV1Fetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ly1/a;

.field public volatile b:Ly1/b;

.field public c:Ljava/io/InputStream;

.field public volatile d:Z


# direct methods
.method public constructor <init>(Ly1/a;Ly1/b;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lb/a;->a:Ly1/a;

    .line 6
    iput-object p2, p0, Lb/a;->b:Ly1/b;

    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lb/a;->b:Ly1/b;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_8f

    .line 12
    iget-object p2, p0, Lb/a;->b:Ly1/b;

    .line 14
    iget-object p2, p2, Ly1/b;->a:Landroid/content/Context;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-static {p2}, La/b;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_81

    .line 34
    new-instance p2, Ljava/io/File;

    .line 36
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_81

    .line 45
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 48
    move-result-wide v1

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    :try_start_3f
    const-string p2, "MD5"

    .line 66
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 77
    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    .line 80
    move-result-object p2

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    const/4 v2, 0x0

    .line 87
    :goto_56
    array-length v3, p2

    .line 88
    if-ge v2, v3, :cond_73

    .line 90
    aget-byte v3, p2, v2

    .line 92
    and-int/lit16 v3, v3, 0xff

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 101
    move-result v4

    .line 102
    const/4 v5, 0x1

    .line 103
    if-ne v4, v5, :cond_6d

    .line 105
    const/16 v4, 0x30

    .line 107
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    :cond_6d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 115
    goto :goto_56

    .line 116
    :cond_73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p1
    :try_end_77
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3f .. :try_end_77} :catch_78

    .line 120
    goto :goto_82

    .line 121
    :catch_78
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 124
    move-result p1

    .line 125
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    goto :goto_82

    .line 130
    :cond_81
    const/4 p1, 0x0

    .line 131
    :goto_82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    iget-object p2, p0, Lb/a;->a:Ly1/a;

    .line 140
    if-eqz p2, :cond_8f

    .line 142
    iput-object p1, p2, Ly1/a;->c:Ljava/lang/String;

    .line 144
    :cond_8f
    return-void
.end method

.method public final cancel()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/a;->d:Z

    .line 4
    return-void
.end method

.method public final cleanup()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/a;->d:Z

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lb/a;->c:Ljava/io/InputStream;

    .line 7
    return-void
.end method

.method public final getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    .line 3
    return-object v0
.end method

.method public final getDataSource()Lcom/bumptech/glide/load/DataSource;
    .registers 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    .line 3
    return-object v0
.end method

.method public final loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lb/a;->b:Ly1/b;

    .line 3
    if-eqz p1, :cond_20

    .line 5
    iget-object p1, p0, Lb/a;->b:Ly1/b;

    .line 7
    monitor-enter p1

    .line 8
    :try_start_7
    iget-object v0, p1, Ly1/b;->e:Ljava/util/concurrent/CountDownLatch;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_1d

    .line 10
    monitor-exit p1

    .line 11
    if-eqz v0, :cond_20

    .line 13
    :try_start_c
    iget-object p1, p0, Lb/a;->b:Ly1/b;

    .line 15
    monitor-enter p1
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_20

    .line 16
    :try_start_f
    iget-object v0, p1, Ly1/b;->e:Ljava/util/concurrent/CountDownLatch;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_1a

    .line 18
    :try_start_11
    monitor-exit p1

    .line 19
    const-wide/16 v1, 0x3a98

    .line 21
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 26
    goto :goto_20

    .line 27
    :catchall_1a
    move-exception v0

    .line 28
    monitor-exit p1

    .line 29
    throw v0
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1d} :catch_20

    .line 30
    :catchall_1d
    move-exception p2

    .line 31
    monitor-exit p1

    .line 32
    throw p2

    .line 33
    :catch_20
    :cond_20
    :goto_20
    iget-object p1, p0, Lb/a;->b:Ly1/b;

    .line 35
    const/4 v0, 0x0

    .line 36
    if-eqz p1, :cond_2f

    .line 38
    iget-object p1, p0, Lb/a;->b:Ly1/b;

    .line 40
    monitor-enter p1

    .line 41
    :try_start_28
    iget-object v1, p1, Ly1/b;->c:Lc/b;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_2c

    .line 43
    monitor-exit p1

    .line 44
    goto :goto_30

    .line 45
    :catchall_2c
    move-exception p2

    .line 46
    monitor-exit p1

    .line 47
    throw p2

    .line 48
    :cond_2f
    move-object v1, v0

    .line 49
    :goto_30
    if-eqz v1, :cond_65

    .line 51
    iget-object p1, p0, Lb/a;->a:Ly1/a;

    .line 53
    if-eqz p1, :cond_65

    .line 55
    :try_start_36
    iget-object v1, p1, Ly1/a;->b:Ljava/lang/String;

    .line 57
    iget-object p1, p1, Ly1/a;->c:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, v1, p1}, Lb/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lb/a;->b:Ly1/b;

    .line 64
    if-eqz p1, :cond_4b

    .line 66
    iget-object p1, p0, Lb/a;->b:Ly1/b;

    .line 68
    monitor-enter p1
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_44} :catch_5c

    .line 69
    :try_start_44
    iget-object v0, p1, Ly1/b;->c:Lc/b;
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_48

    .line 71
    :try_start_46
    monitor-exit p1

    .line 72
    goto :goto_4b

    .line 73
    :catchall_48
    move-exception v0

    .line 74
    monitor-exit p1

    .line 75
    throw v0

    .line 76
    :cond_4b
    :goto_4b
    new-instance p1, Lb/a$a;

    .line 78
    invoke-direct {p1, p0, p2}, Lb/a$a;-><init>(Lb/a;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    .line 81
    iget-object v1, p0, Lb/a;->a:Ly1/a;

    .line 83
    iget-object v2, v1, Ly1/a;->b:Ljava/lang/String;

    .line 85
    iget-object v3, v1, Ly1/a;->c:Ljava/lang/String;

    .line 87
    iget-object v1, v1, Ly1/a;->d:Ljava/lang/String;

    .line 89
    invoke-interface {v0, p1, v2, v3, v1}, Lc/b;->b(Lb/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_5b} :catch_5c

    .line 92
    goto :goto_6d

    .line 93
    :catch_5c
    new-instance p1, La/a/a/c;

    .line 95
    invoke-direct {p1}, La/a/a/c;-><init>()V

    .line 98
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 101
    goto :goto_6d

    .line 102
    :cond_65
    new-instance p1, La/a/a/c;

    .line 104
    invoke-direct {p1}, La/a/a/c;-><init>()V

    .line 107
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 110
    :goto_6d
    return-void
.end method
