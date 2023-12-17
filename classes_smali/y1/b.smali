.class public final Ly1/b;
.super Ljava/lang/Object;
.source "WpsSnapshotV1Loader.java"

# interfaces
.implements La/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly1/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/c<",
        "Ly1/a;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Lcom/bumptech/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelCache<",
            "Ly1/a;",
            "Ly1/a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:Lc/b;

.field public d:Z

.field public e:Ljava/util/concurrent/CountDownLatch;

.field public f:Ly1/b$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelCache;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelCache<",
            "Ly1/a;",
            "Ly1/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ly1/b$b;

    .line 6
    invoke-direct {v0, p0}, Ly1/b$b;-><init>(Ly1/b;)V

    .line 9
    iput-object v0, p0, Ly1/b;->f:Ly1/b$b;

    .line 11
    iput-object p2, p0, Ly1/b;->b:Lcom/bumptech/glide/load/model/ModelCache;

    .line 13
    iput-object p1, p0, Ly1/b;->a:Landroid/content/Context;

    .line 15
    invoke-virtual {p0}, Ly1/b;->b()V

    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/content/Context;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    iget-object v0, p0, Ly1/b;->c:Lc/b;

    .line 7
    if-eqz v0, :cond_f

    .line 9
    :try_start_8
    iget-object v0, p0, Ly1/b;->a:Landroid/content/Context;

    .line 11
    iget-object v1, p0, Ly1/b;->f:Ly1/b$b;

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_f

    .line 16
    :catch_f
    :cond_f
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Ly1/b;->d:Z

    .line 19
    const/4 v0, 0x0

    .line 20
    monitor-enter p0

    .line 21
    :try_start_14
    iput-object v0, p0, Ly1/b;->c:Lc/b;
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_1f

    .line 23
    monitor-exit p0

    .line 24
    iget-object v0, p0, Ly1/b;->e:Ljava/util/concurrent/CountDownLatch;

    .line 26
    if-eqz v0, :cond_1e

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 31
    :cond_1e
    return-void

    .line 32
    :catchall_1f
    move-exception v0

    .line 33
    monitor-exit p0

    .line 34
    throw v0
.end method

.method public final b()V
    .registers 5

    .line 1
    iget-object v0, p0, Ly1/b;->c:Lc/b;

    .line 3
    if-nez v0, :cond_36

    .line 5
    iget-boolean v0, p0, Ly1/b;->d:Z

    .line 7
    if-nez v0, :cond_36

    .line 9
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 15
    iput-object v0, p0, Ly1/b;->e:Ljava/util/concurrent/CountDownLatch;

    .line 17
    new-instance v0, Landroid/content/Intent;

    .line 19
    const-string v2, "cn.wps.moffice.service.lite.action"

    .line 21
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v2, "cn.wps.moffice_eng.xiaomi.lite"

    .line 26
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const/high16 v3, 0x10000000

    .line 31
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    const-string v3, "cn.wps.moffice.service.lite.MOfficeLiteService"

    .line 36
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v2, "LiteBindFrom"

    .line 41
    const-string v3, "mi"

    .line 43
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v2, p0, Ly1/b;->a:Landroid/content/Context;

    .line 48
    iget-object v3, p0, Ly1/b;->f:Ly1/b$b;

    .line 50
    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 53
    iput-boolean v1, p0, Ly1/b;->d:Z

    .line 55
    :cond_36
    return-void
.end method

.method public final buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .registers 5

    .line 1
    check-cast p1, Ly1/a;

    .line 3
    iget-object p2, p0, Ly1/b;->b:Lcom/bumptech/glide/load/model/ModelCache;

    .line 5
    if-eqz p2, :cond_14

    .line 7
    const/4 p3, 0x0

    .line 8
    invoke-virtual {p2, p1, p3, p3}, Lcom/bumptech/glide/load/model/ModelCache;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Ly1/a;

    .line 14
    if-nez p2, :cond_15

    .line 16
    iget-object p2, p0, Ly1/b;->b:Lcom/bumptech/glide/load/model/ModelCache;

    .line 18
    invoke-virtual {p2, p1, p3, p3, p1}, Lcom/bumptech/glide/load/model/ModelCache;->put(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 21
    :cond_14
    move-object p2, p1

    .line 22
    :cond_15
    invoke-virtual {p0}, Ly1/b;->b()V

    .line 25
    new-instance p3, Lb/a;

    .line 27
    invoke-direct {p3, p2, p0}, Lb/a;-><init>(Ly1/a;Ly1/b;)V

    .line 30
    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 32
    invoke-direct {p2, p1, p3}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    .line 35
    return-object p2
.end method

.method public final bridge synthetic handles(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Ly1/a;

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method
