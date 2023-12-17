.class public Lcom/xiaomi/onetrack/CrashAnalysis;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;
    }
.end annotation


# static fields
.field public static final ANR_CRASH:Ljava/lang/String; = "anr"

.field public static final JAVA_CRASH:Ljava/lang/String; = "java"

.field public static final NATIVE_CRASH:Ljava/lang/String; = "native"

.field private static final a:Ljava/lang/String; = "CrashAnalysis"

.field private static final b:Ljava/lang/String; = "com.xiaomi.digest.DigestUtil"

.field private static final c:Ljava/lang/String; = "calcuateJavaDigest"

.field private static final d:Ljava/lang/String; = "/sdcard/tombstone"

.field private static final e:Ljava/lang/String; = "backtrace feature id:\n\t"

.field private static final f:Ljava/lang/String; = "error reason:\n\t"

.field private static final g:Ljava/lang/String; = "Crash time: \'"

.field private static final h:Ljava/lang/String; = ".xcrash"

.field private static final i:I = 0x240c8400

.field private static final j:I = 0x19000

.field private static final k:I = 0xa

.field private static final l:I = 0x14

.field private static final m:Ljava/lang/String; = "@[0-9a-fA-F]{1,10}"

.field private static final n:Ljava/lang/String; = "\\$[0-9a-fA-F]{1,10}@[0-9a-fA-F]{1,10}"

.field private static final o:Ljava/lang/String; = "0x[0-9a-fA-F]{1,10}"

.field private static final p:Ljava/lang/String; = "\\d+[B,KB,MB]*"

.field private static final q:Ljava/lang/String; = "((java:)|(length=)|(index=)|(Index:)|(Size:))\\d+"

.field private static final r:I = 0x14

.field private static final s:Z = false

.field private static final t:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

