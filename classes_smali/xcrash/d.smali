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

    .line 1
    new-instance v0, Lxcrash/d;

    .line 3
    invoke-direct {v0}, Lxcrash/d;-><init>()V

    .line 6
    sput-object v0, Lxcrash/d;->i:Lxcrash/d;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lxcrash/d;->a:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lxcrash/d;->b:I

    .line 10
    iput v0, p0, Lxcrash/d;->c:I

    .line 12
    iput v0, p0, Lxcrash/d;->d:I

    .line 14
    iput v0, p0, Lxcrash/d;->e:I

    .line 16
    iput v0, p0, Lxcrash/d;->f:I

    .line 18
    iput v0, p0, Lxcrash/d;->g:I

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 25
    iput-object v0, p0, Lxcrash/d;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Z
    .registers 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    const/16 v0, 0x400

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_6
    new-array v4, v0, [B

    .line 9
    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 12
    iget v5, v1, Lxcrash/d;->f:I

    .line 14
    int-to-long v5, v5

    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    .line 18
    move-result-wide v7

    .line 19
    iget v9, v1, Lxcrash/d;->f:I

    .line 21
    mul-int/2addr v9, v0

    .line 22
    int-to-long v9, v9

    .line 23
    cmp-long v0, v7, v9

    .line 25
    const-wide/16 v9, 0x0

    .line 27
    const-wide/16 v11, 0x400

    .line 29
    if-lez v0, :cond_29

    .line 31
    div-long v5, v7, v11

    .line 33
    rem-long v13, v7, v11

    .line 35
    cmp-long v0, v13, v9

    .line 37
    if-eqz v0, :cond_29

    .line 39
    const-wide/16 v13, 0x1

    .line 41
    add-long/2addr v5, v13

    .line 42
    :cond_29
    new-instance v13, Ljava/io/FileOutputStream;

    .line 44
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v13, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_32} :catch_a0
    .catchall {:try_start_6 .. :try_end_32} :catchall_9e

    .line 51
    move v0, v2

    .line 52
    :goto_33
    int-to-long v14, v0

    .line 53
    cmp-long v3, v14, v5

    .line 55
    if-gez v3, :cond_50

    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 59
    int-to-long v14, v0

    .line 60
    cmp-long v3, v14, v5

    .line 62
    if-nez v3, :cond_4c

    .line 64
    :try_start_3f
    rem-long v14, v7, v11

    .line 66
    cmp-long v3, v14, v9

    .line 68
    if-eqz v3, :cond_4c

    .line 70
    rem-long v14, v7, v11

    .line 72
    long-to-int v3, v14

    .line 73
    invoke-virtual {v13, v4, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 76
    goto :goto_33

    .line 77
    :cond_4c
    invoke-virtual {v13, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 80
    goto :goto_33

    .line 81
    :cond_50
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 84
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 86
    const-string v3, "%s/%s_%020d%s"

    .line 88
    const/4 v4, 0x4

    .line 89
    new-array v4, v4, [Ljava/lang/Object;

    .line 91
    iget-object v5, v1, Lxcrash/d;->a:Ljava/lang/String;

    .line 93
    aput-object v5, v4, v2

    .line 95
    const-string v5, "placeholder"

    .line 97
    const/4 v6, 0x1

    .line 98
    aput-object v5, v4, v6

    .line 100
    const/4 v5, 0x2

    .line 101
    new-instance v6, Ljava/util/Date;

    .line 103
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 106
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 109
    move-result-wide v6

    .line 110
    const-wide/16 v8, 0x3e8

    .line 112
    mul-long/2addr v6, v8

    .line 113
    invoke-virtual/range {p0 .. p0}, Lxcrash/d;->f()I

    .line 116
    move-result v8

    .line 117
    int-to-long v8, v8

    .line 118
    add-long/2addr v6, v8

    .line 119
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    move-result-object v6

    .line 123
    aput-object v6, v4, v5

    .line 125
    const/4 v5, 0x3

    .line 126
    const-string v6, ".clean.xcrash"

    .line 128
    aput-object v6, v4, v5

    .line 130
    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    new-instance v3, Ljava/io/File;

    .line 136
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_8a} :catch_99
    .catchall {:try_start_3f .. :try_end_8a} :catchall_96

    .line 139
    move-object/from16 v4, p1

    .line 141
    :try_start_8c
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 144
    move-result v2
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_90} :catch_94
    .catchall {:try_start_8c .. :try_end_90} :catchall_96

    .line 145
    :try_start_90
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_b6

    .line 148
    goto :goto_b6

    .line 149
    :catch_94
    move-exception v0

    .line 150
    goto :goto_9c

    .line 151
    :catchall_96
    move-exception v0

    .line 152
    move-object v3, v13

    .line 153
    goto :goto_bc

    .line 154
    :catch_99
    move-exception v0

    .line 155
    move-object/from16 v4, p1

    .line 157
    :goto_9c
    move-object v3, v13

    .line 158
    goto :goto_a3

    .line 159
    :catchall_9e
    move-exception v0

    .line 160
    goto :goto_bc

    .line 161
    :catch_a0
    move-exception v0

    .line 162
    move-object/from16 v4, p1

    .line 164
    :goto_a3
    :try_start_a3
    sget-object v5, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 166
    const-string v6, "xcrash"

    .line 168
    const-string v7, "FileManager cleanTheDirtyFile failed"

    .line 170
    check-cast v5, La/b;

    .line 172
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b1
    .catchall {:try_start_a3 .. :try_end_b1} :catchall_9e

    .line 178
    if-eqz v3, :cond_b6

    .line 180
    :try_start_b3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b6} :catch_b6

    .line 183
    :catch_b6
    :cond_b6
    :goto_b6
    if-nez v2, :cond_bb

    .line 185
    :try_start_b8
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bb} :catch_bb

    .line 188
    :catch_bb
    :cond_bb
    return v2

    .line 189
    :goto_bc
    if-eqz v3, :cond_c1

    .line 191
    :try_start_be
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_c1

    .line 194
    :catch_c1
    :cond_c1
    throw v0
