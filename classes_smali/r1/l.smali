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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr1/l$a;

    const-class v1, Lp1/g;

    monitor-enter v1

    :try_start_8
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "KssMaster - UploadRecorder"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_47

    invoke-direct {v0, p0, v2}, Lr1/l$a;-><init>(Lr1/l;Landroid/os/Looper;)V

    iput-object v0, p0, Lr1/l;->d:Lr1/l$a;

    if-eqz p1, :cond_3c

    sget-object v0, Lr1/l$b;->a:Lr1/l$b;

    if-nez v0, :cond_37

    const-class v1, Lr1/l$b;

    monitor-enter v1

    :try_start_27
    sget-object v0, Lr1/l$b;->a:Lr1/l$b;

    if-nez v0, :cond_32

    new-instance v0, Lr1/l$b;

    invoke-direct {v0, p1}, Lr1/l$b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lr1/l$b;->a:Lr1/l$b;

    :cond_32
    monitor-exit v1

    goto :goto_37

    :catchall_34
    move-exception p1

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_34

    throw p1

    :cond_37
    :goto_37
    iput-object v0, p0, Lr1/l;->b:Lr1/l$b;

    iput-object p2, p0, Lr1/l;->c:Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;

    return-void

    :cond_3c
    new-instance p1, Lcn/kuaipan/android/exception/KscRuntimeException;

    const p2, 0x7a122

    const-string v0, "context and dataFactory can\'t be null"

    invoke-direct {p1, p2, v0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method


# virtual methods
.method public final a(I)Lr1/e;
    .registers 5

    iget-object v0, p0, Lr1/l;->d:Lr1/l$a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1}, Ls1/m;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr1/e;

    return-object p1
.end method
