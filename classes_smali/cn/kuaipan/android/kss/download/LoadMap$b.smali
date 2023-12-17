.class public final Lcn/kuaipan/android/kss/download/LoadMap$b;
.super Ljava/lang/Object;
.source "LoadMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/kss/download/LoadMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lcn/kuaipan/android/kss/download/LoadMap$a;

.field public b:J

.field public c:J

.field public final synthetic d:Lcn/kuaipan/android/kss/download/LoadMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$a;JJ)V
    .registers 7

    iput-object p1, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->d:Lcn/kuaipan/android/kss/download/LoadMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long p1, p5, p3

    if-ltz p1, :cond_10

    iput-object p2, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->a:Lcn/kuaipan/android/kss/download/LoadMap$a;

    iput-wide p3, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    iput-wide p5, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    return-void

    :cond_10
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public static a(Lcn/kuaipan/android/kss/download/LoadMap$b;)Z
    .registers 10

    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->a:Lcn/kuaipan/android/kss/download/LoadMap$a;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/LoadMap$b;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-gtz v1, :cond_15

    iget-object v1, v0, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_42

    monitor-exit v0

    goto :goto_41

    :cond_15
    :try_start_15
    iget-object v1, v0, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/kuaipan/android/kss/download/LoadMap$b;

    if-eq v3, p0, :cond_1b

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    iget-wide v7, v3, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_36

    goto :goto_3b

    :cond_36
    iget-wide v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    iput-wide v4, v3, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_42

    move v4, v2

    :goto_3b
    if-eqz v4, :cond_1b

    monitor-exit v0

    goto :goto_41

    :cond_3f
    monitor-exit v0

    move v2, v4

    :goto_41
    return v2

    :catchall_42
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    return-wide v0
.end method

.method public final c()J
    .registers 6

    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->a:Lcn/kuaipan/android/kss/download/LoadMap$a;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    iget-wide v3, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    sub-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
