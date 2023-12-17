.class public final Lf4/a;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:Ljava/io/File;

.field public b:Lm4/n;

.field public c:Z

.field public d:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field public e:[C

.field public f:Lj4/a;

.field public g:I

.field public h:Ljava/util/ArrayList;

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance p1, Lj4/a;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {p1, v1}, Lj4/a;-><init>(I)V

    .line 15
    iput-object p1, p0, Lf4/a;->f:Lj4/a;

    .line 17
    const/16 p1, 0x1000

    .line 19
    iput p1, p0, Lf4/a;->g:I

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iput-object p1, p0, Lf4/a;->h:Ljava/util/ArrayList;

    .line 28
    iput-boolean v1, p0, Lf4/a;->i:Z

    .line 30
    iput-object v0, p0, Lf4/a;->a:Ljava/io/File;

    .line 32
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lf4/a;->e:[C

    .line 35
    new-instance p1, Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 37
    invoke-direct {p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;-><init>()V

    .line 40
    iput-object p1, p0, Lf4/a;->d:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .registers 10

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_57

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_57

    .line 13
    invoke-virtual {p0}, Lf4/a;->m()V

    .line 16
    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    .line 18
    if-eqz v0, :cond_4f

    .line 20
    iget-object v0, p0, Lf4/a;->a:Ljava/io/File;

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2a

    .line 28
    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    .line 30
    iget-boolean v0, v0, Lm4/n;->f:Z

    .line 32
    if-nez v0, :cond_22

    .line 34
    goto :goto_2a

    .line 35
    :cond_22
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 37
    const-string p2, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    .line 39
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1

    .line 43
    :cond_2a
    :goto_2a
    new-instance v0, Ln4/e;

    .line 45
    iget-object v1, p0, Lf4/a;->b:Lm4/n;

    .line 47
    iget-object v2, p0, Lf4/a;->e:[C

    .line 49
    iget-object v3, p0, Lf4/a;->f:Lj4/a;

    .line 51
    new-instance v4, Ln4/h$a;

    .line 53
    iget-object v5, p0, Lf4/a;->d:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 55
    const/4 v6, 0x0

    .line 56
    invoke-direct {v4, v6, v5}, Ln4/h$a;-><init>(Ljava/util/concurrent/ExecutorService;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 59
    invoke-direct {v0, v1, v2, v3, v4}, Ln4/e;-><init>(Lm4/n;[CLj4/a;Ln4/h$a;)V

    .line 62
    new-instance v1, Ln4/e$a;

    .line 64
    new-instance v2, Lm4/i;

    .line 66
    iget v3, p0, Lf4/a;->g:I

    .line 68
    iget-boolean v4, p0, Lf4/a;->i:Z

    .line 70
    invoke-direct {v2, v3, v4}, Lm4/i;-><init>(IZ)V

    .line 73
    invoke-direct {v1, p1, p2, v2}, Ln4/e$a;-><init>(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;Lm4/i;)V

    .line 76
    invoke-virtual {v0, v1}, Ln4/h;->b(Lm4/m;)V

    .line 79
    return-void

    .line 80
    :cond_4f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 82
    const-string p2, "internal error: zip model is null"

    .line 84
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p1

    .line 88
    :cond_57
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 90
    const-string p2, "input file List is null or empty"

    .line 92
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p1
.end method

.method public final close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lf4/a;->h:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/io/InputStream;

    .line 19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    iget-object v0, p0, Lf4/a;->h:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28
    return-void
.end method

.method public final e(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_60

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_58

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_50

    .line 19
    invoke-virtual {p0}, Lf4/a;->m()V

    .line 22
    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    .line 24
    if-eqz v0, :cond_48

    .line 26
    iget-boolean v1, v0, Lm4/n;->f:Z

    .line 28
    if-nez v1, :cond_40

    .line 30
    new-instance v1, Ln4/f;

    .line 32
    iget-object v2, p0, Lf4/a;->e:[C

    .line 34
    iget-object v3, p0, Lf4/a;->f:Lj4/a;

    .line 36
    new-instance v4, Ln4/h$a;

    .line 38
    iget-object v5, p0, Lf4/a;->d:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 40
    const/4 v6, 0x0

    .line 41
    invoke-direct {v4, v6, v5}, Ln4/h$a;-><init>(Ljava/util/concurrent/ExecutorService;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 44
    invoke-direct {v1, v0, v2, v3, v4}, Ln4/f;-><init>(Lm4/n;[CLj4/a;Ln4/h$a;)V

    .line 47
    new-instance v0, Ln4/f$a;

    .line 49
    new-instance v2, Lm4/i;

    .line 51
    iget v3, p0, Lf4/a;->g:I

    .line 53
    iget-boolean v4, p0, Lf4/a;->i:Z

    .line 55
    invoke-direct {v2, v3, v4}, Lm4/i;-><init>(IZ)V

    .line 58
    invoke-direct {v0, p1, p2, v2}, Ln4/f$a;-><init>(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Lm4/i;)V

    .line 61
    invoke-virtual {v1, v0}, Ln4/h;->b(Lm4/m;)V

    .line 64
    return-void

    .line 65
    :cond_40
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 67
    const-string p2, "This is a split archive. Zip file format does not allow updating split/spanned files"

    .line 69
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1

    .line 73
    :cond_48
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 75
    const-string p2, "internal error: zip model is null"

    .line 77
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p1

    .line 81
    :cond_50
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 83
    const-string p2, "cannot read input folder"

    .line 85
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p1

    .line 89
    :cond_58
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 91
    const-string p2, "input folder is not a directory"

    .line 93
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1

    .line 97
    :cond_60
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 99
    const-string p2, "folder does not exist"

    .line 101
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 104
    throw p1
.end method

.method public final g(Lm4/g;Ljava/lang/String;)V
    .registers 10

    .line 1
    new-instance v0, La/b;

    .line 3
    invoke-direct {v0}, La/b;-><init>()V

    .line 6
    iget-object p1, p1, Lm4/b;->k:Ljava/lang/String;

    .line 8
    invoke-static {p1}, La/b;->O(Ljava/lang/String;)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_41

    .line 14
    invoke-static {p2}, La/b;->O(Ljava/lang/String;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_39

    .line 20
    invoke-virtual {p0}, Lf4/a;->m()V

    .line 23
    new-instance v1, Ln4/i;

    .line 25
    iget-object v2, p0, Lf4/a;->b:Lm4/n;

    .line 27
    iget-object v3, p0, Lf4/a;->e:[C

    .line 29
    new-instance v4, Ln4/h$a;

    .line 31
    iget-object v5, p0, Lf4/a;->d:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-direct {v4, v6, v5}, Ln4/h$a;-><init>(Ljava/util/concurrent/ExecutorService;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 37
    invoke-direct {v1, v2, v3, v0, v4}, Ln4/i;-><init>(Lm4/n;[CLa/b;Ln4/h$a;)V

    .line 40
    new-instance v0, Ln4/i$a;

    .line 42
    new-instance v2, Lm4/i;

    .line 44
    iget v3, p0, Lf4/a;->g:I

    .line 46
    iget-boolean v4, p0, Lf4/a;->i:Z

    .line 48
    invoke-direct {v2, v3, v4}, Lm4/i;-><init>(IZ)V

    .line 51
    invoke-direct {v0, p2, p1, v2}, Ln4/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lm4/i;)V

    .line 54
    invoke-virtual {v1, v0}, Ln4/h;->b(Lm4/m;)V

    .line 57
    return-void

    .line 58
    :cond_39
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 60
    const-string p2, "destination path is empty or null, cannot extract file"

    .line 62
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1

    .line 66
    :cond_41
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 68
    const-string p2, "file to extract is null or empty, cannot extract file"

    .line 70
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p1
.end method

.method public final h(Lm4/g;)Lk4/k;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lf4/a;->m()V

    .line 4
    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    .line 6
    if-eqz v0, :cond_39

    .line 8
    iget-object v1, p0, Lf4/a;->e:[C

    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_a
    invoke-static {v0}, La/b;->s(Lm4/n;)Lk4/h;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, p1}, Lk4/h;->a(Lm4/g;)V

    .line 18
    new-instance v0, Lk4/k;

    .line 20
    new-instance v3, Lm4/i;

    .line 22
    const/16 v4, 0x1000

    .line 24
    const/4 v5, 0x1

    .line 25
    invoke-direct {v3, v4, v5}, Lm4/i;-><init>(IZ)V

    .line 28
    invoke-direct {v0, v2, v1, v3}, Lk4/k;-><init>(Lk4/h;[CLm4/i;)V

    .line 31
    invoke-virtual {v0, p1}, Lk4/k;->e(Lm4/g;)Lm4/h;

    .line 34
    move-result-object p1
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_22} :catch_32

    .line 35
    if-eqz p1, :cond_2a

    .line 37
    iget-object p1, p0, Lf4/a;->h:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-object v0

    .line 43
    :cond_2a
    :try_start_2a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 45
    const-string v0, "Could not locate local file header for corresponding file header"

    .line 47
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_32} :catch_32

    .line 51
    :catch_32
    move-exception p1

    .line 52
    if-eqz v2, :cond_38

    .line 54
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 57
    :cond_38
    throw p1

    .line 58
    :cond_39
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 60
    const-string v0, "zip model is null, cannot get inputstream"

    .line 62
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1
.end method

.method public final i()Ljava/util/ArrayList;
    .registers 11

    .line 1
    invoke-virtual {p0}, Lf4/a;->m()V

    .line 4
    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    .line 6
    if-eqz v0, :cond_87

    .line 8
    iget-object v1, v0, Lm4/n;->c:Lm4/d;

    .line 10
    if-nez v1, :cond_e

    .line 12
    const/4 v0, 0x0

    .line 13
    goto/16 :goto_7e

    .line 15
    :cond_e
    iget-object v1, v0, Lm4/n;->h:Ljava/io/File;

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_7f

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v2, v0, Lm4/n;->h:Ljava/io/File;

    .line 30
    iget-boolean v3, v0, Lm4/n;->f:Z

    .line 32
    if-nez v3, :cond_25

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_7d

    .line 38
    :cond_25
    iget-object v3, v0, Lm4/n;->c:Lm4/d;

    .line 40
    iget v3, v3, Lm4/d;->b:I

    .line 42
    if-nez v3, :cond_2f

    .line 44
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_7d

    .line 48
    :cond_2f
    const/4 v4, 0x0

    .line 49
    move v5, v4

    .line 50
    :goto_31
    if-gt v5, v3, :cond_7d

    .line 52
    if-ne v5, v3, :cond_3b

    .line 54
    iget-object v6, v0, Lm4/n;->h:Ljava/io/File;

    .line 56
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_7a

    .line 60
    :cond_3b
    const/16 v6, 0x9

    .line 62
    if-lt v5, v6, :cond_42

    .line 64
    const-string v6, ".z"

    .line 66
    goto :goto_44

    .line 67
    :cond_42
    const-string v6, ".z0"

    .line 69
    :goto_44
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 72
    move-result-object v7

    .line 73
    const-string v8, "."

    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_61

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 88
    move-result-object v9

    .line 89
    invoke-virtual {v9, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 92
    move-result v8

    .line 93
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 96
    move-result-object v7

    .line 97
    goto :goto_65

    .line 98
    :cond_61
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 101
    move-result-object v7

    .line 102
    :goto_65
    invoke-static {v7, v6}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    move-result-object v6

    .line 106
    add-int/lit8 v7, v5, 0x1

    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v6

    .line 115
    new-instance v7, Ljava/io/File;

    .line 117
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :goto_7a
    add-int/lit8 v5, v5, 0x1

    .line 125
    goto :goto_31

    .line 126
    :cond_7d
    :goto_7d
    move-object v0, v1

    .line 127
    :goto_7e
    return-object v0

    .line 128
    :cond_7f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 130
    const-string v1, "zip file does not exist"

    .line 132
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 135
    throw v0

    .line 136
    :cond_87
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 138
    const-string v1, "cannot get split zip files: zipmodel is null"

    .line 140
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 143
    throw v0
.end method

.method public final j()Ljava/io/RandomAccessFile;
    .registers 5

    .line 1
    iget-object v0, p0, Lf4/a;->a:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, ".zip.001"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2a

    .line 15
    iget-object v0, p0, Lf4/a;->a:Ljava/io/File;

    .line 17
    invoke-static {v0}, Lo4/a;->b(Ljava/io/File;)[Ljava/io/File;

    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lk4/g;

    .line 23
    iget-object v2, p0, Lf4/a;->a:Ljava/io/File;

    .line 25
    sget-object v3, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 27
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v1, v2, v3, v0}, Lk4/g;-><init>(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;)V

    .line 34
    iget-object v0, v1, Lk4/g;->b:[Ljava/io/File;

    .line 36
    array-length v0, v0

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 39
    invoke-virtual {v1, v0}, Lk4/g;->a(I)V

    .line 42
    return-object v1

    .line 43
    :cond_2a
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 45
    iget-object v1, p0, Lf4/a;->a:Ljava/io/File;

    .line 47
    sget-object v2, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 49
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    return-object v0
.end method

.method public final k()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    .line 3
    if-nez v0, :cond_14

    .line 5
    invoke-virtual {p0}, Lf4/a;->m()V

    .line 8
    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    .line 10
    if-eqz v0, :cond_c

    .line 12
    goto :goto_14

    .line 13
    :cond_c
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 15
    const-string v1, "Zip Model is null"

    .line 17
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 20
    throw v0

    .line 21
    :cond_14
    :goto_14
    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    .line 23
    iget-object v0, v0, Lm4/n;->b:Lo1/a;

    .line 25
    if-eqz v0, :cond_3f

    .line 27
    iget-object v0, v0, Lo1/a;->b:Ljava/lang/Object;

    .line 29
    move-object v1, v0

    .line 30
    check-cast v1, Ljava/util/List;

    .line 32
    if-eqz v1, :cond_3f

    .line 34
    check-cast v0, Ljava/util/List;

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v0

    .line 40
    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3c

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lm4/g;

    .line 52
    if-eqz v1, :cond_27

    .line 54
    iget-boolean v1, v1, Lm4/b;->l:Z

    .line 56
    if-eqz v1, :cond_27

    .line 58
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lf4/a;->c:Z

    .line 61
    :cond_3c
    iget-boolean v0, p0, Lf4/a;->c:Z

    .line 63
    return v0

    .line 64
    :cond_3f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 66
    const-string v1, "invalid zip file"

    .line 68
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 71
    throw v0
.end method

.method public final l()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lf4/a;->a:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

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
    :try_start_a
    invoke-virtual {p0}, Lf4/a;->m()V

    .line 14
    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    .line 16
    iget-boolean v0, v0, Lm4/n;->f:Z

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v0, :cond_34

    .line 21
    invoke-virtual {p0}, Lf4/a;->i()Ljava/util/ArrayList;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v0

    .line 29
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_30

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/io/File;

    .line 41
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 44
    move-result v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2c} :catch_35

    .line 45
    if-nez v3, :cond_1c

    .line 47
    move v0, v1

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v0, v2

    .line 50
    :goto_31
    if-nez v0, :cond_34

    .line 52
    return v1

    .line 53
    :cond_34
    return v2

    .line 54
    :catch_35
    return v1
.end method

.method public final m()V
    .registers 6

    .line 1
    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lf4/a;->a:Ljava/io/File;

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_19

    .line 14
    new-instance v0, Lm4/n;

    .line 16
    invoke-direct {v0}, Lm4/n;-><init>()V

    .line 19
    iput-object v0, p0, Lf4/a;->b:Lm4/n;

    .line 21
    iget-object v1, p0, Lf4/a;->a:Ljava/io/File;

    .line 23
    iput-object v1, v0, Lm4/n;->h:Ljava/io/File;

    .line 25
    return-void

    .line 26
    :cond_19
    iget-object v0, p0, Lf4/a;->a:Ljava/io/File;

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_55

    .line 34
    :try_start_21
    invoke-virtual {p0}, Lf4/a;->j()Ljava/io/RandomAccessFile;

    .line 37
    move-result-object v0
    :try_end_25
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_21 .. :try_end_25} :catch_53
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_4c

    .line 38
    :try_start_25
    new-instance v1, Lj4/a;

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v1, v2}, Lj4/a;-><init>(I)V

    .line 44
    new-instance v2, Lm4/i;

    .line 46
    iget v3, p0, Lf4/a;->g:I

    .line 48
    iget-boolean v4, p0, Lf4/a;->i:Z

    .line 50
    invoke-direct {v2, v3, v4}, Lm4/i;-><init>(IZ)V

    .line 53
    invoke-virtual {v1, v0, v2}, Lj4/a;->g(Ljava/io/RandomAccessFile;Lm4/i;)Lm4/n;

    .line 56
    move-result-object v1

    .line 57
    iput-object v1, p0, Lf4/a;->b:Lm4/n;

    .line 59
    iget-object v2, p0, Lf4/a;->a:Ljava/io/File;

    .line 61
    iput-object v2, v1, Lm4/n;->h:Ljava/io/File;
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_42

    .line 63
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_41
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3e .. :try_end_41} :catch_53
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4c

    .line 66
    return-void

    .line 67
    :catchall_42
    move-exception v1

    .line 68
    :try_start_43
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    .line 71
    goto :goto_4b

    .line 72
    :catchall_47
    move-exception v0

    .line 73
    :try_start_48
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 76
    :goto_4b
    throw v1
    :try_end_4c
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_48 .. :try_end_4c} :catch_53
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4c} :catch_4c

    .line 77
    :catch_4c
    move-exception v0

    .line 78
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 80
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 83
    throw v1

    .line 84
    :catch_53
    move-exception v0

    .line 85
    throw v0

    .line 86
    :cond_55
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 88
    const-string v1, "no read access for the input zip file"

    .line 90
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 93
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lf4/a;->a:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
