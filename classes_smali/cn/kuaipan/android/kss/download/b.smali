.class public final Lcn/kuaipan/android/kss/download/b;
.super Ljava/lang/Object;
.source "LoadRecorder.java"


# instance fields
.field public a:Lcn/kuaipan/android/kss/download/LoadMap;

.field public final b:Lcn/kuaipan/android/kss/download/LoadMap$b;


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$b;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcn/kuaipan/android/kss/download/b;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    .line 6
    iput-object p2, p0, Lcn/kuaipan/android/kss/download/b;->b:Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lcn/kuaipan/android/kss/download/LoadMap$b;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/b;->b:Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 3
    return-object v0
.end method

.method public final b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/b;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    .line 3
    if-eqz v0, :cond_26

    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/b;->b:Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 8
    iget-object v2, v0, Lcn/kuaipan/android/kss/download/LoadMap;->a:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v2
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_23

    .line 14
    if-nez v2, :cond_11

    .line 16
    monitor-exit v0

    .line 17
    goto :goto_1f

    .line 18
    :cond_11
    :try_start_11
    invoke-static {v1}, Lcn/kuaipan/android/kss/download/LoadMap$b;->a(Lcn/kuaipan/android/kss/download/LoadMap$b;)Z

    .line 21
    move-result v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_23

    .line 22
    if-eqz v2, :cond_19

    .line 24
    monitor-exit v0

    .line 25
    goto :goto_1f

    .line 26
    :cond_19
    :try_start_19
    iget-object v2, v0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_23

    .line 31
    monitor-exit v0

    .line 32
    :goto_1f
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcn/kuaipan/android/kss/download/b;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    .line 35
    goto :goto_26

    .line 36
    :catchall_23
    move-exception v1

    .line 37
    monitor-exit v0

    .line 38
    throw v1

    .line 39
    :cond_26
    :goto_26
    return-void
.end method

.method public final finalize()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/b;->b()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method
