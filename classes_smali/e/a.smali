.class public final Le/a;
.super Ljava/lang/Object;
.source "WpsSnapshotV2Fetcher.java"

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
.field public a:Landroid/content/Context;

.field public final b:Lz1/a;

.field public volatile c:Lz1/b;

.field public d:Ljava/io/InputStream;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lz1/a;Lz1/b;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Le/a;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Le/a;->b:Lz1/a;

    .line 8
    iput-object p3, p0, Le/a;->c:Lz1/b;

    .line 10
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/a;->e:Z

    .line 4
    return-void
.end method

.method public final cleanup()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a;->e:Z

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Le/a;->d:Ljava/io/InputStream;

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
    iget-object p1, p0, Le/a;->c:Lz1/b;

    .line 3
    if-eqz p1, :cond_20

    .line 5
    iget-object p1, p0, Le/a;->c:Lz1/b;

    .line 7
    monitor-enter p1

    .line 8
    :try_start_7
    iget-object v0, p1, Lz1/b;->e:Ljava/util/concurrent/CountDownLatch;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_1d

    .line 10
    monitor-exit p1

    .line 11
    if-eqz v0, :cond_20

    .line 13
    :try_start_c
    iget-object p1, p0, Le/a;->c:Lz1/b;

    .line 15
    monitor-enter p1
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_20

    .line 16
    :try_start_f
    iget-object v0, p1, Lz1/b;->e:Ljava/util/concurrent/CountDownLatch;
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
    iget-object p1, p0, Le/a;->c:Lz1/b;

    .line 35
    const/4 v0, 0x0

    .line 36
    if-eqz p1, :cond_2f

    .line 38
    iget-object p1, p0, Le/a;->c:Lz1/b;

    .line 40
    monitor-enter p1

    .line 41
    :try_start_28
    iget-object v1, p1, Lz1/b;->c:Ld/b;
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
    if-eqz v1, :cond_81

    .line 51
    iget-object p1, p0, Le/a;->b:Lz1/a;

    .line 53
    if-eqz p1, :cond_81

    .line 55
    new-instance p1, Landroid/os/Bundle;

    .line 57
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 60
    iget-object v1, p0, Le/a;->b:Lz1/a;

    .line 62
    iget-object v1, v1, Lz1/a;->e:Ljava/lang/String;

    .line 64
    const-string v2, "MINETYPE"

    .line 66
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :try_start_44
    iget-object v1, p0, Le/a;->c:Lz1/b;

    .line 71
    if-eqz v1, :cond_53

    .line 73
    iget-object v0, p0, Le/a;->c:Lz1/b;

    .line 75
    monitor-enter v0
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4b} :catch_78

    .line 76
    :try_start_4b
    iget-object v1, v0, Lz1/b;->c:Ld/b;
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_50

    .line 78
    :try_start_4d
    monitor-exit v0

    .line 79
    move-object v0, v1

    .line 80
    goto :goto_53

    .line 81
    :catchall_50
    move-exception p1

    .line 82
    monitor-exit v0

    .line 83
    throw p1

    .line 84
    :cond_53
    :goto_53
    new-instance v1, Le/a$a;

    .line 86
    invoke-direct {v1, p0, p2}, Le/a$a;-><init>(Le/a;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    .line 89
    iget-object v2, p0, Le/a;->b:Lz1/a;

    .line 91
    iget-object v3, v2, Lz1/a;->c:Landroid/net/Uri;

    .line 93
    if-nez v3, :cond_6e

    .line 95
    iget-object v3, v2, Lz1/a;->b:Ljava/lang/String;

    .line 97
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_6e

    .line 103
    iget-object v3, v2, Lz1/a;->b:Ljava/lang/String;

    .line 105
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 108
    move-result-object v3

    .line 109
    iput-object v3, v2, Lz1/a;->c:Landroid/net/Uri;

    .line 111
    :cond_6e
    iget-object v2, v2, Lz1/a;->c:Landroid/net/Uri;

    .line 113
    iget-object v3, p0, Le/a;->b:Lz1/a;

    .line 115
    iget-object v3, v3, Lz1/a;->d:Ljava/lang/String;

    .line 117
    invoke-interface {v0, v1, v2, v3, p1}, Ld/b;->a(Le/a$a;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_77} :catch_78

    .line 120
    goto :goto_89

    .line 121
    :catch_78
    new-instance p1, La/a/a/c;

    .line 123
    invoke-direct {p1}, La/a/a/c;-><init>()V

    .line 126
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 129
    goto :goto_89

    .line 130
    :cond_81
    new-instance p1, La/a/a/c;

    .line 132
    invoke-direct {p1}, La/a/a/c;-><init>()V

    .line 135
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 138
    :goto_89
    return-void
.end method
