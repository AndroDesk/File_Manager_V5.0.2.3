.class Lxcrash/NativeHandler;
.super Ljava/lang/Object;
.source "NativeHandler.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final g:Lxcrash/NativeHandler;


# instance fields
.field public a:J

.field public b:Landroid/content/Context;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lxcrash/NativeHandler;

    invoke-direct {v0}, Lxcrash/NativeHandler;-><init>()V

    sput-object v0, Lxcrash/NativeHandler;->g:Lxcrash/NativeHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lxcrash/NativeHandler;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxcrash/NativeHandler;->f:Z

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lxcrash/NativeHandler;->nativeTraceSignalInit()V

    return-void
.end method

.method private static crashCallback(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .registers 9

    sget-object p1, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast p1, La/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "xcrash"

    const-string v0, "crashCallback start ..."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_aa

    if-eqz p2, :cond_91

    :try_start_16
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_22
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    if-eqz p3, :cond_42

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "main"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    :cond_42
    if-nez p3, :cond_22

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_4e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/StackTraceElement;

    array-length p4, p3

    const/4 v0, 0x0

    :goto_5b
    if-ge v0, p4, :cond_73

    aget-object v1, p3, v0

    const-string v2, "    at "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    :cond_73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_77} :catch_78

    goto :goto_86

    :catch_78
    move-exception p2

    sget-object p3, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast p3, La/b;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "NativeHandler getStacktraceByThreadName failed"

    invoke-static {p1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_85
    const/4 p1, 0x0

    :goto_86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_91

    const-string p2, "java stacktrace"

    invoke-static {p0, p2, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_91
    invoke-static {}, Lxcrash/l;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "memory info"

    invoke-static {p0, p2, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lxcrash/b;->c:Lxcrash/b;

    iget-boolean p1, p1, Lxcrash/b;->b:Z

    if-eqz p1, :cond_a3

    const-string p1, "yes"

    goto :goto_a5

    :cond_a3
    const-string p1, "no"

    :goto_a5
    const-string p2, "foreground"

    invoke-static {p0, p2, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    sget-object p0, Lxcrash/NativeHandler;->g:Lxcrash/NativeHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lxcrash/NativeHandler;->g:Lxcrash/NativeHandler;

    iget-boolean p0, p0, Lxcrash/NativeHandler;->c:Z

    if-nez p0, :cond_ba

    sget-object p0, Lxcrash/b;->c:Lxcrash/b;

    invoke-virtual {p0}, Lxcrash/b;->a()V

    :cond_ba
    return-void
.end method

.method private static native nativeInit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;ZZIIIZZ)I
.end method

.method private static native nativeNotifyJavaCrashed()V
.end method

.method private static native nativeTestCrash(I)V
.end method

.method private static native nativeTraceSignalInit()V
.end method

.method private static traceCallback(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    sget-object p1, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast p1, La/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "xcrash"

    const-string v0, "traceCallback start ..."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    return-void

    :cond_15
    invoke-static {}, Lxcrash/l;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "memory info"

    invoke-static {p0, v0, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lxcrash/b;->c:Lxcrash/b;

    iget-boolean p1, p1, Lxcrash/b;->b:Z

    if-eqz p1, :cond_27

    const-string p1, "yes"

    goto :goto_29

    :cond_27
    const-string p1, "no"

    :goto_29
    const-string v0, "foreground"

    invoke-static {p0, v0, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lxcrash/NativeHandler;->g:Lxcrash/NativeHandler;

    iget-boolean v0, p1, Lxcrash/NativeHandler;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_86

    iget-object v0, p1, Lxcrash/NativeHandler;->b:Landroid/content/Context;

    iget-wide v2, p1, Lxcrash/NativeHandler;->a:J

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_44

    goto :goto_78

    :cond_44
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-wide/16 v5, 0x1f4

    div-long/2addr v2, v5

    move v7, v1

    :goto_4c
    int-to-long v8, v7

    cmp-long v8, v8, v2

    if-gez v8, :cond_78

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_72

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_72

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget v10, v9, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    if-ne v10, v4, :cond_5b

    iget v9, v9, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5b

    const/4 v0, 0x1

    goto :goto_79

    :cond_72
    :try_start_72
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_75

    :catch_75
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    :cond_78
    :goto_78
    move v0, v1

    :goto_79
    if-nez v0, :cond_86

    sget-object p1, Lxcrash/d;->i:Lxcrash/d;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lxcrash/d;->j(Ljava/io/File;)Z

    return-void

    :cond_86
    sget-object v0, Lxcrash/d;->i:Lxcrash/d;

    invoke-virtual {v0}, Lxcrash/d;->i()Z

    move-result v2

    if-nez v2, :cond_8f

    return-void

    :cond_8f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xd

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".anr.xcrash"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_be

    invoke-virtual {v0, v2}, Lxcrash/d;->j(Ljava/io/File;)Z

    return-void

    :cond_be
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private static traceSignalInit()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lxcrash/NativeHandler$a;

    invoke-direct {v1}, Lxcrash/NativeHandler$a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lxcrash/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;Lxcrash/g;ZZZIIIZZLxcrash/g;)I
    .registers 64

    move-object/from16 v1, p0

    const-string v2, "NativeHandler init failed"

    const/4 v3, -0x2

    const-string v4, "xcrash"

    if-nez p2, :cond_1c

    :try_start_9
    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_1f

    :catchall_d
    move-exception v0

    move-object v2, v0

    sget-object v0, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v0, La/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "NativeHandler System.loadLibrary failed"

    invoke-static {v4, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_1c
    :try_start_1c
    invoke-interface/range {p2 .. p2}, Lxcrash/h;->a()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_a2

    :goto_1f
    move-object/from16 v0, p1

    iput-object v0, v1, Lxcrash/NativeHandler;->b:Landroid/content/Context;

    move/from16 v3, p7

    iput-boolean v3, v1, Lxcrash/NativeHandler;->c:Z

    move/from16 v15, p19

    iput-boolean v15, v1, Lxcrash/NativeHandler;->d:Z

    move/from16 v5, p21

    iput-boolean v5, v1, Lxcrash/NativeHandler;->e:Z

    if-eqz p20, :cond_34

    const-wide/16 v5, 0x3a98

    goto :goto_36

    :cond_34
    const-wide/16 v5, 0x7530

    :goto_36
    iput-wide v5, v1, Lxcrash/NativeHandler;->a:J

    const/16 v35, -0x3

    :try_start_3a
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v8, ","

    invoke-static {v8, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v11, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p10

    move/from16 v21, p11

    move/from16 v22, p12

    move/from16 v23, p13

    move/from16 v24, p14

    move/from16 v25, p15

    move/from16 v26, p16

    move-object/from16 v27, p17

    move/from16 v28, p19

    move/from16 v29, p20

    move/from16 v30, p22

    move/from16 v31, p23

    move/from16 v32, p24

    move/from16 v33, p25

    move/from16 v34, p26

    invoke-static/range {v5 .. v34}, Lxcrash/NativeHandler;->nativeInit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;ZZIIIZZ)I

    move-result v0

    if-eqz v0, :cond_91

    sget-object v0, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v0, La/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v35

    :cond_91
    const/4 v0, 0x1

    iput-boolean v0, v1, Lxcrash/NativeHandler;->f:Z
    :try_end_94
    .catchall {:try_start_3a .. :try_end_94} :catchall_96

    const/4 v0, 0x0

    return v0

    :catchall_96
    move-exception v0

    sget-object v3, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v3, La/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v35

    :catchall_a2
    move-exception v0

    move-object v2, v0

    sget-object v0, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v0, La/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "NativeHandler ILibLoader.loadLibrary failed"

    invoke-static {v4, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public final c()V
    .registers 2

    iget-boolean v0, p0, Lxcrash/NativeHandler;->f:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lxcrash/NativeHandler;->d:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lxcrash/NativeHandler;->nativeNotifyJavaCrashed()V

    :cond_b
    return-void
.end method

.method public final d(Z)V
    .registers 3

    iget-boolean v0, p0, Lxcrash/NativeHandler;->f:Z

    if-eqz v0, :cond_7

    invoke-static {p1}, Lxcrash/NativeHandler;->nativeTestCrash(I)V

    :cond_7
    return-void
.end method
