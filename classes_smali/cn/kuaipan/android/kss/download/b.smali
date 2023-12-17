.class public final Lcn/kuaipan/android/kss/download/b;
.super Ljava/lang/Object;
.source "LoadRecorder.java"


# instance fields
.field public a:Lcn/kuaipan/android/kss/download/LoadMap;

.field public final b:Lcn/kuaipan/android/kss/download/LoadMap$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/kuaipan/android/kss/download/b;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    iput-object p2, p0, Lcn/kuaipan/android/kss/download/b;->b:Lcn/kuaipan/android/kss/download/LoadMap$b;

    return-void
.end method


# virtual methods
.method public final a()Lcn/kuaipan/android/kss/download/LoadMap$b;
    .registers 2

    iget-object v0, p0, Lcn/kuaipan/android/kss/download/b;->b:Lcn/kuaipan/android/kss/download/LoadMap$b;

    return-object v0
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcn/kuaipan/android/kss/download/b;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    if-eqz v0, :cond_26

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/b;->b:Lcn/kuaipan/android/kss/download/LoadMap$b;

    iget-object v2, v0, Lcn/kuaipan/android/kss/download/LoadMap;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_23

    if-nez v2, :cond_11

    monitor-exit v0

    goto :goto_1f

    :cond_11
    :try_start_11
    invoke-static {v1}, Lcn/kuaipan/android/kss/download/LoadMap$b;->a(Lcn/kuaipan/android/kss/download/LoadMap$b;)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_23

    if-eqz v2, :cond_19

    monitor-exit v0

    goto :goto_1f

    :cond_19
    :try_start_19
    iget-object v2, v0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_23

    monitor-exit v0

    :goto_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/b;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    goto :goto_26

    :catchall_23
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_26
    :goto_26
    return-void
.end method

.method public final finalize()V
    .registers 1

    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/b;->b()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
