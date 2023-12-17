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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ly1/a;Ly1/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a;->a:Ly1/a;

    iput-object p2, p0, Lb/a;->b:Ly1/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lb/a;->b:Ly1/b;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8f

    iget-object p2, p0, Lb/a;->b:Ly1/b;

    iget-object p2, p2, Ly1/b;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, La/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_81

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_3f
    const-string p2, "MD5"

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_56
    array-length v3, p2

    if-ge v2, v3, :cond_73

    aget-byte v3, p2, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6d

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :cond_73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_77
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3f .. :try_end_77} :catch_78

    goto :goto_82

    :catch_78
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_82

    :cond_81
    const/4 p1, 0x0

    :goto_82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lb/a;->a:Ly1/a;

    if-eqz p2, :cond_8f

    iput-object p1, p2, Ly1/a;->c:Ljava/lang/String;

    :cond_8f
    return-void
.end method

.method public final cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a;->d:Z

    return-void
.end method

.method public final cleanup()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a;->c:Ljava/io/InputStream;

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

    iget-object p1, p0, Lb/a;->b:Ly1/b;

    if-eqz p1, :cond_20

    iget-object p1, p0, Lb/a;->b:Ly1/b;

    monitor-enter p1

    :try_start_7
    iget-object v0, p1, Ly1/b;->e:Ljava/util/concurrent/CountDownLatch;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_1d

    monitor-exit p1

    if-eqz v0, :cond_20

    :try_start_c
    iget-object p1, p0, Lb/a;->b:Ly1/b;

    monitor-enter p1
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_20

    :try_start_f
    iget-object v0, p1, Ly1/b;->e:Ljava/util/concurrent/CountDownLatch;
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
    iget-object p1, p0, Lb/a;->b:Ly1/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lb/a;->b:Ly1/b;

    monitor-enter p1

    :try_start_28
    iget-object v1, p1, Ly1/b;->c:Lc/b;
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
    if-eqz v1, :cond_65

    iget-object p1, p0, Lb/a;->a:Ly1/a;

    if-eqz p1, :cond_65

    :try_start_36
    iget-object v1, p1, Ly1/a;->b:Ljava/lang/String;

    iget-object p1, p1, Ly1/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lb/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lb/a;->b:Ly1/b;

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lb/a;->b:Ly1/b;

    monitor-enter p1
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_44} :catch_5c

    :try_start_44
    iget-object v0, p1, Ly1/b;->c:Lc/b;
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_48

    :try_start_46
    monitor-exit p1

    goto :goto_4b

    :catchall_48
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_4b
    :goto_4b
    new-instance p1, Lb/a$a;

    invoke-direct {p1, p0, p2}, Lb/a$a;-><init>(Lb/a;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    iget-object v1, p0, Lb/a;->a:Ly1/a;

    iget-object v2, v1, Ly1/a;->b:Ljava/lang/String;

    iget-object v3, v1, Ly1/a;->c:Ljava/lang/String;

    iget-object v1, v1, Ly1/a;->d:Ljava/lang/String;

    invoke-interface {v0, p1, v2, v3, v1}, Lc/b;->b(Lb/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_5b} :catch_5c

    goto :goto_6d

    :catch_5c
    new-instance p1, La/a/a/c;

    invoke-direct {p1}, La/a/a/c;-><init>()V

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    goto :goto_6d

    :cond_65
    new-instance p1, La/a/a/c;

    invoke-direct {p1}, La/a/a/c;-><init>()V

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_6d
    return-void
.end method
