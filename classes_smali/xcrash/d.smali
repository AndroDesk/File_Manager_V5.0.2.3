.class public final Lxcrash/d;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field public static final i:Lxcrash/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lxcrash/d;

    invoke-direct {v0}, Lxcrash/d;-><init>()V

    sput-object v0, Lxcrash/d;->i:Lxcrash/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lxcrash/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lxcrash/d;->b:I

    iput v0, p0, Lxcrash/d;->c:I

    iput v0, p0, Lxcrash/d;->d:I

    iput v0, p0, Lxcrash/d;->e:I

    iput v0, p0, Lxcrash/d;->f:I

    iput v0, p0, Lxcrash/d;->g:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lxcrash/d;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Z
    .registers 18

    move-object/from16 v1, p0

    const/16 v0, 0x400

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    new-array v4, v0, [B

    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([BB)V

    iget v5, v1, Lxcrash/d;->f:I

    int-to-long v5, v5

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v7

    iget v9, v1, Lxcrash/d;->f:I

    mul-int/2addr v9, v0

    int-to-long v9, v9

    cmp-long v0, v7, v9

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x400

    if-lez v0, :cond_29

    div-long v5, v7, v11

    rem-long v13, v7, v11

    cmp-long v0, v13, v9

    if-eqz v0, :cond_29

    const-wide/16 v13, 0x1

    add-long/2addr v5, v13

    :cond_29
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v13, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_32} :catch_a0
    .catchall {:try_start_6 .. :try_end_32} :catchall_9e

    move v0, v2

    :goto_33
    int-to-long v14, v0

    cmp-long v3, v14, v5

    if-gez v3, :cond_50

    add-int/lit8 v0, v0, 0x1

    int-to-long v14, v0

    cmp-long v3, v14, v5

    if-nez v3, :cond_4c

    :try_start_3f
    rem-long v14, v7, v11

    cmp-long v3, v14, v9

    if-eqz v3, :cond_4c

    rem-long v14, v7, v11

    long-to-int v3, v14

    invoke-virtual {v13, v4, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_33

    :cond_4c
    invoke-virtual {v13, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_33

    :cond_50
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s/%s_%020d%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lxcrash/d;->a:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "placeholder"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual/range {p0 .. p0}, Lxcrash/d;->f()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, ".clean.xcrash"

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_8a} :catch_99
    .catchall {:try_start_3f .. :try_end_8a} :catchall_96

    move-object/from16 v4, p1

    :try_start_8c
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_90} :catch_94
    .catchall {:try_start_8c .. :try_end_90} :catchall_96

    :try_start_90
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_b6

    goto :goto_b6

    :catch_94
    move-exception v0

    goto :goto_9c

    :catchall_96
    move-exception v0

    move-object v3, v13

    goto :goto_bc

    :catch_99
    move-exception v0

    move-object/from16 v4, p1

    :goto_9c
    move-object v3, v13

    goto :goto_a3

    :catchall_9e
    move-exception v0

    goto :goto_bc

    :catch_a0
    move-exception v0

    move-object/from16 v4, p1

    :goto_a3
    :try_start_a3
    sget-object v5, Lxcrash/XCrash;->c:Lxcrash/i;

    const-string v6, "xcrash"

    const-string v7, "FileManager cleanTheDirtyFile failed"

    check-cast v5, La/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b1
    .catchall {:try_start_a3 .. :try_end_b1} :catchall_9e

    if-eqz v3, :cond_b6

    :try_start_b3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b6} :catch_b6

    :catch_b6
    :cond_b6
    :goto_b6
    if-nez v2, :cond_bb

    :try_start_b8
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bb} :catch_bb

    :catch_bb
    :cond_bb
    return v2

    :goto_bc
    if-eqz v3, :cond_c1

    :try_start_be
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_c1

    :catch_c1
    :cond_c1
    throw v0
.end method

