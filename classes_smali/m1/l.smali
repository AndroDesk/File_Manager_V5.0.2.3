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

    .line 1
    new-instance v0, Ls1/n;

    .line 3
    invoke-direct {v0}, Ls1/n;-><init>()V

    .line 6
    sput-object v0, Lm1/l;->f:Ls1/n;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lm1/l;->e:I

    .line 7
    if-eqz p1, :cond_24

    .line 9
    iput-object p1, p0, Lm1/l;->a:Landroid/content/Context;

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lm1/l;->b:Z

    .line 14
    iput-object p2, p0, Lm1/l;->c:Ljava/lang/String;

    .line 16
    invoke-static {p1, p2, v0}, Ls1/d;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_23

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lm1/l;->d:Ljava/lang/String;

    .line 28
    new-instance p2, Lm1/k;

    .line 30
    invoke-direct {p2, p1}, Lm1/k;-><init>(Ljava/io/File;)V

    .line 33
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 36
    :cond_23
    return-void

    .line 37
    :cond_24
    new-instance p1, Ljava/lang/NullPointerException;

    .line 39
    const-string p2, "Context can\'t be null."

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lm1/l;
    .registers 7

    .line 1
    const-class v0, Lm1/l;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_d

    .line 11
    const-string v2, "net_cache"

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move-object v2, v1

    .line 15
    :goto_e
    sget-object v3, Lm1/l;->f:Ls1/n;

    .line 17
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    invoke-virtual {v3, v4, v2}, Ls1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ls1/n$a;

    .line 22
    move-result-object v5

    .line 23
    if-eqz v5, :cond_1a

    .line 25
    iget-object v1, v5, Ls1/n$a;->d:Ljava/lang/Object;

    .line 27
    :cond_1a
    check-cast v1, Lm1/l;

    .line 29
    if-nez v1, :cond_26

    .line 31
    new-instance v1, Lm1/l;

    .line 33
    invoke-direct {v1, p0, v2}, Lm1/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v3, v4, v2, v1}, Ls1/n;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_28

    .line 39
    :cond_26
    monitor-exit v0

    .line 40
    return-object v1

    .line 41
    :catchall_28
    move-exception p0

    .line 42
    monitor-exit v0

    .line 43
    throw p0
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .registers 5

    .line 1
    :cond_0
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lm1/l;->e:I

    .line 4
    const/4 v1, 0x1

    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lm1/l;->e:I

    .line 8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_41

    .line 9
    const-string v2, "%08d.tmp"

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v0

    .line 18
    aput-object v0, v1, v3

    .line 20
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lm1/l;->a:Landroid/content/Context;

    .line 26
    iget-object v2, p0, Lm1/l;->c:Ljava/lang/String;

    .line 28
    iget-boolean v3, p0, Lm1/l;->b:Z

    .line 30
    invoke-static {v1, v2, v3}, Ls1/d;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_38

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    iput-object v2, p0, Lm1/l;->d:Ljava/lang/String;

    .line 42
    new-instance v2, Ljava/io/File;

    .line 44
    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 56
    return-object v2

    .line 57
    :cond_38
    new-instance v0, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 59
    const v1, 0x7a124

    .line 62
    invoke-direct {v0, v1}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(I)V

    .line 65
    throw v0

    .line 66
    :catchall_41
    move-exception v0

    .line 67
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    .line 68
    throw v0
.end method
