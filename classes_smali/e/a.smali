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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lz1/a;Lz1/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a;->b:Lz1/a;

    iput-object p3, p0, Le/a;->c:Lz1/b;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a;->e:Z

    return-void
.end method

.method public final cleanup()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/a;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Le/a;->d:Ljava/io/InputStream;

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

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final getDataSource()Lcom/bumptech/glide/load/DataSource;
    .registers 2

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

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

    iget-object p1, p0, Le/a;->c:Lz1/b;

    if-eqz p1, :cond_20

    iget-object p1, p0, Le/a;->c:Lz1/b;

    monitor-enter p1

    :try_start_7
    iget-object v0, p1, Lz1/b;->e:Ljava/util/concurrent/CountDownLatch;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_1d

    monitor-exit p1

    if-eqz v0, :cond_20

    :try_start_c
    iget-object p1, p0, Le/a;->c:Lz1/b;

    monitor-enter p1
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_20

    :try_start_f
    iget-object v0, p1, Lz1/b;->e:Ljava/util/concurrent/CountDownLatch;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_1a

    :try_start_11
    monitor-exit p1

    const-wide/16 v1, 0x3a98

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_20

    :catchall_1a
    move-exception v0

    monitor-exit p1

    throw v0
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1d} :catch_20

    :catchall_1d
    move-exception p2

    monitor-exit p1

    throw p2

    :catch_20
    :cond_20
    :goto_20
    iget-object p1, p0, Le/a;->c:Lz1/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    iget-object p1, p0, Le/a;->c:Lz1/b;

    monitor-enter p1

    :try_start_28
    iget-object v1, p1, Lz1/b;->c:Ld/b;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_2c

    monitor-exit p1

    goto :goto_30

    :catchall_2c
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_2f
    move-object v1, v0

    :goto_30
    if-eqz v1, :cond_81

    iget-object p1, p0, Le/a;->b:Lz1/a;

    if-eqz p1, :cond_81

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Le/a;->b:Lz1/a;

    iget-object v1, v1, Lz1/a;->e:Ljava/lang/String;

    const-string v2, "MINETYPE"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_44
    iget-object v1, p0, Le/a;->c:Lz1/b;

    if-eqz v1, :cond_53

    iget-object v0, p0, Le/a;->c:Lz1/b;

    monitor-enter v0
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4b} :catch_78

    :try_start_4b
    iget-object v1, v0, Lz1/b;->c:Ld/b;
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_50

    :try_start_4d
    monitor-exit v0

    move-object v0, v1

    goto :goto_53

    :catchall_50
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_53
    :goto_53
    new-instance v1, Le/a$a;

    invoke-direct {v1, p0, p2}, Le/a$a;-><init>(Le/a;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    iget-object v2, p0, Le/a;->b:Lz1/a;

    iget-object v3, v2, Lz1/a;->c:Landroid/net/Uri;

    if-nez v3, :cond_6e

    iget-object v3, v2, Lz1/a;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6e

    iget-object v3, v2, Lz1/a;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lz1/a;->c:Landroid/net/Uri;

    :cond_6e
    iget-object v2, v2, Lz1/a;->c:Landroid/net/Uri;

    iget-object v3, p0, Le/a;->b:Lz1/a;

    iget-object v3, v3, Lz1/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p1}, Ld/b;->a(Le/a$a;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_77} :catch_78

    goto :goto_89

    :catch_78
    new-instance p1, La/a/a/c;

    invoke-direct {p1}, La/a/a/c;-><init>()V

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    goto :goto_89

    :cond_81
    new-instance p1, La/a/a/c;

    invoke-direct {p1}, La/a/a/c;-><init>()V

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_89
    return-void
.end method
