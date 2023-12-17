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
.method public constructor <init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$a;JJ)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->d:Lcn/kuaipan/android/kss/download/LoadMap;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    cmp-long p1, p5, p3

    .line 8
    if-ltz p1, :cond_10

    .line 10
    iput-object p2, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->a:Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 12
    iput-wide p3, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    .line 14
    iput-wide p5, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    .line 16
    return-void

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 19
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 22
    throw p1
.end method

.method public static a(Lcn/kuaipan/android/kss/download/LoadMap$b;)Z
    .registers 10

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->a:Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/LoadMap$b;->c()J

    .line 7
    move-result-wide v1

    .line 8
    const-wide/16 v3, 0x0

    .line 10
    cmp-long v1, v1, v3

    .line 12
    const/4 v2, 0x1

    .line 13
    if-gtz v1, :cond_15

    .line 15
    iget-object v1, v0, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_42

    .line 20
    monitor-exit v0

    .line 21
    goto :goto_41

    .line 22
    :cond_15
    :try_start_15
    iget-object v1, v0, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v1

    .line 28
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_3f

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 41
    if-eq v3, p0, :cond_1b

    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    iget-wide v5, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    .line 48
    iget-wide v7, v3, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    .line 50
    cmp-long v5, v5, v7

    .line 52
    if-eqz v5, :cond_36

    .line 54
    goto :goto_3b

    .line 55
    :cond_36
    iget-wide v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    .line 57
    iput-wide v4, v3, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_42

    .line 59
    move v4, v2

    .line 60
    :goto_3b
    if-eqz v4, :cond_1b

    .line 62
    monitor-exit v0

    .line 63
    goto :goto_41

    .line 64
    :cond_3f
    monitor-exit v0

    .line 65
    move v2, v4

    .line 66
    :goto_41
    return v2

    .line 67
    :catchall_42
    move-exception p0

    .line 68
    monitor-exit v0

    .line 69
    throw p0
.end method


# virtual methods
.method public final b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    .line 3
    return-wide v0
.end method

.method public final c()J
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->a:Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    .line 6
    iget-wide v3, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    .line 8
    sub-long/2addr v1, v3

    .line 9
    monitor-exit v0

    .line 10
    return-wide v1

    .line 11
    :catchall_a
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    .line 13
    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "-"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
