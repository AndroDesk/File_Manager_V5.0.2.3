.class public final Lxcrash/XCrash$a;
.super Ljava/lang/Object;
.source "XCrash.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxcrash/XCrash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    :try_start_0
    const-class v0, Lxcrash/XCrash;

    .line 3
    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_25

    .line 4
    :try_start_3
    sget-boolean v1, Lxcrash/XCrash;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_36

    .line 6
    :try_start_5
    monitor-exit v0

    .line 7
    if-nez v1, :cond_27

    .line 9
    new-instance v0, Lxcrash/XCrash$InitParameters;

    .line 11
    invoke-direct {v0}, Lxcrash/XCrash$InitParameters;-><init>()V

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lxcrash/XCrash$InitParameters;->setNativeDumpAllThreads(Z)Lxcrash/XCrash$InitParameters;

    .line 18
    sget-object v2, Lxcrash/XCrash;->f:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v2}, Lxcrash/XCrash$InitParameters;->setLogDir(Ljava/lang/String;)Lxcrash/XCrash$InitParameters;

    .line 23
    invoke-virtual {v0, v1}, Lxcrash/XCrash$InitParameters;->setNativeDumpMap(Z)Lxcrash/XCrash$InitParameters;

    .line 26
    invoke-virtual {v0, v1}, Lxcrash/XCrash$InitParameters;->setNativeDumpFds(Z)Lxcrash/XCrash$InitParameters;

    .line 29
    invoke-virtual {v0, v1}, Lxcrash/XCrash$InitParameters;->setJavaDumpAllThreads(Z)Lxcrash/XCrash$InitParameters;

    .line 32
    sget-object v1, Lxcrash/XCrash;->e:Landroid/content/Context;

    .line 34
    invoke-static {v1, v0}, Lxcrash/XCrash;->init(Landroid/content/Context;Lxcrash/XCrash$InitParameters;)I

    .line 37
    goto :goto_27

    .line 38
    :catch_25
    move-exception p1

    .line 39
    goto :goto_39

    .line 40
    :cond_27
    :goto_27
    sget-object v0, Lxcrash/XCrash;->d:Ljava/util/concurrent/Semaphore;

    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 45
    sget-object v0, Lxcrash/j;->q:Lxcrash/j;

    .line 47
    sget-object v1, Lxcrash/XCrash;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 49
    iput-object v1, v0, Lxcrash/j;->p:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 51
    invoke-virtual {v0, p1, p2}, Lxcrash/j;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 54
    goto :goto_3c

    .line 55
    :catchall_36
    move-exception p1

    .line 56
    monitor-exit v0

    .line 57
    throw p1
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_39} :catch_25

    .line 58
    :goto_39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    :goto_3c
    return-void
.end method
