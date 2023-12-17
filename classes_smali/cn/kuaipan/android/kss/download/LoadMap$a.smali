.class public final Lcn/kuaipan/android/kss/download/LoadMap$a;
.super Ljava/lang/Object;
.source "LoadMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/kss/download/LoadMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/kuaipan/android/kss/download/LoadMap$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

.field public f:I

.field public final synthetic g:Lcn/kuaipan/android/kss/download/LoadMap;


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/kss/download/LoadMap;Lp1/c$a;J)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->g:Lcn/kuaipan/android/kss/download/LoadMap;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object p1, p2, Lp1/c$a;->a:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->a:Ljava/lang/String;

    .line 10
    iput-wide p3, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    .line 12
    iget-wide p1, p2, Lp1/c$a;->c:J

    .line 14
    add-long/2addr p3, p1

    .line 15
    iput-wide p3, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    .line 24
    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->f:I

    .line 27
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/LoadMap$a;->b()V

    .line 30
    return-void
.end method

.method public static a(Lcn/kuaipan/android/kss/download/LoadMap$a;)[Lcn/kuaipan/android/kss/download/LoadMap$b;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    new-array v1, v1, [Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, [Lcn/kuaipan/android/kss/download/LoadMap$b;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_11
    move-exception v0

    .line 19
    monitor-exit p0

    .line 20
    throw v0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .registers 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->NOT_VERIFY:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 4
    iput-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 6
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    .line 13
    new-instance v8, Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 15
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->g:Lcn/kuaipan/android/kss/download/LoadMap;

    .line 17
    iget-wide v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    .line 19
    iget-wide v6, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    .line 21
    move-object v1, v8

    .line 22
    move-object v3, p0

    .line 23
    invoke-direct/range {v1 .. v7}, Lcn/kuaipan/android/kss/download/LoadMap$b;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$a;JJ)V

    .line 26
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_1e
    move-exception v0

    .line 32
    monitor-exit p0

    .line 33
    throw v0
.end method

.method public final declared-synchronized c([J)V
    .registers 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    sget-object v0, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->NOT_VERIFY:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 9
    iput-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 11
    if-eqz p1, :cond_11

    .line 13
    array-length v0, p1

    .line 14
    rem-int/lit8 v0, v0, 0x2

    .line 16
    if-eqz v0, :cond_23

    .line 18
    :cond_11
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    .line 20
    new-instance v8, Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 22
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->g:Lcn/kuaipan/android/kss/download/LoadMap;

    .line 24
    iget-wide v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    .line 26
    iget-wide v6, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    .line 28
    move-object v1, v8

    .line 29
    move-object v3, p0

    .line 30
    invoke-direct/range {v1 .. v7}, Lcn/kuaipan/android/kss/download/LoadMap$b;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$a;JJ)V

    .line 33
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_23
    array-length v0, p1

    .line 37
    div-int/lit8 v0, v0, 0x2

    .line 39
    const/4 v1, 0x0

    .line 40
    :goto_27
    if-ge v1, v0, :cond_42

    .line 42
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    .line 44
    new-instance v10, Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 46
    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->g:Lcn/kuaipan/android/kss/download/LoadMap;

    .line 48
    mul-int/lit8 v3, v1, 0x2

    .line 50
    aget-wide v6, p1, v3

    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 54
    aget-wide v8, p1, v3

    .line 56
    move-object v3, v10

    .line 57
    move-object v5, p0

    .line 58
    invoke-direct/range {v3 .. v9}, Lcn/kuaipan/android/kss/download/LoadMap$b;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$a;JJ)V

    .line 61
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_44

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 66
    goto :goto_27

    .line 67
    :cond_42
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :catchall_44
    move-exception p1

    .line 70
    monitor-exit p0

    .line 71
    throw p1
.end method

.method public final declared-synchronized d()J
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 4
    :try_start_3
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v2

    .line 10
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_1b

    .line 16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 22
    invoke-virtual {v3}, Lcn/kuaipan/android/kss/download/LoadMap$b;->c()J

    .line 25
    move-result-wide v3
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1d

    .line 26
    add-long/2addr v0, v3

    .line 27
    goto :goto_9

    .line 28
    :cond_1b
    monitor-exit p0

    .line 29
    return-wide v0

    .line 30
    :catchall_1d
    move-exception v0

    .line 31
    monitor-exit p0

    .line 32
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "Block("

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "-"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "):"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_28

    .line 35
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    goto :goto_35

    .line 41
    :cond_28
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :goto_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method
