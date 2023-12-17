.class public final Lr4/e;
.super Ljava/lang/Object;
.source "ReLinkerInstance.java"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Lr4/c;

.field public final c:Lr4/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    new-instance v0, Lr4/f;

    invoke-direct {v0}, Lr4/f;-><init>()V

    new-instance v1, Lr4/a;

    invoke-direct {v1}, Lr4/a;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lr4/e;->a:Ljava/util/HashSet;

    iput-object v0, p0, Lr4/e;->b:Lr4/c;

    iput-object v1, p0, Lr4/e;->c:Lr4/b;

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 7

    iget-object v0, p0, Lr4/e;->b:Lr4/c;

    check-cast v0, Lr4/f;

    invoke-virtual {v0, p2}, Lr4/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p3, :cond_14

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_14

    :cond_12
    move v1, v0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x1

    :goto_15
    const-string v2, "lib"

    if-eqz v1, :cond_23

    new-instance p3, Ljava/io/File;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p3

    :cond_23
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string v0, "."

    invoke-static {p2, v0, p3}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public final b(Landroid/content/Context;)V
    .registers 6

    if-eqz p1, :cond_27

    const-string v0, "pl_droidsonroids_gif"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    if-nez v1, :cond_1f

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v2, "Beginning load of %s..."

    invoke-static {v2, v1}, Lr4/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lr4/e;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given library is either null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given context is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lr4/e;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1a

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v3, v0, v4

    const-string v2, "%s already loaded previously!"

    invoke-static {v2, v0}, Lr4/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1a
    const/4 v6, 0x2

    :try_start_1b
    iget-object v0, v1, Lr4/e;->b:Lr4/c;

    check-cast v0, Lr4/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p2 .. p2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    iget-object v0, v1, Lr4/e;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "%s (%s) was loaded normally!"

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v3, v7, v4

    aput-object p3, v7, v5

    invoke-static {v0, v7}, Lr4/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1b .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception v0

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    const-string v0, "Loading the library normally failed: %s"

    invoke-static {v0, v7}, Lr4/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v3, v0, v4

    aput-object p3, v0, v5

    const-string v7, "%s (%s) was not loaded normally, re-linking..."

    invoke-static {v7, v0}, Lr4/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p3}, Lr4/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5b

    goto/16 :goto_164

    :cond_5b
    const-string v7, "lib"

    invoke-virtual {v2, v7, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    invoke-virtual/range {p0 .. p3}, Lr4/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    iget-object v9, v1, Lr4/e;->b:Lr4/c;

    check-cast v9, Lr4/f;

    invoke-virtual {v9, v3}, Lr4/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lr4/d;

    invoke-direct {v10, v9}, Lr4/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_79

    goto :goto_93

    :cond_79
    array-length v9, v7

    move v10, v4

    :goto_7b
    if-ge v10, v9, :cond_93

    aget-object v11, v7, v10

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_90

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_90
    add-int/lit8 v10, v10, 0x1

    goto :goto_7b

    :cond_93
    :goto_93
    iget-object v7, v1, Lr4/e;->c:Lr4/b;

    iget-object v8, v1, Lr4/e;->b:Lr4/c;

    check-cast v8, Lr4/f;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v9, v8

    if-lez v9, :cond_a2

    goto :goto_c2

    :cond_a2
    sget-object v8, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    if-eqz v8, :cond_af

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_ad

    goto :goto_af

    :cond_ad
    move v9, v4

    goto :goto_b0

    :cond_af
    :goto_af
    move v9, v5

    :goto_b0
    if-nez v9, :cond_bc

    new-array v9, v6, [Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v10, v9, v4

    aput-object v8, v9, v5

    move-object v8, v9

    goto :goto_c2

    :cond_bc
    new-array v8, v5, [Ljava/lang/String;

    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v9, v8, v4

    :goto_c2
    iget-object v9, v1, Lr4/e;->b:Lr4/c;

    check-cast v9, Lr4/f;

    invoke-virtual {v9, v3}, Lr4/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    check-cast v7, Lr4/a;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_cf
    invoke-static {v2, v8, v9, v1}, Lr4/a;->b(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lr4/e;)Lr4/a$a;

    move-result-object v10
    :try_end_d3
    .catchall {:try_start_cf .. :try_end_d3} :catchall_19e

    if-eqz v10, :cond_185

    move v2, v4

    :goto_d6
    add-int/lit8 v8, v2, 0x1

    const/4 v11, 0x5

    if-ge v2, v11, :cond_15d

    :try_start_db
    const-string v2, "Found %s! Extracting..."

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v9, v11, v4

    invoke-static {v2, v11}, Lr4/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e4
    .catchall {:try_start_db .. :try_end_e4} :catchall_132

    :try_start_e4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v2
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_ee} :catch_158
    .catchall {:try_start_e4 .. :try_end_ee} :catchall_132

    if-nez v2, :cond_f1

    goto :goto_158

    :cond_f1
    :try_start_f1
    iget-object v2, v10, Lr4/a$a;->a:Ljava/util/zip/ZipFile;

    iget-object v11, v10, Lr4/a$a;->b:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_f9
    .catch Ljava/io/FileNotFoundException; {:try_start_f1 .. :try_end_f9} :catch_150
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f9} :catch_150
    .catchall {:try_start_f1 .. :try_end_f9} :catchall_145

    :try_start_f9
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_fe
    .catch Ljava/io/FileNotFoundException; {:try_start_f9 .. :try_end_fe} :catch_151
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fe} :catch_151
    .catchall {:try_start_f9 .. :try_end_fe} :catchall_13f

    const/16 v12, 0x1000

    :try_start_100
    new-array v12, v12, [B

    const-wide/16 v13, 0x0

    :goto_104
    invoke-virtual {v2, v12}, Ljava/io/InputStream;->read([B)I

    move-result v15

    const/4 v7, -0x1

    if-ne v15, v7, :cond_134

    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v17
    :try_end_119
    .catch Ljava/io/FileNotFoundException; {:try_start_100 .. :try_end_119} :catch_152
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_119} :catch_152
    .catchall {:try_start_100 .. :try_end_119} :catchall_13c

    cmp-long v7, v13, v17

    if-eqz v7, :cond_11e

    goto :goto_152

    :cond_11e
    :try_start_11e
    invoke-static {v2}, Lr4/a;->a(Ljava/io/Closeable;)V

    invoke-static {v11}, Lr4/a;->a(Ljava/io/Closeable;)V

    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v0, v5}, Ljava/io/File;->setWritable(Z)Z
    :try_end_12d
    .catchall {:try_start_11e .. :try_end_12d} :catchall_132

    :try_start_12d
    iget-object v2, v10, Lr4/a$a;->a:Ljava/util/zip/ZipFile;
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_12f} :catch_164

    if-eqz v2, :cond_164

    goto :goto_161

    :catchall_132
    move-exception v0

    goto :goto_19c

    :cond_134
    :try_start_134
    invoke-virtual {v11, v12, v4, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_137
    .catch Ljava/io/FileNotFoundException; {:try_start_134 .. :try_end_137} :catch_152
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_137} :catch_152
    .catchall {:try_start_134 .. :try_end_137} :catchall_13c

    int-to-long v4, v15

    add-long/2addr v13, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_104

    :catchall_13c
    move-exception v0

    move-object v7, v11

    goto :goto_141

    :catchall_13f
    move-exception v0

    const/4 v7, 0x0

    :goto_141
    move-object/from16 v16, v7

    move-object v7, v2

    goto :goto_149

    :catchall_145
    move-exception v0

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_149
    :try_start_149
    invoke-static {v7}, Lr4/a;->a(Ljava/io/Closeable;)V

    invoke-static/range {v16 .. v16}, Lr4/a;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_150
    const/4 v2, 0x0

    :catch_151
    const/4 v11, 0x0

    :catch_152
    :goto_152
    invoke-static {v2}, Lr4/a;->a(Ljava/io/Closeable;)V

    invoke-static {v11}, Lr4/a;->a(Ljava/io/Closeable;)V
    :try_end_158
    .catchall {:try_start_149 .. :try_end_158} :catchall_132

    :catch_158
    :goto_158
    move v2, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_d6

    :cond_15d
    :try_start_15d
    iget-object v2, v10, Lr4/a$a;->a:Ljava/util/zip/ZipFile;

    if-eqz v2, :cond_164

    :goto_161
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_164} :catch_164

    :catch_164
    :cond_164
    :goto_164
    iget-object v2, v1, Lr4/e;->b:Lr4/c;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    check-cast v2, Lr4/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    iget-object v0, v1, Lr4/e;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p3, v0, v2

    const-string v2, "%s (%s) was re-linked!"

    invoke-static {v2, v0}, Lr4/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_185
    :try_start_185
    invoke-static {v2, v9}, Lr4/a;->c(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_189} :catch_18a
    .catchall {:try_start_185 .. :try_end_189} :catchall_132

    goto :goto_196

    :catch_18a
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x1

    :try_start_18d
    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    :goto_196
    new-instance v2, Lpl/droidsonroids/relinker/MissingLibraryException;

    invoke-direct {v2, v9, v8, v0}, Lpl/droidsonroids/relinker/MissingLibraryException;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    throw v2
    :try_end_19c
    .catchall {:try_start_18d .. :try_end_19c} :catchall_132

    :goto_19c
    move-object v7, v10

    goto :goto_1a0

    :catchall_19e
    move-exception v0

    const/4 v7, 0x0

    :goto_1a0
    if-eqz v7, :cond_1a9

    :try_start_1a2
    iget-object v2, v7, Lr4/a$a;->a:Ljava/util/zip/ZipFile;

    if-eqz v2, :cond_1a9

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1a9} :catch_1a9

    :catch_1a9
    :cond_1a9
    throw v0
.end method
