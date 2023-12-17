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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    :try_start_0
    const-class v0, Lxcrash/XCrash;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_25

    :try_start_3
    sget-boolean v1, Lxcrash/XCrash;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_36

    :try_start_5
    monitor-exit v0

    if-nez v1, :cond_27

    new-instance v0, Lxcrash/XCrash$InitParameters;

    invoke-direct {v0}, Lxcrash/XCrash$InitParameters;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxcrash/XCrash$InitParameters;->setNativeDumpAllThreads(Z)Lxcrash/XCrash$InitParameters;

    sget-object v2, Lxcrash/XCrash;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lxcrash/XCrash$InitParameters;->setLogDir(Ljava/lang/String;)Lxcrash/XCrash$InitParameters;

    invoke-virtual {v0, v1}, Lxcrash/XCrash$InitParameters;->setNativeDumpMap(Z)Lxcrash/XCrash$InitParameters;

    invoke-virtual {v0, v1}, Lxcrash/XCrash$InitParameters;->setNativeDumpFds(Z)Lxcrash/XCrash$InitParameters;

    invoke-virtual {v0, v1}, Lxcrash/XCrash$InitParameters;->setJavaDumpAllThreads(Z)Lxcrash/XCrash$InitParameters;

    sget-object v1, Lxcrash/XCrash;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lxcrash/XCrash;->init(Landroid/content/Context;Lxcrash/XCrash$InitParameters;)I

    goto :goto_27

    :catch_25
    move-exception p1

    goto :goto_39

    :cond_27
    :goto_27
    sget-object v0, Lxcrash/XCrash;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    sget-object v0, Lxcrash/j;->q:Lxcrash/j;

    sget-object v1, Lxcrash/XCrash;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v1, v0, Lxcrash/j;->p:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, p1, p2}, Lxcrash/j;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_3c

    :catchall_36
    move-exception p1

    monitor-exit v0

    throw p1
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_39} :catch_25

    :goto_39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3c
    return-void
.end method
