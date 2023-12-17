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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lj4/a;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lj4/a;-><init>(I)V

    iput-object p1, p0, Lf4/a;->f:Lj4/a;

    const/16 p1, 0x1000

    iput p1, p0, Lf4/a;->g:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf4/a;->h:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lf4/a;->i:Z

    iput-object v0, p0, Lf4/a;->a:Ljava/io/File;

    const/4 p1, 0x0

    iput-object p1, p0, Lf4/a;->e:[C

    new-instance p1, Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-direct {p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;-><init>()V

    iput-object p1, p0, Lf4/a;->d:Lnet/lingala/zip4j/progress/ProgressMonitor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .registers 10

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_57

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Lf4/a;->m()V

    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lf4/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    iget-boolean v0, v0, Lm4/n;->f:Z

    if-nez v0, :cond_22

    goto :goto_2a

    :cond_22
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    :goto_2a
    new-instance v0, Ln4/e;

    iget-object v1, p0, Lf4/a;->b:Lm4/n;

    iget-object v2, p0, Lf4/a;->e:[C

    iget-object v3, p0, Lf4/a;->f:Lj4/a;

    new-instance v4, Ln4/h$a;

    iget-object v5, p0, Lf4/a;->d:Lnet/lingala/zip4j/progress/ProgressMonitor;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Ln4/h$a;-><init>(Ljava/util/concurrent/ExecutorService;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    invoke-direct {v0, v1, v2, v3, v4}, Ln4/e;-><init>(Lm4/n;[CLj4/a;Ln4/h$a;)V

    new-instance v1, Ln4/e$a;

    new-instance v2, Lm4/i;

    iget v3, p0, Lf4/a;->g:I

    iget-boolean v4, p0, Lf4/a;->i:Z

    invoke-direct {v2, v3, v4}, Lm4/i;-><init>(IZ)V

    invoke-direct {v1, p1, p2, v2}, Ln4/e$a;-><init>(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;Lm4/i;)V

    invoke-virtual {v0, v1}, Ln4/h;->b(Lm4/m;)V

    return-void

    :cond_4f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "internal error: zip model is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_57
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file List is null or empty"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .registers 3

    iget-object v0, p0, Lf4/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lf4/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final e(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .registers 10

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lf4/a;->m()V

    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    if-eqz v0, :cond_48

    iget-boolean v1, v0, Lm4/n;->f:Z

    if-nez v1, :cond_40

    new-instance v1, Ln4/f;

    iget-object v2, p0, Lf4/a;->e:[C

    iget-object v3, p0, Lf4/a;->f:Lj4/a;

    new-instance v4, Ln4/h$a;

    iget-object v5, p0, Lf4/a;->d:Lnet/lingala/zip4j/progress/ProgressMonitor;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Ln4/h$a;-><init>(Ljava/util/concurrent/ExecutorService;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    invoke-direct {v1, v0, v2, v3, v4}, Ln4/f;-><init>(Lm4/n;[CLj4/a;Ln4/h$a;)V

    new-instance v0, Ln4/f$a;

    new-instance v2, Lm4/i;

    iget v3, p0, Lf4/a;->g:I

    iget-boolean v4, p0, Lf4/a;->i:Z

    invoke-direct {v2, v3, v4}, Lm4/i;-><init>(IZ)V

    invoke-direct {v0, p1, p2, v2}, Ln4/f$a;-><init>(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Lm4/i;)V

    invoke-virtual {v1, v0}, Ln4/h;->b(Lm4/m;)V

    return-void

    :cond_40
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_48
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "internal error: zip model is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "cannot read input folder"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_58
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input folder is not a directory"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "folder does not exist"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lm4/g;Ljava/lang/String;)V
    .registers 10

    new-instance v0, La/b;

    invoke-direct {v0}, La/b;-><init>()V

    iget-object p1, p1, Lm4/b;->k:Ljava/lang/String;

    invoke-static {p1}, La/b;->O(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-static {p2}, La/b;->O(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lf4/a;->m()V

    new-instance v1, Ln4/i;

    iget-object v2, p0, Lf4/a;->b:Lm4/n;

    iget-object v3, p0, Lf4/a;->e:[C

    new-instance v4, Ln4/h$a;

    iget-object v5, p0, Lf4/a;->d:Lnet/lingala/zip4j/progress/ProgressMonitor;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Ln4/h$a;-><init>(Ljava/util/concurrent/ExecutorService;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    invoke-direct {v1, v2, v3, v0, v4}, Ln4/i;-><init>(Lm4/n;[CLa/b;Ln4/h$a;)V

    new-instance v0, Ln4/i$a;

    new-instance v2, Lm4/i;

    iget v3, p0, Lf4/a;->g:I

    iget-boolean v4, p0, Lf4/a;->i:Z

    invoke-direct {v2, v3, v4}, Lm4/i;-><init>(IZ)V

    invoke-direct {v0, p2, p1, v2}, Ln4/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lm4/i;)V

    invoke-virtual {v1, v0}, Ln4/h;->b(Lm4/m;)V

    return-void

    :cond_39
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "destination path is empty or null, cannot extract file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_41
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file to extract is null or empty, cannot extract file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Lm4/g;)Lk4/k;
    .registers 8

    invoke-virtual {p0}, Lf4/a;->m()V

    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    if-eqz v0, :cond_39

    iget-object v1, p0, Lf4/a;->e:[C

    const/4 v2, 0x0

    :try_start_a
    invoke-static {v0}, La/b;->s(Lm4/n;)Lk4/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Lk4/h;->a(Lm4/g;)V

    new-instance v0, Lk4/k;

    new-instance v3, Lm4/i;

    const/16 v4, 0x1000

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lm4/i;-><init>(IZ)V

    invoke-direct {v0, v2, v1, v3}, Lk4/k;-><init>(Lk4/h;[CLm4/i;)V

    invoke-virtual {v0, p1}, Lk4/k;->e(Lm4/g;)Lm4/h;

    move-result-object p1
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_22} :catch_32

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lf4/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2a
    :try_start_2a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Could not locate local file header for corresponding file header"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_32} :catch_32

    :catch_32
    move-exception p1

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_38
    throw p1

    :cond_39
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip model is null, cannot get inputstream"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()Ljava/util/ArrayList;
    .registers 11

    invoke-virtual {p0}, Lf4/a;->m()V

    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    if-eqz v0, :cond_87

    iget-object v1, v0, Lm4/n;->c:Lm4/d;

    if-nez v1, :cond_e

    const/4 v0, 0x0

    goto/16 :goto_7e

    :cond_e
    iget-object v1, v0, Lm4/n;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lm4/n;->h:Ljava/io/File;

    iget-boolean v3, v0, Lm4/n;->f:Z

    if-nez v3, :cond_25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_25
    iget-object v3, v0, Lm4/n;->c:Lm4/d;

    iget v3, v3, Lm4/d;->b:I

    if-nez v3, :cond_2f

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_2f
    const/4 v4, 0x0

    move v5, v4

    :goto_31
    if-gt v5, v3, :cond_7d

    if-ne v5, v3, :cond_3b

    iget-object v6, v0, Lm4/n;->h:Ljava/io/File;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    :cond_3b
    const/16 v6, 0x9

    if-lt v5, v6, :cond_42

    const-string v6, ".z"

    goto :goto_44

    :cond_42
    const-string v6, ".z0"

    :goto_44
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_61

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_65

    :cond_61
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    :goto_65
    invoke-static {v7, v6}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_7d
    :goto_7d
    move-object v0, v1

    :goto_7e
    return-object v0

    :cond_7f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip file does not exist"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_87
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "cannot get split zip files: zipmodel is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()Ljava/io/RandomAccessFile;
    .registers 5

    iget-object v0, p0, Lf4/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip.001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lf4/a;->a:Ljava/io/File;

    invoke-static {v0}, Lo4/a;->b(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    new-instance v1, Lk4/g;

    iget-object v2, p0, Lf4/a;->a:Ljava/io/File;

    sget-object v3, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lk4/g;-><init>(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;)V

    iget-object v0, v1, Lk4/g;->b:[Ljava/io/File;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lk4/g;->a(I)V

    return-object v1

    :cond_2a
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lf4/a;->a:Ljava/io/File;

    sget-object v2, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final k()Z
    .registers 3

    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lf4/a;->m()V

    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    if-eqz v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Zip Model is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_14
    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    iget-object v0, v0, Lm4/n;->b:Lo1/a;

    if-eqz v0, :cond_3f

    iget-object v0, v0, Lo1/a;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3f

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm4/g;

    if-eqz v1, :cond_27

    iget-boolean v1, v1, Lm4/b;->l:Z

    if-eqz v1, :cond_27

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf4/a;->c:Z

    :cond_3c
    iget-boolean v0, p0, Lf4/a;->c:Z

    return v0

    :cond_3f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()Z
    .registers 5

    iget-object v0, p0, Lf4/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lf4/a;->m()V

    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    iget-boolean v0, v0, Lm4/n;->f:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lf4/a;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2c} :catch_35

    if-nez v3, :cond_1c

    move v0, v1

    goto :goto_31

    :cond_30
    move v0, v2

    :goto_31
    if-nez v0, :cond_34

    return v1

    :cond_34
    return v2

    :catch_35
    return v1
.end method

.method public final m()V
    .registers 6

    iget-object v0, p0, Lf4/a;->b:Lm4/n;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lf4/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Lm4/n;

    invoke-direct {v0}, Lm4/n;-><init>()V

    iput-object v0, p0, Lf4/a;->b:Lm4/n;

    iget-object v1, p0, Lf4/a;->a:Ljava/io/File;

    iput-object v1, v0, Lm4/n;->h:Ljava/io/File;

    return-void

    :cond_19
    iget-object v0, p0, Lf4/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_55

    :try_start_21
    invoke-virtual {p0}, Lf4/a;->j()Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_25
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_21 .. :try_end_25} :catch_53
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_4c

    :try_start_25
    new-instance v1, Lj4/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lj4/a;-><init>(I)V

    new-instance v2, Lm4/i;

    iget v3, p0, Lf4/a;->g:I

    iget-boolean v4, p0, Lf4/a;->i:Z

    invoke-direct {v2, v3, v4}, Lm4/i;-><init>(IZ)V

    invoke-virtual {v1, v0, v2}, Lj4/a;->g(Ljava/io/RandomAccessFile;Lm4/i;)Lm4/n;

    move-result-object v1

    iput-object v1, p0, Lf4/a;->b:Lm4/n;

    iget-object v2, p0, Lf4/a;->a:Ljava/io/File;

    iput-object v2, v1, Lm4/n;->h:Ljava/io/File;
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_42

    :try_start_3e
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_41
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3e .. :try_end_41} :catch_53
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4c

    return-void

    :catchall_42
    move-exception v1

    :try_start_43
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception v0

    :try_start_48
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4b
    throw v1
    :try_end_4c
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_48 .. :try_end_4c} :catch_53
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception v0

    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_53
    move-exception v0

    throw v0

    :cond_55
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "no read access for the input zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lf4/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
