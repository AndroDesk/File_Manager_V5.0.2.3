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

    .line 1
    new-instance v0, Lxcrash/NativeHandler;

    .line 3
    invoke-direct {v0}, Lxcrash/NativeHandler;-><init>()V

    .line 6
    sput-object v0, Lxcrash/NativeHandler;->g:Lxcrash/NativeHandler;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x3a98

    .line 6
    iput-wide v0, p0, Lxcrash/NativeHandler;->a:J

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lxcrash/NativeHandler;->f:Z

    .line 11
    return-void
.end method

.method public static synthetic a()V
    .registers 0

    .line 1
    invoke-static {}, Lxcrash/NativeHandler;->nativeTraceSignalInit()V

    .line 4
    return-void
.end method

.method private static crashCallback(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .registers 9

    .line 1
    sget-object p1, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 3
    check-cast p1, La/b;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string p1, "xcrash"

    .line 10
    const-string v0, "crashCallback start ..."

    .line 12
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_aa

    .line 21
    if-eqz p2, :cond_91

    .line 23
    :try_start_16
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    .line 26
    move-result-object p2

    .line 27
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 30
    move-result-object p2

    .line 31
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object p2

    .line 35
    :cond_22
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_85

    .line 41
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Thread;

    .line 53
    if-eqz p3, :cond_42

    .line 55
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    const-string v3, "main"

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_4e

    .line 67
    :cond_42
    if-nez p3, :cond_22

    .line 69
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_22

    .line 79
    :cond_4e
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 87
    move-result-object p3

    .line 88
    check-cast p3, [Ljava/lang/StackTraceElement;

    .line 90
    array-length p4, p3

    .line 91
    const/4 v0, 0x0

    .line 92
    :goto_5b
    if-ge v0, p4, :cond_73

    .line 94
    aget-object v1, p3, v0

    .line 96
    const-string v2, "    at "

    .line 98
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "\n"

    .line 110
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 115
    goto :goto_5b

    .line 116
    :cond_73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p1
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_77} :catch_78

    .line 120
    goto :goto_86

    .line 121
    :catch_78
    move-exception p2

    .line 122
    sget-object p3, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 124
    check-cast p3, La/b;

    .line 126
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    const-string p3, "NativeHandler getStacktraceByThreadName failed"

    .line 131
    invoke-static {p1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    :cond_85
    const/4 p1, 0x0

    .line 135
    :goto_86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    move-result p2

    .line 139
    if-nez p2, :cond_91

    .line 141
    const-string p2, "java stacktrace"

    .line 143
    invoke-static {p0, p2, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_91
    invoke-static {}, Lxcrash/l;->f()Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    const-string p2, "memory info"

    .line 152
    invoke-static {p0, p2, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object p1, Lxcrash/b;->c:Lxcrash/b;

    .line 157
    iget-boolean p1, p1, Lxcrash/b;->b:Z

    .line 159
    if-eqz p1, :cond_a3

    .line 161
    const-string p1, "yes"

    .line 163
    goto :goto_a5

    .line 164
    :cond_a3
    const-string p1, "no"

    .line 166
    :goto_a5
    const-string p2, "foreground"

    .line 168
    invoke-static {p0, p2, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_aa
    sget-object p0, Lxcrash/NativeHandler;->g:Lxcrash/NativeHandler;

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    sget-object p0, Lxcrash/NativeHandler;->g:Lxcrash/NativeHandler;

    .line 178
    iget-boolean p0, p0, Lxcrash/NativeHandler;->c:Z

    .line 180
    if-nez p0, :cond_ba

    .line 182
    sget-object p0, Lxcrash/b;->c:Lxcrash/b;

    .line 184
    invoke-virtual {p0}, Lxcrash/b;->a()V

    .line 187
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

    .line 1
    sget-object p1, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 3
    check-cast p1, La/b;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string p1, "xcrash"

    .line 10
    const-string v0, "traceCallback start ..."

    .line 12
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_15

    .line 21
    return-void

    .line 22
    :cond_15
    invoke-static {}, Lxcrash/l;->f()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const-string v0, "memory info"

    .line 28
    invoke-static {p0, v0, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object p1, Lxcrash/b;->c:Lxcrash/b;

    .line 33
    iget-boolean p1, p1, Lxcrash/b;->b:Z

    .line 35
    if-eqz p1, :cond_27

    .line 37
    const-string p1, "yes"

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    const-string p1, "no"

    .line 42
    :goto_29
    const-string v0, "foreground"

    .line 44
    invoke-static {p0, v0, p1}, La/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object p1, Lxcrash/NativeHandler;->g:Lxcrash/NativeHandler;

    .line 49
    iget-boolean v0, p1, Lxcrash/NativeHandler;->e:Z

    .line 51
    const/4 v1, 0x0

    .line 52
    if-eqz v0, :cond_86

    .line 54
    iget-object v0, p1, Lxcrash/NativeHandler;->b:Landroid/content/Context;

    .line 56
    iget-wide v2, p1, Lxcrash/NativeHandler;->a:J

    .line 58
    const-string v4, "activity"

    .line 60
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/app/ActivityManager;

    .line 66
    if-nez v0, :cond_44

    .line 68
    goto :goto_78

    .line 69
    :cond_44
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 72
    move-result v4

    .line 73
    const-wide/16 v5, 0x1f4

    .line 75
    div-long/2addr v2, v5

    .line 76
    move v7, v1

    .line 77
    :goto_4c
    int-to-long v8, v7

    .line 78
    cmp-long v8, v8, v2

    .line 80
    if-gez v8, :cond_78

    .line 82
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    .line 85
    move-result-object v8

    .line 86
    if-eqz v8, :cond_72

    .line 88
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v8

    .line 92
    :cond_5b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_72

    .line 98
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object v9

    .line 102
    check-cast v9, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 104
    iget v10, v9, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 106
    if-ne v10, v4, :cond_5b

    .line 108
    iget v9, v9, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 110
    const/4 v10, 0x2

    .line 111
    if-ne v9, v10, :cond_5b

    .line 113
    const/4 v0, 0x1

    .line 114
    goto :goto_79

    .line 115
    :cond_72
    :try_start_72
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_75

    .line 118
    :catch_75
    add-int/lit8 v7, v7, 0x1

    .line 120
    goto :goto_4c

    .line 121
    :cond_78
    :goto_78
    move v0, v1

    .line 122
    :goto_79
    if-nez v0, :cond_86

    .line 124
    sget-object p1, Lxcrash/d;->i:Lxcrash/d;

    .line 126
    new-instance v0, Ljava/io/File;

    .line 128
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1, v0}, Lxcrash/d;->j(Ljava/io/File;)Z

    .line 134
    return-void

    .line 135
    :cond_86
    sget-object v0, Lxcrash/d;->i:Lxcrash/d;

    .line 137
    invoke-virtual {v0}, Lxcrash/d;->i()Z

    .line 140
    move-result v2

    .line 141
    if-nez v2, :cond_8f

    .line 143
    return-void

    .line 144
    :cond_8f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 152
    move-result v3

    .line 153
    add-int/lit8 v3, v3, -0xd

    .line 155
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, ".anr.xcrash"

    .line 164
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v1

    .line 171
    new-instance v2, Ljava/io/File;

    .line 173
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    new-instance p0, Ljava/io/File;

    .line 178
    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 184
    move-result p0

    .line 185
    if-nez p0, :cond_be

    .line 187
    invoke-virtual {v0, v2}, Lxcrash/d;->j(Ljava/io/File;)Z

    .line 190
    return-void

    .line 191
    :cond_be
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    return-void
.end method

.method private static traceSignalInit()V
    .registers 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    new-instance v1, Lxcrash/NativeHandler$a;

    .line 12
    invoke-direct {v1}, Lxcrash/NativeHandler$a;-><init>()V

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
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

    .line 1
    :try_start_9
    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_1f

    :catchall_d
    move-exception v0

    move-object v2, v0

    .line 2
    sget-object v0, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 3
    check-cast v0, La/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "NativeHandler System.loadLibrary failed"

    .line 4
    invoke-static {v4, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    .line 5
    :cond_1c
    :try_start_1c
    invoke-interface/range {p2 .. p2}, Lxcrash/h;->a()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_a2

    :goto_1f
    move-object/from16 v0, p1

    .line 6
    iput-object v0, v1, Lxcrash/NativeHandler;->b:Landroid/content/Context;

    move/from16 v3, p7

    .line 7
    iput-boolean v3, v1, Lxcrash/NativeHandler;->c:Z

    move/from16 v15, p19

    .line 8
    iput-boolean v15, v1, Lxcrash/NativeHandler;->d:Z

    move/from16 v5, p21

    .line 9
    iput-boolean v5, v1, Lxcrash/NativeHandler;->e:Z

    if-eqz p20, :cond_34

    const-wide/16 v5, 0x3a98

    goto :goto_36

    :cond_34
    const-wide/16 v5, 0x7530

    .line 10
    :goto_36
    iput-wide v5, v1, Lxcrash/NativeHandler;->a:J

    const/16 v35, -0x3

    .line 11
    :try_start_3a
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 12
    sget-object v7, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v8, ","

    invoke-static {v8, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 13
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v11, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 14
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

    .line 15
    invoke-static/range {v5 .. v34}, Lxcrash/NativeHandler;->nativeInit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;ZZIIIZZ)I

    move-result v0

    if-eqz v0, :cond_91

    .line 16
    sget-object v0, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 17
    check-cast v0, La/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v35

    :cond_91
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, v1, Lxcrash/NativeHandler;->f:Z
    :try_end_94
    .catchall {:try_start_3a .. :try_end_94} :catchall_96

    const/4 v0, 0x0

    return v0

    :catchall_96
    move-exception v0

    .line 20
    sget-object v3, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 21
    check-cast v3, La/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v35

    :catchall_a2
    move-exception v0

    move-object v2, v0

    .line 23
    sget-object v0, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 24
    check-cast v0, La/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "NativeHandler ILibLoader.loadLibrary failed"

    .line 25
    invoke-static {v4, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public final c()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lxcrash/NativeHandler;->f:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lxcrash/NativeHandler;->d:Z

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-static {}, Lxcrash/NativeHandler;->nativeNotifyJavaCrashed()V

    .line 12
    :cond_b
    return-void
.end method

.method public final d(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lxcrash/NativeHandler;->f:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-static {p1}, Lxcrash/NativeHandler;->nativeTestCrash(I)V

    .line 8
    :cond_7
    return-void
.end method