.field private final v:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 7
    sput-object v0, Lcom/xiaomi/onetrack/CrashAnalysis;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/h;)V
    .registers 12

    const-string v0, "CrashAnalysis"

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    :try_start_8
    const-class v4, Lxcrash/XCrash$InitParameters;

    new-array v5, v3, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "setNativeDumpAllThreads"

    .line 5
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "setLogDir"

    .line 6
    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v5, v7}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "setNativeDumpMap"

    .line 7
    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "setNativeDumpFds"

    .line 8
    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "setJavaDumpAllThreads"

    .line 9
    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "setAnrRethrow"

    .line 10
    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    const-class v5, Lxcrash/XCrash;

    const-string v6, "init"

    new-array v7, v1, [Ljava/lang/Class;

    .line 12
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    aput-object p1, v7, v3

    aput-object v4, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "XCrash init success"

    .line 14
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_8 .. :try_end_61} :catchall_62

    goto :goto_77

    :catchall_62
    move-exception p1

    const-string v4, "XCrash init failed: "

    .line 15
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :goto_77
    iput-object p2, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->v:Lcom/xiaomi/onetrack/api/h;

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    .line 18
    new-instance p2, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    const-string v0, "java"

    invoke-direct {p2, p0, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V

    aput-object p2, p1, v3

    new-instance p2, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    const-string v0, "anr"

    invoke-direct {p2, p0, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V

    aput-object p2, p1, v2

    new-instance p2, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    const-string v0, "native"

    invoke-direct {p2, p0, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V

    aput-object p2, p1, v1

    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/h;Lcom/xiaomi/onetrack/CrashAnalysis$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/CrashAnalysis;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/h;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)J
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a()Ljava/lang/String;
    .registers 1

    .line 17
    invoke-static {}, Lcom/xiaomi/onetrack/util/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/CrashAnalysis;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(J)V
    .registers 7

    .line 18
    invoke-static {}, Lcom/xiaomi/onetrack/util/ac;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    .line 19
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->d(J)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 9

    const-string v0, "CrashAnalysis"

    .line 4
    :try_start_2
    invoke-static {p0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/Context;)V

    .line 5
    const-class v1, Lxcrash/XCrash;

    const-string v2, "initHooker"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 6
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->a()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "registerHook succeeded"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_32

    goto :goto_47

    :catchall_32
    move-exception p0

    const-string v1, "registerHook failed: "

    .line 9
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9

    .line 14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_b

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_f

    :cond_b
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 15
    :goto_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, p2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p3, v0, v4

    .line 16
    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/CrashAnalysis;)Z
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->d()Z

    move-result p0

    return p0
.end method

.method private b()J
    .registers 13

    .line 16
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0xa

    const-string v5, "CrashAnalysis"

    if-nez v2, :cond_14

    const-string v0, "no ticket data found, return max count"

    .line 17
    invoke-static {v5, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    .line 18
    :cond_14
    invoke-static {}, Lcom/xiaomi/onetrack/util/ac;->b()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    .line 19
    div-long v10, v0, v8

    cmp-long v2, v10, v6

    if-eqz v2, :cond_26

    const-string v0, "no today\'s ticket, return max count"

    .line 20
    invoke-static {v5, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    :cond_26
    mul-long/2addr v6, v8

    sub-long/2addr v0, v6

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "today\'s remain ticket is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private static b(Ljava/lang/String;)J
    .registers 6

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_30

    :try_start_8
    const-string v0, "Crash time: \'"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_30

    add-int/lit8 v0, v0, 0xd

    const-string v4, "\'\n"

    .line 5
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_30

    .line 6
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_24

    goto :goto_30

    :catch_24
    move-exception p0

    const-string v0, "getCrashTimeStamp error: "

    .line 7
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "CrashAnalysis"

    .line 8
    invoke-static {p0, v0, v3}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_30
    :goto_30
    return-wide v1
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/CrashAnalysis;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/xiaomi/onetrack/CrashAnalysis;)V
    .registers 1

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->e()V

    return-void
.end method

.method public static synthetic c(Lcom/xiaomi/onetrack/CrashAnalysis;)Lcom/xiaomi/onetrack/api/h;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->v:Lcom/xiaomi/onetrack/api/h;

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "uncategoried"

    if-nez v0, :cond_56

    :try_start_8
    const-string v0, "anr"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_32

    const-string p1, " tid=1 "

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v0, :cond_56

    const-string v2, "\n  at "

    .line 5
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_56

    const/16 v2, 0xa

    add-int/lit8 v3, p1, 0x6

    .line 6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v0, :cond_56

    add-int/lit8 p1, p1, 0x2

    .line 7
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_48

    :cond_32
    const-string p1, "error reason:\n\t"

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v0, :cond_56

    add-int/lit8 p1, p1, 0xf

    const-string v2, "\n\n"

    .line 9
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_56

    .line 10
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_48} :catch_4a

    :goto_48
    move-object v1, p0

    goto :goto_56

    :catch_4a
    move-exception p0

    const-string p1, "getErrorReasonString error: "

    .line 11
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "CrashAnalysis"

    .line 12
    invoke-static {p0, p1, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-object v1
.end method

.method private c()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "CrashAnalysis"

    const-string v1, "this path does not denote a directory, or if an I/O error occurs."

    .line 21
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 22
    :cond_18
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/xiaomi/onetrack/CrashAnalysis$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/CrashAnalysis$2;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_41

    add-int/lit8 v2, v1, -0x14

    const/4 v3, 0x0

    :goto_2f
    if-ge v3, v2, :cond_3d

    .line 25
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-static {v4}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 26
    :cond_3d
    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_41
    return-object v0
.end method

.method public static calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    const-string v0, "\\t"

    .line 3
    const-string v1, ""

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    const-string v0, "\\n"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    array-length v2, p0

    .line 21
    const/16 v3, 0x14

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    move v4, v3

    .line 29
    :goto_1c
    if-ge v4, v2, :cond_3b

    .line 31
    aget-object v5, p0, v4

    .line 33
    const-string v6, "((java:)|(length=)|(index=)|(Index:)|(Size:))\\d+"

    .line 35
    const-string v7, "$1XX"

    .line 37
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v5

    .line 41
    const-string v6, "\\$[0-9a-fA-F]{1,10}@[0-9a-fA-F]{1,10}|@[0-9a-fA-F]{1,10}|0x[0-9a-fA-F]{1,10}"

    .line 43
    const-string v7, "XX"

    .line 45
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v5

    .line 49
    const-string v6, "\\d+[B,KB,MB]*"

    .line 51
    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    aput-object v5, p0, v4

    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 59
    goto :goto_1c

    .line 60
    :cond_3b
    :goto_3b
    if-ge v3, v2, :cond_5f

    .line 62
    aget-object v1, p0, v3

    .line 64
    const-string v4, "..."

    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_52

    .line 72
    aget-object v1, p0, v3

    .line 74
    const-string v4, "more"

    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_52

    .line 82
    goto :goto_5f

    .line 83
    :cond_52
    aget-object v1, p0, v3

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const/16 v1, 0xa

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 95
    goto :goto_3b

    .line 96
    :cond_5f
    :goto_5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_4c

    :try_start_8
    const-string v0, "anr"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_40

    const-string v0, "\n\n"

    const/4 v2, -0x1

    if-eqz p1, :cond_2a

    :try_start_13
    const-string p1, " tid=1 "

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_4c

    .line 4
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_4c

    .line 5
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3e

    :cond_2a
    const-string p1, "backtrace feature id:\n\t"

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_4c

    add-int/lit8 p1, p1, 0x17

    .line 8
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_4c

    .line 9
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3e} :catch_40

    :goto_3e
    move-object v1, p0

    goto :goto_4c

    :catch_40
    move-exception p0

    const-string p1, "calculateFeatureId error: "

    .line 10
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "CrashAnalysis"

    .line 11
    invoke-static {p0, p1, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-object v1
.end method

.method private d()Z
    .registers 23

    move-object/from16 v0, p0

    .line 19
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->c()Ljava/util/List;

    move-result-object v1

    .line 20
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->b()J

    move-result-wide v2

    if-eqz v1, :cond_ba

    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_ba

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 23
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->b()J

    move-result-wide v6

    cmp-long v8, v6, v4

    const-wide/32 v9, 0x240c8400

    if-lez v8, :cond_23

    sub-long v6, v4, v9

    .line 24
    :cond_23
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    move-wide v13, v11

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/io/File;

    .line 25
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    sub-long v9, v4, v9

    cmp-long v9, v16, v9

    const-string v10, "CrashAnalysis"

    if-ltz v9, :cond_90

    cmp-long v9, v16, v4

    if-lez v9, :cond_48

    goto :goto_90

    :cond_48
    cmp-long v9, v16, v6

    if-gtz v9, :cond_52

    const-string v9, "found already reported crash file, ignore"

    .line 26
    invoke-static {v10, v9}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :cond_52
    cmp-long v9, v2, v11

    if-lez v9, :cond_8d

    .line 27
    iget-object v9, v0, Lcom/xiaomi/onetrack/CrashAnalysis;->u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    array-length v11, v9

    const/4 v12, 0x0

    :goto_5a
    if-ge v12, v11, :cond_8d

    move-object/from16 v18, v1

    aget-object v1, v9, v12

    .line 28
    invoke-virtual {v1, v15}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a(Ljava/io/File;)Z

    move-result v1

    const/16 v19, 0x1

    if-eqz v1, :cond_88

    const-string v1, "find crash file:"

    .line 29
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 30
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v20, 0x1

    sub-long v2, v2, v20

    cmp-long v1, v13, v16

    if-gez v1, :cond_86

    move-wide/from16 v13, v16

    :cond_86
    move/from16 v8, v19

    :cond_88
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v18

    goto :goto_5a

    :cond_8d
    :goto_8d
    move-object/from16 v18, v1

    goto :goto_a9

    :cond_90
    :goto_90
    move-object/from16 v18, v1

    const-string v1, "remove obsolete crash files: "

    .line 31
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 32
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {v15}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/io/File;)V

    :goto_a9
    const-wide/32 v9, 0x240c8400

    const-wide/16 v11, 0x0

    move-object/from16 v1, v18

    goto/16 :goto_2b

    :cond_b2
    cmp-long v1, v13, v11

    if-lez v1, :cond_bb

    .line 34
    invoke-static {v13, v14}, Lcom/xiaomi/onetrack/util/aa;->c(J)V

    goto :goto_bb

    :cond_ba
    const/4 v8, 0x0

    :cond_bb
    :goto_bb
    if-eqz v8, :cond_c0

    .line 35
    invoke-direct {v0, v2, v3}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(J)V

    :cond_c0
    return v8
.end method

.method private e()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_4
    if-ge v2, v1, :cond_e

    .line 7
    aget-object v3, v0, v2

    .line 9
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a()V

    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_4

    .line 15
    :cond_e
    return-void
.end method

.method public static isSupport()Z
    .registers 1

    .line 1
    :try_start_0
    sget-boolean v0, Lxcrash/XCrash;->a:Z
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_4

    .line 3
    const/4 v0, 0x1

    .line 4
    return v0

    .line 5
    :catchall_4
    const/4 v0, 0x0

    .line 6
    return v0
.end method

.method public static start(Landroid/content/Context;Lcom/xiaomi/onetrack/api/h;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/CrashAnalysis;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_13

    .line 11
    new-instance v0, Lcom/xiaomi/onetrack/CrashAnalysis$1;

    .line 13
    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/CrashAnalysis$1;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/h;)V

    .line 16
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    .line 19
    goto :goto_1a

    .line 20
    :cond_13
    const-string p0, "CrashAnalysis"

    .line 22
    const-string p1, "run method has been invoked more than once"

    .line 24
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :goto_1a
    return-void
.end method
