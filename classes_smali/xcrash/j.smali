.class public final Lxcrash/j;
.super Ljava/lang/Object;
.source "JavaCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final q:Lxcrash/j;


# instance fields
.field public final a:Ljava/util/Date;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:[Ljava/lang/String;

.field public p:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lxcrash/j;

    invoke-direct {v0}, Lxcrash/j;-><init>()V

    sput-object v0, Lxcrash/j;->q:Lxcrash/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lxcrash/j;->a:Ljava/util/Date;

    const/4 v0, 0x0

    iput-object v0, p0, Lxcrash/j;->p:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lxcrash/j;->a:Ljava/util/Date;

    iget-object v2, p0, Lxcrash/j;->d:Ljava/lang/String;

    iget-object v3, p0, Lxcrash/j;->e:Ljava/lang/String;

    const-string v4, "java"

    invoke-static {v1, p1, v4, v2, v3}, Lxcrash/l;->c(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lxcrash/j;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", name: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  >>> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lxcrash/j;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " <<<\n\njava stacktrace:\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Thread;)Ljava/lang/String;
    .registers 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lxcrash/j;->o:[Ljava/lang/String;

    if-eqz v0, :cond_2e

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lxcrash/j;->o:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    move v5, v0

    :goto_10
    if-ge v5, v4, :cond_2f

    aget-object v0, v3, v5

    :try_start_14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_1c

    goto :goto_2b

    :catch_1c
    move-exception v0

    sget-object v6, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v6, La/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "xcrash"

    const-string v7, "JavaCrashHandler pattern compile failed"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_2e
    const/4 v2, 0x0

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    const-string v10, "\n"

    const/4 v11, 0x1

    if-eqz v8, :cond_f1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Thread;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/StackTraceElement;

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6f

    goto :goto_43

    :cond_6f
    if-eqz v2, :cond_94

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_79
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_90

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/regex/Pattern;

    invoke-virtual {v15, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_79

    goto :goto_91

    :cond_90
    const/4 v11, 0x0

    :goto_91
    if-nez v11, :cond_94

    goto :goto_43

    :cond_94
    add-int/lit8 v6, v6, 0x1

    iget v11, v1, Lxcrash/j;->n:I

    if-lez v11, :cond_9f

    if-lt v5, v11, :cond_9f

    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    :cond_9f
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "pid: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lxcrash/j;->b:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", tid: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", name: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  >>> "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lxcrash/j;->c:Ljava/lang/String;

    const-string v11, " <<<\n"

    const-string v12, "java stacktrace:\n"

    invoke-static {v0, v9, v11, v10, v12}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    array-length v9, v8

    const/4 v11, 0x0

    :goto_d4
    if-ge v11, v9, :cond_ea

    aget-object v12, v8, v11

    const-string v13, "    at "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_d4

    :cond_ea
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_43

    :cond_f1
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-le v4, v11, :cond_138

    if-nez v5, :cond_fc

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fc
    const-string v4, "total JVM threads (exclude the crashed thread): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_119

    const-string v2, "JVM threads matched whitelist: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_119
    iget v2, v1, Lxcrash/j;->n:I

    if-lez v2, :cond_128

    const-string v2, "JVM threads ignored by max count limit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_128
    const-string v2, "dumped JVM threads:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "+++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 16

    const-string v0, "\n\n"

    const-string v1, "xcrash"

    const-string v2, "UTF-8"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    sget-object v4, Lxcrash/NativeHandler;->g:Lxcrash/NativeHandler;

    invoke-virtual {v4}, Lxcrash/NativeHandler;->c()V

    sget-object v4, Lxcrash/c;->a:Lxcrash/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_17
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s/%s_%020d_%s__%s%s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lxcrash/j;->g:Ljava/lang/String;

    aput-object v9, v8, v4

    const-string v4, "tombstone"

    aput-object v4, v8, v5

    const/4 v4, 0x2

    iget-object v5, p0, Lxcrash/j;->a:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lxcrash/j;->e:Ljava/lang/String;

    aput-object v5, v8, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lxcrash/j;->c:Ljava/lang/String;

    aput-object v5, v8, v4

    const/4 v4, 0x5

    const-string v5, ".java.xcrash"

    aput-object v5, v8, v4

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lxcrash/d;->i:Lxcrash/d;

    invoke-virtual {v5, v4}, Lxcrash/d;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4f} :catch_50

    goto :goto_5e

    :catch_50
    move-exception v4

    sget-object v5, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v5, La/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "JavaCrashHandler createLogFile failed"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    :goto_5e
    :try_start_5e
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6f} :catch_76

    :try_start_6f
    invoke-virtual {p0, v3, p1, v5}, Lxcrash/j;->a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_73} :catch_74

    goto :goto_85

    :catch_74
    move-exception v3

    goto :goto_78

    :catch_76
    move-exception v3

    const/4 v5, 0x0

    :goto_78
    sget-object v6, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v6, La/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "JavaCrashHandler getEmergency failed"

    invoke-static {v1, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    :goto_85
    if-eqz v4, :cond_28a

    :try_start_87
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "rws"

    invoke-direct {v6, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8e} :catch_273
    .catchall {:try_start_87 .. :try_end_8e} :catchall_270

    :try_start_8e
    invoke-static {v5}, Lcom/xiaomi/digest/DigestUtil;->calcuateJavaDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "backtrace feature id:\n\t"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/RandomAccessFile;->write([B)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error reason:\n\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/io/RandomAccessFile;->write([B)V

    if-eqz v3, :cond_d5

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_d5
    iget p2, p0, Lxcrash/j;->j:I
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_d7} :catch_26e
    .catchall {:try_start_8e .. :try_end_d7} :catchall_26c

    const-string v3, "\n"

    if-gtz p2, :cond_e3

    :try_start_db
    iget v4, p0, Lxcrash/j;->h:I

    if-gtz v4, :cond_e3

    iget v4, p0, Lxcrash/j;->i:I

    if-lez v4, :cond_11e

    :cond_e3
    iget v4, p0, Lxcrash/j;->h:I

    iget v5, p0, Lxcrash/j;->i:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "logcat:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p2, :cond_fe

    const/16 v9, 0x44

    const-string v10, "main"

    invoke-static {v7, v8, v10, p2, v9}, Lxcrash/l;->d(ILjava/lang/StringBuilder;Ljava/lang/String;IC)V

    :cond_fe
    if-lez v4, :cond_107

    const/16 p2, 0x57

    const-string v9, "system"

    invoke-static {v7, v8, v9, v4, p2}, Lxcrash/l;->d(ILjava/lang/StringBuilder;Ljava/lang/String;IC)V

    :cond_107
    if-lez v5, :cond_110

    const/16 p2, 0x49

    const-string v5, "events"

    invoke-static {v7, v8, v5, v4, p2}, Lxcrash/l;->d(ILjava/lang/StringBuilder;Ljava/lang/String;IC)V

    :cond_110
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_11e
    iget-boolean p2, p0, Lxcrash/j;->k:Z

    if-eqz p2, :cond_1a2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "open files:\n"

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_129} :catch_26e
    .catchall {:try_start_db .. :try_end_129} :catchall_26c

    const/16 v4, 0xa

    :try_start_12b
    new-instance v5, Ljava/io/File;

    const-string v7, "/proc/self/fd"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Lxcrash/k;

    invoke-direct {v7}, Lxcrash/k;-><init>()V

    invoke-virtual {v5, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_194

    array-length v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_140
    if-ge v8, v7, :cond_17c

    aget-object v10, v5, v8
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_144} :catch_194
    .catchall {:try_start_12b .. :try_end_144} :catchall_26c

    :try_start_144
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_14c} :catch_14d
    .catchall {:try_start_144 .. :try_end_14c} :catchall_26c

    goto :goto_14e

    :catch_14d
    const/4 v11, 0x0

    :goto_14e
    :try_start_14e
    const-string v12, "    fd "

    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_168

    const-string v10, "???"

    goto :goto_16c

    :cond_168
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :goto_16c
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x400

    if-le v9, v10, :cond_179

    goto :goto_17c

    :cond_179
    add-int/lit8 v8, v8, 0x1

    goto :goto_140

    :cond_17c
    :goto_17c
    array-length v7, v5

    const/16 v8, 0x400

    if-le v7, v8, :cond_186

    const-string v7, "    ......\n"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_186
    const-string v7, "    (number of FDs: "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_194} :catch_194
    .catchall {:try_start_14e .. :try_end_194} :catchall_26c

    :catch_194
    :cond_194
    :try_start_194
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_1a2
    iget-boolean p2, p0, Lxcrash/j;->l:Z

    if-eqz p2, :cond_228

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt p2, v4, :cond_1af

    const-string p2, "network info:\nNot supported on Android Q (API level 29) and later.\n\n"

    goto :goto_221

    :cond_1af
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network info:\n TCP over IPv4 (From: /proc/PID/net/tcp)\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/proc/self/net/tcp"

    const/16 v5, 0x400

    invoke-static {v5, v4}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-\n TCP over IPv6 (From: /proc/PID/net/tcp6)\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/proc/self/net/tcp6"

    invoke-static {v5, v4}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-\n UDP over IPv4 (From: /proc/PID/net/udp)\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/proc/self/net/udp"

    invoke-static {v5, v4}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-\n UDP over IPv6 (From: /proc/PID/net/udp6)\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/proc/self/net/udp6"

    invoke-static {v5, v4}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-\n ICMP in IPv4 (From: /proc/PID/net/icmp)\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    const-string v5, "/proc/self/net/icmp"

    invoke-static {v4, v5}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-\n ICMP in IPv6 (From: /proc/PID/net/icmp6)\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/proc/self/net/icmp6"

    invoke-static {v4, v5}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-\n UNIX domain (From: /proc/PID/net/unix)\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/proc/self/net/unix"

    invoke-static {v4, v5}, Lxcrash/l;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_221
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_228
    invoke-static {}, Lxcrash/l;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/io/RandomAccessFile;->write([B)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "foreground:\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lxcrash/b;->c:Lxcrash/b;

    iget-boolean v3, v3, Lxcrash/b;->b:Z

    if-eqz v3, :cond_246

    const-string v3, "yes"

    goto :goto_248

    :cond_246
    const-string v3, "no"

    :goto_248
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/io/RandomAccessFile;->write([B)V

    iget-boolean p2, p0, Lxcrash/j;->m:Z

    if-eqz p2, :cond_268

    invoke-virtual {p0, p1}, Lxcrash/j;->b(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_268} :catch_26e
    .catchall {:try_start_194 .. :try_end_268} :catchall_26c

    :cond_268
    :goto_268
    :try_start_268
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_26b
    .catch Ljava/lang/Exception; {:try_start_268 .. :try_end_26b} :catch_28a

    goto :goto_28a

    :catchall_26c
    move-exception p1

    goto :goto_284

    :catch_26e
    move-exception p1

    goto :goto_275

    :catchall_270
    move-exception p1

    const/4 v6, 0x0

    goto :goto_284

    :catch_273
    move-exception p1

    const/4 v6, 0x0

    :goto_275
    :try_start_275
    sget-object p2, Lxcrash/XCrash;->c:Lxcrash/i;

    const-string v0, "JavaCrashHandler write log file failed"

    check-cast p2, La/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_281
    .catchall {:try_start_275 .. :try_end_281} :catchall_26c

    if-eqz v6, :cond_28a

    goto :goto_268

    :goto_284
    if-eqz v6, :cond_289

    :try_start_286
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_289
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_289} :catch_289

    :catch_289
    :cond_289
    throw p1

    :catch_28a
    :cond_28a
    :goto_28a
    return-void
.end method

.method public final d(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZZZI[Ljava/lang/String;Lxcrash/g;)V
    .registers 21

    move-object v1, p0

    move v0, p1

    iput v0, v1, Lxcrash/j;->b:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "unknown"

    goto :goto_e

    :cond_d
    move-object v0, p2

    :goto_e
    iput-object v0, v1, Lxcrash/j;->c:Ljava/lang/String;

    move-object v0, p4

    iput-object v0, v1, Lxcrash/j;->d:Ljava/lang/String;

    move-object v0, p5

    iput-object v0, v1, Lxcrash/j;->e:Ljava/lang/String;

    move v0, p7

    iput-boolean v0, v1, Lxcrash/j;->f:Z

    move-object v0, p6

    iput-object v0, v1, Lxcrash/j;->g:Ljava/lang/String;

    move v0, p8

    iput v0, v1, Lxcrash/j;->h:I

    move v0, p9

    iput v0, v1, Lxcrash/j;->i:I

    move v0, p10

    iput v0, v1, Lxcrash/j;->j:I

    move v0, p11

    iput-boolean v0, v1, Lxcrash/j;->k:Z

    move/from16 v0, p12

    iput-boolean v0, v1, Lxcrash/j;->l:Z

    move/from16 v0, p13

    iput-boolean v0, v1, Lxcrash/j;->m:Z

    move/from16 v0, p14

    iput v0, v1, Lxcrash/j;->n:I

    move-object/from16 v0, p15

    iput-object v0, v1, Lxcrash/j;->o:[Ljava/lang/String;

    if-nez p3, :cond_54

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, v1, Lxcrash/j;->p:Ljava/lang/Thread$UncaughtExceptionHandler;

    :try_start_40
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_54

    :catch_44
    move-exception v0

    move-object v2, v0

    sget-object v0, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v0, La/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "xcrash"

    const-string v3, "JavaCrashHandler setDefaultUncaughtExceptionHandler failed"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_54
    :goto_54
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    iget-object v0, p0, Lxcrash/j;->p:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_7

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_7
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lxcrash/j;->c(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_1a

    :catch_b
    move-exception v0

    sget-object v1, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v1, La/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "xcrash"

    const-string v2, "JavaCrashHandler handleException failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    iget-boolean v0, p0, Lxcrash/j;->f:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lxcrash/j;->p:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_35

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_35

    :cond_26
    sget-object p1, Lxcrash/b;->c:Lxcrash/b;

    invoke-virtual {p1}, Lxcrash/b;->a()V

    iget p1, p0, Lxcrash/j;->b:I

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :cond_35
    :goto_35
    return-void
.end method
