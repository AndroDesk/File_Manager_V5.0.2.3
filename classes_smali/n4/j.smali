.class public final Ln4/j;
.super Ln4/d;
.source "RemoveFilesFromZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln4/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/d<",
        "Ln4/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lm4/n;

.field public final e:Lj4/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm4/n;Lj4/a;Ln4/h$a;)V
    .registers 4

    invoke-direct {p0, p3}, Ln4/d;-><init>(Ln4/h$a;)V

    iput-object p1, p0, Ln4/j;->d:Lm4/n;

    iput-object p2, p0, Ln4/j;->e:Lj4/a;

    return-void
.end method


# virtual methods
.method public final a(Lm4/m;)J
    .registers 4

    check-cast p1, Ln4/j$a;

    iget-object p1, p0, Ln4/j;->d:Lm4/n;

    iget-object p1, p1, Lm4/n;->h:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    check-cast v0, Ln4/j$a;

    iget-object v2, v1, Ln4/j;->d:Lm4/n;

    iget-boolean v2, v2, Lm4/n;->f:Z

    if-nez v2, :cond_191

    iget-object v2, v0, Ln4/j$a;->b:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Ln4/j;->d:Lm4/n;

    invoke-static {v5, v4}, La/b;->C(Lm4/n;Ljava/lang/String;)Lm4/g;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2f
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    goto/16 :goto_166

    :cond_37
    iget-object v2, v1, Ln4/j;->d:Lm4/n;

    iget-object v2, v2, Lm4/n;->h:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    new-instance v5, Ljava/io/File;

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2710

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_5a
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_75

    new-instance v5, Ljava/io/File;

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_5a

    :cond_75
    const/4 v2, 0x0

    const/4 v4, 0x1

    :try_start_77
    new-instance v14, Ll4/h;

    invoke-direct {v14, v5}, Ll4/h;-><init>(Ljava/io/File;)V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_187

    :try_start_7c
    new-instance v15, Ljava/io/RandomAccessFile;

    iget-object v6, v1, Ln4/j;->d:Lm4/n;

    iget-object v6, v6, Lm4/n;->h:Ljava/io/File;

    sget-object v7, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_7c .. :try_end_8b} :catchall_177

    const-wide/16 v6, 0x0

    :try_start_8d
    iget-object v8, v1, Ln4/j;->d:Lm4/n;

    iget-object v8, v8, Lm4/n;->b:Lo1/a;

    iget-object v8, v8, Lo1/a;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ln4/c;

    invoke-direct {v8}, Ln4/c;-><init>()V

    invoke-static {v13, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-wide/from16 v17, v6

    :goto_a8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm4/g;

    iget-object v7, v1, Ln4/j;->d:Lm4/n;

    invoke-static {v13, v6}, Ln4/d;->i(Ljava/util/ArrayList;Lm4/g;)I

    move-result v8

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_d0

    iget-boolean v8, v7, Lm4/n;->i:Z

    if-eqz v8, :cond_cb

    iget-object v7, v7, Lm4/n;->e:Lm4/k;

    iget-wide v7, v7, Lm4/k;->j:J

    goto :goto_da

    :cond_cb
    iget-object v7, v7, Lm4/n;->c:Lm4/d;

    iget-wide v7, v7, Lm4/d;->f:J

    goto :goto_da

    :cond_d0
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm4/g;

    iget-wide v7, v7, Lm4/g;->w:J

    :goto_da
    invoke-virtual {v14}, Ll4/h;->getFilePointer()J

    move-result-wide v9

    sub-long v10, v7, v9

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_101

    iget-object v9, v6, Lm4/b;->k:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_101

    goto :goto_109

    :cond_101
    iget-object v9, v6, Lm4/b;->k:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e4

    :goto_109
    move v7, v4

    goto :goto_10c

    :cond_10b
    move v7, v2

    :goto_10c
    if-eqz v7, :cond_12c

    invoke-virtual {v1, v13, v6, v10, v11}, Ln4/j;->j(Ljava/util/ArrayList;Lm4/g;J)V

    iget-object v7, v1, Ln4/j;->d:Lm4/n;

    iget-object v7, v7, Lm4/n;->b:Lo1/a;

    iget-object v7, v7, Lo1/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_124

    add-long v17, v17, v10

    move-object/from16 v22, v13

    goto :goto_145

    :cond_124
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "Could not remove entry from list of central directory headers"

    invoke-direct {v0, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12c
    iget-object v6, v0, Lm4/m;->a:Ljava/lang/Object;

    check-cast v6, Lm4/i;

    iget v12, v6, Lm4/i;->b:I

    move-object v6, v15

    move-object v7, v14

    move-wide/from16 v8, v17

    move-wide/from16 v19, v10

    move/from16 v21, v12

    move-object/from16 v12, p2

    move-object/from16 v22, v13

    move/from16 v13, v21

    invoke-static/range {v6 .. v13}, Ln4/d;->h(Ljava/io/RandomAccessFile;Ll4/h;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)V

    add-long v17, v17, v19

    :goto_145
    invoke-virtual/range {p0 .. p0}, Ln4/h;->f()V

    move-object/from16 v13, v22

    goto/16 :goto_a8

    :cond_14c
    iget-object v3, v1, Ln4/j;->e:Lj4/a;

    iget-object v6, v1, Ln4/j;->d:Lm4/n;

    iget-object v0, v0, Lm4/m;->a:Ljava/lang/Object;

    check-cast v0, Lm4/i;

    iget-object v0, v0, Lm4/i;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6, v14, v0}, Lj4/a;->c(Lm4/n;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_159
    .catchall {:try_start_8d .. :try_end_159} :catchall_16b

    :try_start_159
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15c
    .catchall {:try_start_159 .. :try_end_15c} :catchall_169

    :try_start_15c
    invoke-virtual {v14}, Ll4/h;->close()V
    :try_end_15f
    .catchall {:try_start_15c .. :try_end_15f} :catchall_167

    iget-object v0, v1, Ln4/j;->d:Lm4/n;

    iget-object v0, v0, Lm4/n;->h:Ljava/io/File;

    invoke-static {v0, v5, v4}, Ln4/d;->g(Ljava/io/File;Ljava/io/File;Z)V

    :goto_166
    return-void

    :catchall_167
    move-exception v0

    goto :goto_189

    :catchall_169
    move-exception v0

    goto :goto_179

    :catchall_16b
    move-exception v0

    move-object v3, v0

    :try_start_16d
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_170
    .catchall {:try_start_16d .. :try_end_170} :catchall_171

    goto :goto_176

    :catchall_171
    move-exception v0

    move-object v4, v0

    :try_start_173
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_176
    throw v3
    :try_end_177
    .catchall {:try_start_173 .. :try_end_177} :catchall_177

    :catchall_177
    move-exception v0

    move v4, v2

    :goto_179
    move-object v2, v0

    :try_start_17a
    invoke-virtual {v14}, Ll4/h;->close()V
    :try_end_17d
    .catchall {:try_start_17a .. :try_end_17d} :catchall_17e

    goto :goto_183

    :catchall_17e
    move-exception v0

    move-object v3, v0

    :try_start_180
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_183
    throw v2
    :try_end_184
    .catchall {:try_start_180 .. :try_end_184} :catchall_184

    :catchall_184
    move-exception v0

    move v2, v4

    goto :goto_188

    :catchall_187
    move-exception v0

    :goto_188
    move v4, v2

    :goto_189
    iget-object v2, v1, Ln4/j;->d:Lm4/n;

    iget-object v2, v2, Lm4/n;->h:Ljava/io/File;

    invoke-static {v2, v5, v4}, Ln4/d;->g(Ljava/io/File;Ljava/io/File;Z)V

    throw v0

    :cond_191
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .registers 2

    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->REMOVE_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method

.method public final j(Ljava/util/ArrayList;Lm4/g;J)V
    .registers 14

    iget-object v0, p0, Ln4/j;->d:Lm4/n;

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, p3, v1

    if-eqz v1, :cond_6e

    neg-long v1, p3

    invoke-static {p1, p2}, Ln4/d;->i(Ljava/util/ArrayList;Lm4/g;)I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_66

    :cond_10
    :goto_10
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_37

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm4/g;

    iget-wide v5, v4, Lm4/g;->w:J

    add-long/2addr v5, v1

    iput-wide v5, v4, Lm4/g;->w:J

    iget-boolean v5, v0, Lm4/n;->i:Z

    if-eqz v5, :cond_10

    iget-object v4, v4, Lm4/b;->o:Lm4/l;

    if-eqz v4, :cond_10

    iget-wide v5, v4, Lm4/l;->d:J

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_10

    add-long/2addr v5, v1

    iput-wide v5, v4, Lm4/l;->d:J

    goto :goto_10

    :cond_37
    iget-object p1, p0, Ln4/j;->d:Lm4/n;

    iget-object p2, p1, Lm4/n;->c:Lm4/d;

    iget-wide v0, p2, Lm4/d;->f:J

    sub-long/2addr v0, p3

    iput-wide v0, p2, Lm4/d;->f:J

    iget v0, p2, Lm4/d;->e:I

    add-int/2addr v0, v3

    iput v0, p2, Lm4/d;->e:I

    iget v0, p2, Lm4/d;->d:I

    if-lez v0, :cond_4c

    add-int/2addr v0, v3

    iput v0, p2, Lm4/d;->d:I

    :cond_4c
    iget-boolean p2, p1, Lm4/n;->i:Z

    if-eqz p2, :cond_65

    iget-object p2, p1, Lm4/n;->e:Lm4/k;

    iget-wide v0, p2, Lm4/k;->j:J

    sub-long/2addr v0, p3

    iput-wide v0, p2, Lm4/k;->j:J

    iget-wide v0, p2, Lm4/k;->h:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lm4/k;->g:J

    iget-object p1, p1, Lm4/n;->d:Lm4/j;

    iget-wide v0, p1, Lm4/j;->c:J

    sub-long/2addr v0, p3

    iput-wide v0, p1, Lm4/j;->c:J

    :cond_65
    return-void

    :cond_66
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Could not locate modified file header in zipModel"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "long overflow"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
