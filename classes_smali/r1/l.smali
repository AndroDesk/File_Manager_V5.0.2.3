.class public final Lr1/l;
.super Ljava/lang/Object;
.source "UploadTaskStore.java"

# interfaces
.implements Lp1/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr1/l$b;
    }
.end annotation


# instance fields
.field public final b:Lr1/l$b;

.field public final c:Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;

.field public final d:Lr1/l$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lr1/l$a;

    .line 6
    const-class v1, Lp1/g;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_8
    new-instance v2, Landroid/os/HandlerThread;

    .line 11
    const-string v3, "KssMaster - UploadRecorder"

    .line 13
    const/16 v4, 0xa

    .line 15
    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 18
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 21
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 24
    move-result-object v2

    .line 25
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_47

    .line 26
    invoke-direct {v0, p0, v2}, Lr1/l$a;-><init>(Lr1/l;Landroid/os/Looper;)V

    .line 29
    iput-object v0, p0, Lr1/l;->d:Lr1/l$a;

    .line 31
    if-eqz p1, :cond_3c

    .line 33
    sget-object v0, Lr1/l$b;->a:Lr1/l$b;

    .line 35
    if-nez v0, :cond_37

    .line 37
    const-class v1, Lr1/l$b;

    .line 39
    monitor-enter v1

    .line 40
    :try_start_27
    sget-object v0, Lr1/l$b;->a:Lr1/l$b;

    .line 42
    if-nez v0, :cond_32

    .line 44
    new-instance v0, Lr1/l$b;

    .line 46
    invoke-direct {v0, p1}, Lr1/l$b;-><init>(Landroid/content/Context;)V

    .line 49
    sput-object v0, Lr1/l$b;->a:Lr1/l$b;

    .line 51
    :cond_32
    monitor-exit v1

    .line 52
    goto :goto_37

    .line 53
    :catchall_34
    move-exception p1

    .line 54
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_34

    .line 55
    throw p1

    .line 56
    :cond_37
    :goto_37
    iput-object v0, p0, Lr1/l;->b:Lr1/l$b;

    .line 58
    iput-object p2, p0, Lr1/l;->c:Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;

    .line 60
    return-void

    .line 61
    :cond_3c
    new-instance p1, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 63
    const p2, 0x7a122

    .line 66
    const-string v0, "context and dataFactory can\'t be null"

    .line 68
    invoke-direct {p1, p2, v0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    .line 71
    throw p1

    .line 72
    :catchall_47
    move-exception p1

    .line 73
    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    .line 74
    throw p1
.end method


# virtual methods
.method public final a(I)Lr1/e;
    .registers 5

    .line 1
    iget-object v0, p0, Lr1/l;->d:Lr1/l$a;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p1, v1, v2

    .line 13
    const/4 p1, 0x3

    .line 14
    invoke-virtual {v0, p1, v1}, Ls1/m;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lr1/e;

    .line 20
    return-object p1
.end method