.end method

.method public final b(Ljava/lang/String;)Ljava/io/File;
    .registers 9

    .line 1
    iget-object v0, p0, Lxcrash/d;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    invoke-static {v0}, Lxcrash/l;->a(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    return-object v1

    .line 14
    :cond_d
    new-instance v0, Ljava/io/File;

    .line 16
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance p1, Ljava/io/File;

    .line 21
    iget-object v2, p0, Lxcrash/d;->a:Ljava/lang/String;

    .line 23
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v2, Lxcrash/d$d;

    .line 28
    invoke-direct {v2, p0}, Lxcrash/d$d;-><init>(Lxcrash/d;)V

    .line 31
    invoke-virtual {p1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 34
    move-result-object p1

    .line 35
    const-string v2, "xcrash"

    .line 37
    if-eqz p1, :cond_47

    .line 39
    array-length v3, p1

    .line 40
    :goto_27
    if-lez v3, :cond_47

    .line 42
    add-int/lit8 v4, v3, -0x1

    .line 44
    aget-object v4, p1, v4

    .line 46
    :try_start_2d
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 49
    move-result v5
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_34

    .line 50
    if-eqz v5, :cond_41

    .line 52
    return-object v0

    .line 53
    :catch_34
    move-exception v5

    .line 54
    sget-object v6, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 56
    check-cast v6, La/b;

    .line 58
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    const-string v6, "FileManager createLogFile by renameTo failed"

    .line 63
    invoke-static {v2, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :cond_41
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 69
    add-int/lit8 v3, v3, -0x1

    .line 71
    goto :goto_27

    .line 72
    :cond_47
    :try_start_47
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_4e

    .line 78
    return-object v0

    .line 79
    :cond_4e
    sget-object p1, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 81
    const-string v0, "FileManager createLogFile by createNewFile failed, file already exists"

    .line 83
    check-cast p1, La/b;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5a} :catch_5b

    .line 91
    return-object v1

    .line 92
    :catch_5b
    move-exception p1

    .line 93
    sget-object v0, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 95
    check-cast v0, La/b;

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    const-string v0, "FileManager createLogFile by createNewFile failed"

    .line 102
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    return-object v1
.end method

.method public final c()V
    .registers 5

    .line 1
    const-string v0, "xcrash"

    .line 3
    iget-object v1, p0, Lxcrash/d;->a:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Lxcrash/l;->a(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    new-instance v1, Ljava/io/File;

    .line 14
    iget-object v2, p0, Lxcrash/d;->a:Ljava/lang/String;

    .line 16
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    :try_start_12
    iget v2, p0, Lxcrash/d;->c:I

    .line 21
    const-string v3, ".native.xcrash"

    .line 23
    invoke-virtual {p0, v1, v2, v3}, Lxcrash/d;->e(Ljava/io/File;ILjava/lang/String;)Z

    .line 26
    iget v2, p0, Lxcrash/d;->b:I

    .line 28
    const-string v3, ".java.xcrash"

    .line 30
    invoke-virtual {p0, v1, v2, v3}, Lxcrash/d;->e(Ljava/io/File;ILjava/lang/String;)Z

    .line 33
    iget v2, p0, Lxcrash/d;->d:I

    .line 35
    const-string v3, ".anr.xcrash"

    .line 37
    invoke-virtual {p0, v1, v2, v3}, Lxcrash/d;->e(Ljava/io/File;ILjava/lang/String;)Z

    .line 40
    const/4 v2, 0x1

    .line 41
    const-string v3, ".trace.xcrash"

    .line 43
    invoke-virtual {p0, v1, v2, v3}, Lxcrash/d;->e(Ljava/io/File;ILjava/lang/String;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2d} :catch_2e

    .line 46
    goto :goto_3b

    .line 47
    :catch_2e
    move-exception v2

    .line 48
    sget-object v3, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 50
    check-cast v3, La/b;

    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    const-string v3, "FileManager doMaintainTombstone failed"

    .line 57
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :goto_3b
    :try_start_3b
    invoke-virtual {p0, v1}, Lxcrash/d;->d(Ljava/io/File;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 63
    goto :goto_4c

    .line 64
    :catch_3f
    move-exception v1

    .line 65
    sget-object v2, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 67
    check-cast v2, La/b;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    const-string v2, "FileManager doMaintainPlaceholder failed"

    .line 74
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :goto_4c
    return-void
.end method

.method public final d(Ljava/io/File;)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    new-instance v2, Lxcrash/d$f;

    .line 7
    invoke-direct {v2, v0}, Lxcrash/d$f;-><init>(Lxcrash/d;)V

    .line 10
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    new-instance v3, Lxcrash/d$g;

    .line 19
    invoke-direct {v3, v0}, Lxcrash/d$g;-><init>(Lxcrash/d;)V

    .line 22
    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 25
    move-result-object v3

    .line 26
    if-nez v3, :cond_1c

    .line 28
    return-void

    .line 29
    :cond_1c
    array-length v4, v2

    .line 30
    array-length v5, v3

    .line 31
    const/4 v6, 0x0

    .line 32
    move v7, v6

    .line 33
    :goto_20
    iget v8, v0, Lxcrash/d;->e:I

    .line 35
    if-ge v4, v8, :cond_87

    .line 37
    const/4 v8, 0x2

    .line 38
    if-lez v5, :cond_34

    .line 40
    add-int/lit8 v5, v5, -0x1

    .line 42
    aget-object v9, v3, v5

    .line 44
    invoke-virtual {v0, v9}, Lxcrash/d;->a(Ljava/io/File;)Z

    .line 47
    move-result v9

    .line 48
    if-eqz v9, :cond_7b

    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 52
    goto :goto_7b

    .line 53
    :cond_34
    :try_start_34
    new-instance v9, Ljava/io/File;

    .line 55
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 57
    const-string v11, "%s/%s_%020d%s"

    .line 59
    const/4 v12, 0x4

    .line 60
    new-array v12, v12, [Ljava/lang/Object;

    .line 62
    iget-object v13, v0, Lxcrash/d;->a:Ljava/lang/String;

    .line 64
    aput-object v13, v12, v6

    .line 66
    const-string v13, "placeholder"

    .line 68
    const/4 v14, 0x1

    .line 69
    aput-object v13, v12, v14

    .line 71
    new-instance v13, Ljava/util/Date;

    .line 73
    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 76
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    .line 79
    move-result-wide v13

    .line 80
    const-wide/16 v15, 0x3e8

    .line 82
    mul-long/2addr v13, v15

    .line 83
    invoke-virtual/range {p0 .. p0}, Lxcrash/d;->f()I

    .line 86
    move-result v15
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_56} :catch_7b

    .line 87
    move/from16 v17, v7

    .line 89
    int-to-long v6, v15

    .line 90
    add-long/2addr v13, v6

    .line 91
    :try_start_5a
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    move-result-object v6

    .line 95
    aput-object v6, v12, v8

    .line 97
    const/4 v6, 0x3

    .line 98
    const-string v7, ".dirty.xcrash"

    .line 100
    aput-object v7, v12, v6

    .line 102
    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    move-result-object v6

    .line 106
    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_7d

    .line 115
    invoke-virtual {v0, v9}, Lxcrash/d;->a(Ljava/io/File;)Z

    .line 118
    move-result v6
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_76} :catch_7d

    .line 119
    if-eqz v6, :cond_7d

    .line 121
    add-int/lit8 v4, v4, 0x1

    .line 123
    goto :goto_7d

    .line 124
    :catch_7b
    :cond_7b
    :goto_7b
    move/from16 v17, v7

    .line 126
    :catch_7d
    :cond_7d
    :goto_7d
    add-int/lit8 v7, v17, 0x1

    .line 128
    iget v6, v0, Lxcrash/d;->e:I

    .line 130
    mul-int/2addr v6, v8

    .line 131
    if-le v7, v6, :cond_85

    .line 133
    goto :goto_89

    .line 134
    :cond_85
    const/4 v6, 0x0

    .line 135
    goto :goto_20

    .line 136
    :cond_87
    move/from16 v17, v7

    .line 138
    :goto_89
    if-lez v7, :cond_9d

    .line 140
    new-instance v2, Lxcrash/d$h;

    .line 142
    invoke-direct {v2, v0}, Lxcrash/d$h;-><init>(Lxcrash/d;)V

    .line 145
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 148
    move-result-object v2

    .line 149
    new-instance v3, Lxcrash/d$a;

    .line 151
    invoke-direct {v3, v0}, Lxcrash/d$a;-><init>(Lxcrash/d;)V

    .line 154
    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 157
    move-result-object v3

    .line 158
    :cond_9d
    if-eqz v2, :cond_b3

    .line 160
    array-length v1, v2

    .line 161
    iget v4, v0, Lxcrash/d;->e:I

    .line 163
    if-le v1, v4, :cond_b3

    .line 165
    const/4 v1, 0x0

    .line 166
    :goto_a5
    array-length v4, v2

    .line 167
    iget v5, v0, Lxcrash/d;->e:I

    .line 169
    sub-int/2addr v4, v5

    .line 170
    if-ge v1, v4, :cond_b3

    .line 172
    aget-object v4, v2, v1

    .line 174
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 179
    goto :goto_a5

    .line 180
    :cond_b3
    if-eqz v3, :cond_c1

    .line 182
    array-length v1, v3

    .line 183
    const/4 v6, 0x0

    .line 184
    :goto_b7
    if-ge v6, v1, :cond_c1

    .line 186
    aget-object v2, v3, v6

    .line 188
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 191
    add-int/lit8 v6, v6, 0x1

    .line 193
    goto :goto_b7

    .line 194
    :cond_c1
    return-void
.end method

.method public final e(Ljava/io/File;ILjava/lang/String;)Z
    .registers 7

    .line 1
    new-instance v0, Lxcrash/e;

    .line 3
    invoke-direct {v0, p3}, Lxcrash/e;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 9
    move-result-object p1

    .line 10
    const/4 p3, 0x1

    .line 11
    if-eqz p1, :cond_2b

    .line 13
    array-length v0, p1

    .line 14
    if-le v0, p2, :cond_2b

    .line 16
    if-lez p2, :cond_19

    .line 18
    new-instance v0, Lxcrash/f;

    .line 20
    invoke-direct {v0}, Lxcrash/f;-><init>()V

    .line 23
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    move v1, v0

    .line 28
    :goto_1b
    array-length v2, p1

    .line 29
    sub-int/2addr v2, p2

    .line 30
    if-ge v1, v2, :cond_2b

    .line 32
    aget-object v2, p1, v1

    .line 34
    invoke-virtual {p0, v2}, Lxcrash/d;->j(Ljava/io/File;)Z

    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_28

    .line 40
    move p3, v0

    .line 41
    :cond_28
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_1b

    .line 44
    :cond_2b
    return p3
.end method

.method public final f()I
    .registers 4

    .line 1
    iget-object v0, p0, Lxcrash/d;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x3e7

    .line 9
    if-lt v0, v1, :cond_10

    .line 11
    iget-object v1, p0, Lxcrash/d;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 17
    :cond_10
    return v0
.end method

.method public final g(Ljava/lang/String;IIIIII)V
    .registers 15

    .line 1
    iput-object p1, p0, Lxcrash/d;->a:Ljava/lang/String;

    .line 2
    iput p2, p0, Lxcrash/d;->b:I

    .line 3
    iput p3, p0, Lxcrash/d;->c:I

    .line 4
    iput p4, p0, Lxcrash/d;->d:I

    .line 5
    iput p5, p0, Lxcrash/d;->e:I

    .line 6
    iput p6, p0, Lxcrash/d;->f:I

    .line 7
    iput p7, p0, Lxcrash/d;->g:I

    .line 8
    :try_start_e
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_e0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_21

    goto/16 :goto_e0

    .line 10
    :cond_21
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_28

    return-void

    .line 11
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

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 13
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tombstone_"

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    const-string v4, ".java.xcrash"

    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    add-int/lit8 p5, p5, 0x1

    goto :goto_90

    :cond_52
    const-string v4, ".native.xcrash"

    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    add-int/lit8 p6, p6, 0x1

    goto :goto_90

    :cond_5d
    const-string v4, ".anr.xcrash"

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    add-int/lit8 p7, p7, 0x1

    goto :goto_90

    :cond_68
    const-string v4, ".trace.xcrash"

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    :cond_73
    const-string v4, "placeholder_"

    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_90

    const-string v4, ".clean.xcrash"

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    :cond_86
    const-string v4, ".dirty.xcrash"

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    add-int/lit8 v2, v2, 0x1

    :cond_90
    :goto_90
    add-int/lit8 p4, p4, 0x1

    goto :goto_31

    .line 22
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

    .line 23
    iput p2, p0, Lxcrash/d;->g:I

    goto :goto_f0

    :cond_ac
    add-int/lit8 v3, p1, 0xa

    if-gt p5, v3, :cond_da

    .line 24
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

    .line 25
    :cond_d7
    iput p3, p0, Lxcrash/d;->g:I

    goto :goto_f0

    .line 26
    :cond_da
    :goto_da
    invoke-virtual {p0}, Lxcrash/d;->c()V

    .line 27
    iput p2, p0, Lxcrash/d;->g:I
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_df} :catch_e1

    goto :goto_f0

    :cond_e0
    :goto_e0
    return-void

    :catch_e1
    move-exception p1

    .line 28
    sget-object p2, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 29
    check-cast p2, La/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "xcrash"

    const-string p3, "FileManager init failed"

    .line 30
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f0
    :goto_f0
    return-void
.end method

.method public final h()V
    .registers 5

    .line 1
    iget-object v0, p0, Lxcrash/d;->a:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_3b

    .line 5
    iget v0, p0, Lxcrash/d;->g:I

    .line 7
    if-gez v0, :cond_9

    .line 9
    goto :goto_3b

    .line 10
    :cond_9
    :try_start_9
    const-string v1, "xcrash_file_mgr"

    .line 12
    if-nez v0, :cond_1b

    .line 14
    new-instance v0, Ljava/lang/Thread;

    .line 16
    new-instance v2, Lxcrash/d$b;

    .line 18
    invoke-direct {v2, p0}, Lxcrash/d$b;-><init>(Lxcrash/d;)V

    .line 21
    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 27
    goto :goto_3b

    .line 28
    :cond_1b
    new-instance v0, Ljava/util/Timer;

    .line 30
    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v1, Lxcrash/d$c;

    .line 35
    invoke-direct {v1, p0}, Lxcrash/d$c;-><init>(Lxcrash/d;)V

    .line 38
    iget v2, p0, Lxcrash/d;->g:I

    .line 40
    int-to-long v2, v2

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2b} :catch_2c

    .line 44
    goto :goto_3b

    .line 45
    :catch_2c
    move-exception v0

    .line 46
    sget-object v1, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 48
    check-cast v1, La/b;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    const-string v1, "xcrash"

    .line 55
    const-string v2, "FileManager maintain start failed"

    .line 57
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :cond_3b
    :goto_3b
    return-void
.end method

.method public final i()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lxcrash/d;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lxcrash/l;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    new-instance v0, Ljava/io/File;

    .line 13
    iget-object v2, p0, Lxcrash/d;->a:Ljava/lang/String;

    .line 15
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    :try_start_11
    const-string v2, ".anr.xcrash"

    .line 20
    iget v3, p0, Lxcrash/d;->d:I

    .line 22
    invoke-virtual {p0, v0, v3, v2}, Lxcrash/d;->e(Ljava/io/File;ILjava/lang/String;)Z

    .line 25
    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_1a

    .line 26
    return v0

    .line 27
    :catch_1a
    move-exception v0

    .line 28
    sget-object v2, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 30
    check-cast v2, La/b;

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    const-string v2, "xcrash"

    .line 37
    const-string v3, "FileManager maintainAnr failed"

    .line 39
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    return v1
.end method

.method public final j(Ljava/io/File;)Z
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    iget-object v1, p0, Lxcrash/d;->a:Ljava/lang/String;

    .line 7
    if-eqz v1, :cond_88

    .line 9
    iget v1, p0, Lxcrash/d;->e:I

    .line 11
    if-gtz v1, :cond_e

    .line 13
    goto/16 :goto_88

    .line 15
    :cond_e
    :try_start_e
    new-instance v1, Ljava/io/File;

    .line 17
    iget-object v2, p0, Lxcrash/d;->a:Ljava/lang/String;

    .line 19
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v2, Lxcrash/d$e;

    .line 24
    invoke-direct {v2, p0}, Lxcrash/d$e;-><init>(Lxcrash/d;)V

    .line 27
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_2b

    .line 33
    array-length v1, v1

    .line 34
    iget v2, p0, Lxcrash/d;->e:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_73

    .line 36
    if-lt v1, v2, :cond_2b

    .line 38
    :try_start_25
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 41
    move-result p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_29} :catch_2a

    .line 42
    return p1

    .line 43
    :catch_2a
    return v0

    .line 44
    :cond_2b
    :try_start_2b
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 46
    const-string v2, "%s/%s_%020d%s"

    .line 48
    const/4 v3, 0x4

    .line 49
    new-array v3, v3, [Ljava/lang/Object;

    .line 51
    iget-object v4, p0, Lxcrash/d;->a:Ljava/lang/String;

    .line 53
    aput-object v4, v3, v0

    .line 55
    const/4 v4, 0x1

    .line 56
    const-string v5, "placeholder"

    .line 58
    aput-object v5, v3, v4

    .line 60
    const/4 v4, 0x2

    .line 61
    new-instance v5, Ljava/util/Date;

    .line 63
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 66
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 69
    move-result-wide v5

    .line 70
    const-wide/16 v7, 0x3e8

    .line 72
    mul-long/2addr v5, v7

    .line 73
    invoke-virtual {p0}, Lxcrash/d;->f()I

    .line 76
    move-result v7

    .line 77
    int-to-long v7, v7

    .line 78
    add-long/2addr v5, v7

    .line 79
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    move-result-object v5

    .line 83
    aput-object v5, v3, v4

    .line 85
    const/4 v4, 0x3

    .line 86
    const-string v5, ".dirty.xcrash"

    .line 88
    aput-object v5, v3, v4

    .line 90
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    new-instance v2, Ljava/io/File;

    .line 96
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 102
    move-result v1
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_66} :catch_73

    .line 103
    if-nez v1, :cond_6e

    .line 105
    :try_start_68
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 108
    move-result p1
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6c} :catch_6d

    .line 109
    return p1

    .line 110
    :catch_6d
    return v0

    .line 111
    :cond_6e
    :try_start_6e
    invoke-virtual {p0, v2}, Lxcrash/d;->a(Ljava/io/File;)Z

    .line 114
    move-result p1
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_72} :catch_73

    .line 115
    return p1

    .line 116
    :catch_73
    move-exception v1

    .line 117
    sget-object v2, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 119
    check-cast v2, La/b;

    .line 121
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    const-string v2, "xcrash"

    .line 126
    const-string v3, "FileManager recycleLogFile failed"

    .line 128
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :try_start_82
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 134
    move-result p1
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_86} :catch_87

    .line 135
    return p1

    .line 136
    :catch_87
    return v0

    .line 137
    :cond_88
    :goto_88
    :try_start_88
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 140
    move-result p1
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8c} :catch_8d

    .line 141
    return p1

    .line 142
    :catch_8d
    return v0
.end method