.method public final b(Ljava/lang/String;)Ljava/io/File;
    .registers 9

    iget-object v0, p0, Lxcrash/d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-static {v0}, Lxcrash/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lxcrash/d;->a:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lxcrash/d$d;

    invoke-direct {v2, p0}, Lxcrash/d$d;-><init>(Lxcrash/d;)V

    invoke-virtual {p1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    const-string v2, "xcrash"

    if-eqz p1, :cond_47

    array-length v3, p1

    :goto_27
    if-lez v3, :cond_47

    add-int/lit8 v4, v3, -0x1

    aget-object v4, p1, v4

    :try_start_2d
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_34

    if-eqz v5, :cond_41

    return-object v0

    :catch_34
    move-exception v5

    sget-object v6, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v6, La/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "FileManager createLogFile by renameTo failed"

    invoke-static {v2, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_41
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_27

    :cond_47
    :try_start_47
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_4e

    return-object v0

    :cond_4e
    sget-object p1, Lxcrash/XCrash;->c:Lxcrash/i;

    const-string v0, "FileManager createLogFile by createNewFile failed, file already exists"

    check-cast p1, La/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5a} :catch_5b

    return-object v1

    :catch_5b
    move-exception p1

    sget-object v0, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v0, La/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "FileManager createLogFile by createNewFile failed"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final c()V
    .registers 5

    const-string v0, "xcrash"

    iget-object v1, p0, Lxcrash/d;->a:Ljava/lang/String;

    invoke-static {v1}, Lxcrash/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lxcrash/d;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_12
    iget v2, p0, Lxcrash/d;->c:I

    const-string v3, ".native.xcrash"

    invoke-virtual {p0, v1, v2, v3}, Lxcrash/d;->e(Ljava/io/File;ILjava/lang/String;)Z

    iget v2, p0, Lxcrash/d;->b:I

    const-string v3, ".java.xcrash"

    invoke-virtual {p0, v1, v2, v3}, Lxcrash/d;->e(Ljava/io/File;ILjava/lang/String;)Z

    iget v2, p0, Lxcrash/d;->d:I

    const-string v3, ".anr.xcrash"

    invoke-virtual {p0, v1, v2, v3}, Lxcrash/d;->e(Ljava/io/File;ILjava/lang/String;)Z

    const/4 v2, 0x1

    const-string v3, ".trace.xcrash"

    invoke-virtual {p0, v1, v2, v3}, Lxcrash/d;->e(Ljava/io/File;ILjava/lang/String;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2d} :catch_2e

    goto :goto_3b

    :catch_2e
    move-exception v2

    sget-object v3, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v3, La/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "FileManager doMaintainTombstone failed"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3b
    :try_start_3b
    invoke-virtual {p0, v1}, Lxcrash/d;->d(Ljava/io/File;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_4c

    :catch_3f
    move-exception v1

    sget-object v2, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v2, La/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "FileManager doMaintainPlaceholder failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    return-void
.end method

.method public final d(Ljava/io/File;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lxcrash/d$f;

    invoke-direct {v2, v0}, Lxcrash/d$f;-><init>(Lxcrash/d;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    new-instance v3, Lxcrash/d$g;

    invoke-direct {v3, v0}, Lxcrash/d$g;-><init>(Lxcrash/d;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1c

    return-void

    :cond_1c
    array-length v4, v2

    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_20
    iget v8, v0, Lxcrash/d;->e:I

    if-ge v4, v8, :cond_87

    const/4 v8, 0x2

    if-lez v5, :cond_34

    add-int/lit8 v5, v5, -0x1

    aget-object v9, v3, v5

    invoke-virtual {v0, v9}, Lxcrash/d;->a(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_7b

    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    :cond_34
    :try_start_34
    new-instance v9, Ljava/io/File;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%s/%s_%020d%s"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, v0, Lxcrash/d;->a:Ljava/lang/String;

    aput-object v13, v12, v6

    const-string v13, "placeholder"

    const/4 v14, 0x1

    aput-object v13, v12, v14

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    invoke-virtual/range {p0 .. p0}, Lxcrash/d;->f()I

    move-result v15
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_56} :catch_7b

    move/from16 v17, v7

    int-to-long v6, v15

    add-long/2addr v13, v6

    :try_start_5a
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v12, v8

    const/4 v6, 0x3

    const-string v7, ".dirty.xcrash"

    aput-object v7, v12, v6

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-virtual {v0, v9}, Lxcrash/d;->a(Ljava/io/File;)Z

    move-result v6
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_76} :catch_7d

    if-eqz v6, :cond_7d

    add-int/lit8 v4, v4, 0x1

    goto :goto_7d

    :catch_7b
    :cond_7b
    :goto_7b
    move/from16 v17, v7

    :catch_7d
    :cond_7d
    :goto_7d
    add-int/lit8 v7, v17, 0x1

    iget v6, v0, Lxcrash/d;->e:I

    mul-int/2addr v6, v8

    if-le v7, v6, :cond_85

    goto :goto_89

    :cond_85
    const/4 v6, 0x0

    goto :goto_20

    :cond_87
    move/from16 v17, v7

    :goto_89
    if-lez v7, :cond_9d

    new-instance v2, Lxcrash/d$h;

    invoke-direct {v2, v0}, Lxcrash/d$h;-><init>(Lxcrash/d;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    new-instance v3, Lxcrash/d$a;

    invoke-direct {v3, v0}, Lxcrash/d$a;-><init>(Lxcrash/d;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    :cond_9d
    if-eqz v2, :cond_b3

    array-length v1, v2

    iget v4, v0, Lxcrash/d;->e:I

    if-le v1, v4, :cond_b3

    const/4 v1, 0x0

    :goto_a5
    array-length v4, v2

    iget v5, v0, Lxcrash/d;->e:I

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_b3

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a5

    :cond_b3
    if-eqz v3, :cond_c1

    array-length v1, v3

    const/4 v6, 0x0

    :goto_b7
    if-ge v6, v1, :cond_c1

    aget-object v2, v3, v6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_b7

    :cond_c1
    return-void
.end method

.method public final e(Ljava/io/File;ILjava/lang/String;)Z
    .registers 7

    new-instance v0, Lxcrash/e;

    invoke-direct {v0, p3}, Lxcrash/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    const/4 p3, 0x1

    if-eqz p1, :cond_2b

    array-length v0, p1

    if-le v0, p2, :cond_2b

    if-lez p2, :cond_19

    new-instance v0, Lxcrash/f;

    invoke-direct {v0}, Lxcrash/f;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_19
    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    array-length v2, p1

    sub-int/2addr v2, p2

    if-ge v1, v2, :cond_2b

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lxcrash/d;->j(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_28

    move p3, v0

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2b
    return p3
.end method

.method public final f()I
    .registers 4

    iget-object v0, p0, Lxcrash/d;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0x3e7

    if-lt v0, v1, :cond_10

    iget-object v1, p0, Lxcrash/d;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_10
    return v0
.end method

.method public final g(Ljava/lang/String;IIIIII)V
    .registers 15

    iput-object p1, p0, Lxcrash/d;->a:Ljava/lang/String;

    iput p2, p0, Lxcrash/d;->b:I

    iput p3, p0, Lxcrash/d;->c:I

    iput p4, p0, Lxcrash/d;->d:I

    iput p5, p0, Lxcrash/d;->e:I

    iput p6, p0, Lxcrash/d;->f:I

    iput p7, p0, Lxcrash/d;->g:I

    :try_start_e
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_e0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_21

    goto/16 :goto_e0

    :cond_21
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_28

    return-void

    :cond_28
    array-length p2, p1

    const/4 p3, 0x0

    move p4, p3

    move p5, p4

    move p6, p5

    move p7, p6

    move v0, p7

    move v1, v0

    move v2, v1

    :goto_31
    if-ge p4, p2, :cond_93

    aget-object v3, p1, p4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tombstone_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    const-string v4, ".java.xcrash"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    add-int/lit8 p5, p5, 0x1

    goto :goto_90

    :cond_52
    const-string v4, ".native.xcrash"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    add-int/lit8 p6, p6, 0x1

    goto :goto_90

    :cond_5d
    const-string v4, ".anr.xcrash"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    add-int/lit8 p7, p7, 0x1

    goto :goto_90

    :cond_68
    const-string v4, ".trace.xcrash"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    :cond_73
    const-string v4, "placeholder_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_90

    const-string v4, ".clean.xcrash"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    :cond_86
    const-string v4, ".dirty.xcrash"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    add-int/lit8 v2, v2, 0x1

    :cond_90
    :goto_90
    add-int/lit8 p4, p4, 0x1

    goto :goto_31

    :cond_93
    iget p1, p0, Lxcrash/d;->b:I

    const/4 p2, -0x1

    const/4 p4, 0x1

    if-gt p5, p1, :cond_ac

    iget v3, p0, Lxcrash/d;->c:I

    if-gt p6, v3, :cond_ac

    iget v3, p0, Lxcrash/d;->d:I

    if-gt p7, v3, :cond_ac

    if-gt v0, p4, :cond_ac

    iget v3, p0, Lxcrash/d;->e:I

    if-ne v1, v3, :cond_ac

    if-nez v2, :cond_ac

    iput p2, p0, Lxcrash/d;->g:I

    goto :goto_f0

    :cond_ac
    add-int/lit8 v3, p1, 0xa

    if-gt p5, v3, :cond_da

    iget v3, p0, Lxcrash/d;->c:I

    add-int/lit8 v4, v3, 0xa

    if-gt p6, v4, :cond_da

    iget v4, p0, Lxcrash/d;->d:I

    add-int/lit8 v5, v4, 0xa

    if-gt p7, v5, :cond_da

    const/16 v5, 0xb

    if-gt v0, v5, :cond_da

    iget v5, p0, Lxcrash/d;->e:I

    add-int/lit8 v6, v5, 0xa

    if-gt v1, v6, :cond_da

    const/16 v6, 0xa

    if-le v2, v6, :cond_cb

    goto :goto_da

    :cond_cb
    if-gt p5, p1, :cond_d7

    if-gt p6, v3, :cond_d7

    if-gt p7, v4, :cond_d7

    if-gt v0, p4, :cond_d7

    if-gt v1, v5, :cond_d7

    if-lez v2, :cond_f0

    :cond_d7
    iput p3, p0, Lxcrash/d;->g:I

    goto :goto_f0

    :cond_da
    :goto_da
    invoke-virtual {p0}, Lxcrash/d;->c()V

    iput p2, p0, Lxcrash/d;->g:I
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_df} :catch_e1

    goto :goto_f0

    :cond_e0
    :goto_e0
    return-void

    :catch_e1
    move-exception p1

    sget-object p2, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast p2, La/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "xcrash"

    const-string p3, "FileManager init failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f0
    :goto_f0
    return-void
.end method

.method public final h()V
    .registers 5

    iget-object v0, p0, Lxcrash/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_3b

    iget v0, p0, Lxcrash/d;->g:I

    if-gez v0, :cond_9

    goto :goto_3b

    :cond_9
    :try_start_9
    const-string v1, "xcrash_file_mgr"

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lxcrash/d$b;

    invoke-direct {v2, p0}, Lxcrash/d$b;-><init>(Lxcrash/d;)V

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_3b

    :cond_1b
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    new-instance v1, Lxcrash/d$c;

    invoke-direct {v1, p0}, Lxcrash/d$c;-><init>(Lxcrash/d;)V

    iget v2, p0, Lxcrash/d;->g:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2b} :catch_2c

    goto :goto_3b

    :catch_2c
    move-exception v0

    sget-object v1, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v1, La/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "xcrash"

    const-string v2, "FileManager maintain start failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3b
    :goto_3b
    return-void
.end method

.method public final i()Z
    .registers 5

    iget-object v0, p0, Lxcrash/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lxcrash/l;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lxcrash/d;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_11
    const-string v2, ".anr.xcrash"

    iget v3, p0, Lxcrash/d;->d:I

    invoke-virtual {p0, v0, v3, v2}, Lxcrash/d;->e(Ljava/io/File;ILjava/lang/String;)Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    move-exception v0

    sget-object v2, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v2, La/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "xcrash"

    const-string v3, "FileManager maintainAnr failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final j(Ljava/io/File;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lxcrash/d;->a:Ljava/lang/String;

    if-eqz v1, :cond_88

    iget v1, p0, Lxcrash/d;->e:I

    if-gtz v1, :cond_e

    goto/16 :goto_88

    :cond_e
    :try_start_e
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lxcrash/d;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lxcrash/d$e;

    invoke-direct {v2, p0}, Lxcrash/d$e;-><init>(Lxcrash/d;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2b

    array-length v1, v1

    iget v2, p0, Lxcrash/d;->e:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_73

    if-lt v1, v2, :cond_2b

    :try_start_25
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_29} :catch_2a

    return p1

    :catch_2a
    return v0

    :cond_2b
    :try_start_2b
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s/%s_%020d%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lxcrash/d;->a:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x1

    const-string v5, "placeholder"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-virtual {p0}, Lxcrash/d;->f()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, ".dirty.xcrash"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_66} :catch_73

    if-nez v1, :cond_6e

    :try_start_68
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6c} :catch_6d

    return p1

    :catch_6d
    return v0

    :cond_6e
    :try_start_6e
    invoke-virtual {p0, v2}, Lxcrash/d;->a(Ljava/io/File;)Z

    move-result p1
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_72} :catch_73

    return p1

    :catch_73
    move-exception v1

    sget-object v2, Lxcrash/XCrash;->c:Lxcrash/i;

    check-cast v2, La/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "xcrash"

    const-string v3, "FileManager recycleLogFile failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_82
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_86} :catch_87

    return p1

    :catch_87
    return v0

    :cond_88
    :goto_88
    :try_start_88
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8c} :catch_8d

    return p1

    :catch_8d
    return v0
.end method
