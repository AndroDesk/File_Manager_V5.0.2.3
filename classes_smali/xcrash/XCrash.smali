.class public final Lxcrash/XCrash;
.super Ljava/lang/Object;
.source "XCrash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxcrash/XCrash$InitParameters;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;

.field public static c:Lxcrash/i;

.field public static d:Ljava/util/concurrent/Semaphore;

.field public static e:Landroid/content/Context;

.field public static f:Ljava/lang/String;

.field public static g:Z

.field public static h:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public static i:Lxcrash/XCrash$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, La/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/b;-><init>(I)V

    sput-object v0, Lxcrash/XCrash;->c:Lxcrash/i;

    new-instance v0, Lxcrash/XCrash$a;

    invoke-direct {v0}, Lxcrash/XCrash$a;-><init>()V

    sput-object v0, Lxcrash/XCrash;->i:Lxcrash/XCrash$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lxcrash/XCrash;->init(Landroid/content/Context;Lxcrash/XCrash$InitParameters;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lxcrash/XCrash$InitParameters;)I
    .registers 34

    const-class v1, Lxcrash/XCrash;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lxcrash/XCrash;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1aa

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    monitor-exit v1

    return v2

    :cond_a
    const/4 v0, 0x1

    :try_start_b
    sput-boolean v0, Lxcrash/XCrash;->a:Z
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_1aa

    if-nez p0, :cond_12

    const/4 v0, -0x1

    monitor-exit v1

    return v0

    :cond_12
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1a

    move-object v4, v0

    goto :goto_1c

    :cond_1a
    move-object/from16 v4, p0

    :goto_1c
    if-nez p1, :cond_24

    new-instance v0, Lxcrash/XCrash$InitParameters;

    invoke-direct {v0}, Lxcrash/XCrash$InitParameters;-><init>()V

    goto :goto_26

    :cond_24
    move-object/from16 v0, p1

    :goto_26
    iget-object v3, v0, Lxcrash/XCrash$InitParameters;->d:Lxcrash/i;

    if-eqz v3, :cond_2c

    sput-object v3, Lxcrash/XCrash;->c:Lxcrash/i;

    :cond_2c
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lxcrash/XCrash;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3c

    const-string v5, "unknown"

    sput-object v5, Lxcrash/XCrash;->b:Ljava/lang/String;

    :cond_3c
    iget-object v5, v0, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_42
    .catchall {:try_start_12 .. :try_end_42} :catchall_1aa

    const/16 v31, 0x0

    if-eqz v5, :cond_61

    :try_start_46
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_54} :catch_55
    .catchall {:try_start_46 .. :try_end_54} :catchall_1aa

    goto :goto_57

    :catch_55
    move-object/from16 v5, v31

    :goto_57
    :try_start_57
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const-string v5, "unknown"

    :cond_5f
    iput-object v5, v0, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    :cond_61
    iget-object v5, v0, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_80

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/tombstones"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    :cond_80
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    iget-boolean v5, v0, Lxcrash/XCrash$InitParameters;->g:Z

    if-nez v5, :cond_90

    iget-boolean v5, v0, Lxcrash/XCrash$InitParameters;->E:Z

    if-eqz v5, :cond_8d

    goto :goto_90

    :cond_8d
    move-object/from16 v8, v31

    goto :goto_a7

    :cond_90
    :goto_90
    invoke-static {v4, v7}, Lxcrash/l;->g(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v0, Lxcrash/XCrash$InitParameters;->E:Z

    if-eqz v6, :cond_a6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a4

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    :cond_a4
    iput-boolean v2, v0, Lxcrash/XCrash$InitParameters;->E:Z

    :cond_a6
    move-object v8, v5

    :goto_a7
    sget-object v2, Lxcrash/d;->i:Lxcrash/d;

    iget-object v10, v0, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    iget v11, v0, Lxcrash/XCrash$InitParameters;->i:I

    iget v12, v0, Lxcrash/XCrash$InitParameters;->t:I

    iget v13, v0, Lxcrash/XCrash$InitParameters;->H:I

    iget v14, v0, Lxcrash/XCrash$InitParameters;->e:I

    iget v15, v0, Lxcrash/XCrash$InitParameters;->f:I

    iget v3, v0, Lxcrash/XCrash$InitParameters;->c:I

    move-object v9, v2

    move/from16 v16, v3

    invoke-virtual/range {v9 .. v16}, Lxcrash/d;->g(Ljava/lang/String;IIIIII)V

    iget-boolean v3, v0, Lxcrash/XCrash$InitParameters;->g:Z

    if-nez v3, :cond_c9

    iget-boolean v3, v0, Lxcrash/XCrash$InitParameters;->r:Z

    if-nez v3, :cond_c9

    iget-boolean v3, v0, Lxcrash/XCrash$InitParameters;->E:Z

    if-eqz v3, :cond_e1

    :cond_c9
    instance-of v3, v4, Landroid/app/Application;

    if-eqz v3, :cond_e1

    sget-object v3, Lxcrash/b;->c:Lxcrash/b;

    move-object v5, v4

    check-cast v5, Landroid/app/Application;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, v3, Lxcrash/b;->a:Ljava/util/LinkedList;

    new-instance v3, Lxcrash/a;

    invoke-direct {v3}, Lxcrash/a;-><init>()V

    invoke-virtual {v5, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_e1
    iget-boolean v3, v0, Lxcrash/XCrash$InitParameters;->g:Z

    if-eqz v3, :cond_11a

    sget-object v6, Lxcrash/j;->q:Lxcrash/j;

    sget-boolean v9, Lxcrash/XCrash;->g:Z

    sget-object v10, Lxcrash/XCrash;->b:Ljava/lang/String;

    iget-object v11, v0, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    iget-object v12, v0, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    iget-boolean v13, v0, Lxcrash/XCrash$InitParameters;->h:Z

    iget v14, v0, Lxcrash/XCrash$InitParameters;->j:I

    iget v15, v0, Lxcrash/XCrash$InitParameters;->k:I

    iget v3, v0, Lxcrash/XCrash$InitParameters;->l:I

    iget-boolean v5, v0, Lxcrash/XCrash$InitParameters;->m:Z

    move-object/from16 p0, v2

    iget-boolean v2, v0, Lxcrash/XCrash$InitParameters;->n:Z

    move-object/from16 v23, v4

    iget-boolean v4, v0, Lxcrash/XCrash$InitParameters;->o:Z

    move/from16 v19, v4

    iget v4, v0, Lxcrash/XCrash$InitParameters;->p:I

    move/from16 v20, v4

    iget-object v4, v0, Lxcrash/XCrash$InitParameters;->q:[Ljava/lang/String;

    const/16 v22, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v2

    move-object/from16 v21, v4

    invoke-virtual/range {v6 .. v22}, Lxcrash/j;->d(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZZZI[Ljava/lang/String;Lxcrash/g;)V

    goto :goto_11e

    :cond_11a
    move-object/from16 p0, v2

    move-object/from16 v23, v4

    :goto_11e
    iget-boolean v2, v0, Lxcrash/XCrash$InitParameters;->E:Z

    iget-boolean v9, v0, Lxcrash/XCrash$InitParameters;->r:Z

    if-nez v9, :cond_12a

    if-eqz v2, :cond_127

    goto :goto_12a

    :cond_127
    const/4 v0, 0x0

    goto/16 :goto_19c

    :cond_12a
    :goto_12a
    sget-object v3, Lxcrash/NativeHandler;->g:Lxcrash/NativeHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lxcrash/XCrash;->b:Ljava/lang/String;

    iget-object v7, v0, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    iget-object v8, v0, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    iget-boolean v10, v0, Lxcrash/XCrash$InitParameters;->s:Z

    iget v11, v0, Lxcrash/XCrash$InitParameters;->u:I

    iget v12, v0, Lxcrash/XCrash$InitParameters;->v:I

    iget v13, v0, Lxcrash/XCrash$InitParameters;->w:I

    iget-boolean v14, v0, Lxcrash/XCrash$InitParameters;->x:Z

    iget-boolean v15, v0, Lxcrash/XCrash$InitParameters;->y:Z

    iget-boolean v4, v0, Lxcrash/XCrash$InitParameters;->z:Z

    iget-boolean v5, v0, Lxcrash/XCrash$InitParameters;->A:Z

    move/from16 v16, v5

    iget-boolean v5, v0, Lxcrash/XCrash$InitParameters;->B:Z

    move/from16 v17, v5

    iget v5, v0, Lxcrash/XCrash$InitParameters;->C:I

    move/from16 v18, v5

    iget-object v5, v0, Lxcrash/XCrash$InitParameters;->D:[Ljava/lang/String;

    const/16 v21, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_15a

    const/4 v2, 0x1

    goto :goto_15b

    :cond_15a
    const/4 v2, 0x0

    :goto_15b
    move/from16 v22, v2

    iget-boolean v2, v0, Lxcrash/XCrash$InitParameters;->F:Z

    move-object/from16 v19, v5

    iget-boolean v5, v0, Lxcrash/XCrash$InitParameters;->G:Z

    move/from16 v20, v5

    iget v5, v0, Lxcrash/XCrash$InitParameters;->I:I

    move/from16 v24, v5

    iget v5, v0, Lxcrash/XCrash$InitParameters;->J:I

    move/from16 v25, v5

    iget v5, v0, Lxcrash/XCrash$InitParameters;->K:I

    move/from16 v26, v5

    iget-boolean v5, v0, Lxcrash/XCrash$InitParameters;->L:Z

    move/from16 v27, v5

    iget-boolean v5, v0, Lxcrash/XCrash$InitParameters;->M:Z

    const/16 v30, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, v4

    move-object/from16 v4, v23

    move/from16 v29, v5

    move/from16 v28, v27

    const/4 v5, 0x0

    move/from16 v27, v26

    move/from16 v26, v25

    move/from16 v25, v24

    move/from16 v24, v20

    move-object/from16 v20, v19

    move/from16 v19, v18

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v0

    move/from16 v23, v2

    invoke-virtual/range {v3 .. v30}, Lxcrash/NativeHandler;->b(Landroid/content/Context;Lxcrash/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;Lxcrash/g;ZZZIIIZZLxcrash/g;)I

    move-result v0

    :goto_19c
    invoke-virtual/range {p0 .. p0}, Lxcrash/d;->h()V

    sget-object v2, Lxcrash/XCrash;->d:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_1a6

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1a6
    sput-object v31, Lxcrash/XCrash;->e:Landroid/content/Context;
    :try_end_1a8
    .catchall {:try_start_57 .. :try_end_1a8} :catchall_1aa

    monitor-exit v1

    return v0

    :catchall_1aa
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static initHooker(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lxcrash/XCrash;->d:Ljava/util/concurrent/Semaphore;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lxcrash/XCrash;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    sput-object p0, Lxcrash/XCrash;->e:Landroid/content/Context;

    sput-object p1, Lxcrash/XCrash;->f:Ljava/lang/String;

    :try_start_12
    sget-object p0, Lxcrash/XCrash;->i:Lxcrash/XCrash$a;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 p0, 0x1

    sput-boolean p0, Lxcrash/XCrash;->g:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1b

    goto :goto_2a

    :catch_1b
    move-exception p0

    sget-object p1, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast p1, La/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "xcrash"

    const-string v0, "JavaCrashHandler setDefaultUncaughtExceptionHandler failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return-void
.end method

.method public static testJavaCrash(Z)V
    .registers 2

    if-eqz p0, :cond_10

    new-instance p0, Lxcrash/XCrash$b;

    invoke-direct {p0}, Lxcrash/XCrash$b;-><init>()V

    const-string v0, "xcrash_test_java_thread"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "test java exception"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static testNativeCrash(Z)V
    .registers 2

    sget-object v0, Lxcrash/NativeHandler;->g:Lxcrash/NativeHandler;

    invoke-virtual {v0, p0}, Lxcrash/NativeHandler;->d(Z)V

    return-void
.end method
