.class public final Lm1/l;
.super Ljava/lang/Object;
.source "NetCacheManager.java"


# static fields
.field public static final f:Ls1/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/n<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lm1/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ls1/n;

    invoke-direct {v0}, Ls1/n;-><init>()V

    sput-object v0, Lm1/l;->f:Ls1/n;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lm1/l;->e:I

    if-eqz p1, :cond_24

    iput-object p1, p0, Lm1/l;->a:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm1/l;->b:Z

    iput-object p2, p0, Lm1/l;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Ls1/d;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lm1/l;->d:Ljava/lang/String;

    new-instance p2, Lm1/k;

    invoke-direct {p2, p1}, Lm1/k;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_23
    return-void

    :cond_24
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lm1/l;
    .registers 7

    const-class v0, Lm1/l;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "net_cache"

    goto :goto_e

    :cond_d
    move-object v2, v1

    :goto_e
    sget-object v3, Lm1/l;->f:Ls1/n;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v2}, Ls1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ls1/n$a;

    move-result-object v5

    if-eqz v5, :cond_1a

    iget-object v1, v5, Ls1/n$a;->d:Ljava/lang/Object;

    :cond_1a
    check-cast v1, Lm1/l;

    if-nez v1, :cond_26

    new-instance v1, Lm1/l;

    invoke-direct {v1, p0, v2}, Lm1/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v2, v1}, Ls1/n;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_28

    :cond_26
    monitor-exit v0

    return-object v1

    :catchall_28
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .registers 5

    :cond_0
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lm1/l;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lm1/l;->e:I

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_41

    const-string v2, "%08d.tmp"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lm1/l;->a:Landroid/content/Context;

    iget-object v2, p0, Lm1/l;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lm1/l;->b:Z

    invoke-static {v1, v2, v3}, Ls1/d;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lm1/l;->d:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    return-object v2

    :cond_38
    new-instance v0, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v1, 0x7a124

    invoke-direct {v0, v1}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(I)V

    throw v0

    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method
