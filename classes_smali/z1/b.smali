.class public final Lz1/b;
.super Ljava/lang/Object;
.source "WpsSnapshotV2Loader.java"

# interfaces
.implements La/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/c<",
        "Lz1/a;",
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
            "Lz1/a;",
            "Lz1/a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:Ld/b;

.field public d:Z

.field public e:Ljava/util/concurrent/CountDownLatch;

.field public f:Lz1/b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelCache;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelCache<",
            "Lz1/a;",
            "Lz1/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz1/b$b;

    invoke-direct {v0, p0}, Lz1/b$b;-><init>(Lz1/b;)V

    iput-object v0, p0, Lz1/b;->f:Lz1/b$b;

    iput-object p2, p0, Lz1/b;->b:Lcom/bumptech/glide/load/model/ModelCache;

    iput-object p1, p0, Lz1/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lz1/b;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lz1/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lz1/b;->c:Ld/b;

    if-eqz v0, :cond_f

    :try_start_8
    iget-object v0, p0, Lz1/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lz1/b;->f:Lz1/b$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lz1/b;->d:Z

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_14
    iput-object v0, p0, Lz1/b;->c:Ld/b;
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_1f

    monitor-exit p0

    iget-object v0, p0, Lz1/b;->e:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1e
    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Lz1/b;->c:Ld/b;

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lz1/b;->d:Z

    if-nez v0, :cond_2f

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lz1/b;->e:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "cn.wps.moffice.service.lite.work.snapshot.action"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "cn.wps.moffice_eng.xiaomi.lite"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "cn.wps.moffice.service.lite.work.snapshot.SnapshotLiteService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lz1/b;->a:Landroid/content/Context;

    iget-object v3, p0, Lz1/b;->f:Lz1/b$b;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v1, p0, Lz1/b;->d:Z

    :cond_2f
    return-void
.end method

.method public final buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .registers 5

    check-cast p1, Lz1/a;

    iget-object p2, p0, Lz1/b;->b:Lcom/bumptech/glide/load/model/ModelCache;

    if-eqz p2, :cond_16

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3}, Lcom/bumptech/glide/load/model/ModelCache;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz1/a;

    if-nez p2, :cond_15

    iget-object p2, p0, Lz1/b;->b:Lcom/bumptech/glide/load/model/ModelCache;

    invoke-virtual {p2, p1, p3, p3, p1}, Lcom/bumptech/glide/load/model/ModelCache;->put(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_16

    :cond_15
    move-object p1, p2

    :cond_16
    :goto_16
    invoke-virtual {p0}, Lz1/b;->b()V

    new-instance p2, Le/a;

    iget-object p3, p0, Lz1/b;->a:Landroid/content/Context;

    invoke-direct {p2, p3, p1, p0}, Le/a;-><init>(Landroid/content/Context;Lz1/a;Lz1/b;)V

    new-instance p3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    invoke-direct {p3, p1, p2}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p3
.end method

.method public final bridge synthetic handles(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lz1/a;

    const/4 p1, 0x1

    return p1
.end method
