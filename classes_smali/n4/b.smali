.class public abstract Ln4/b;
.super Ln4/h;
.source "AbstractExtractFileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln4/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lm4/n;

.field public final e:La/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm4/n;La/b;Ln4/h$a;)V
    .registers 4

    invoke-direct {p0, p3}, Ln4/h;-><init>(Ln4/h$a;)V

    iput-object p1, p0, Ln4/b;->d:Lm4/n;

    iput-object p2, p0, Ln4/b;->e:La/b;

    return-void
.end method


# virtual methods
.method public final d()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .registers 2

    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->EXTRACT_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method

.method public final g(Lk4/k;Lm4/g;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    .registers 13

    iget-object v0, p2, Lm4/g;->v:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    array-length v2, v0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_a

    goto :goto_13

    :cond_a
    const/4 v2, 0x3

    aget-byte v0, v0, v2

    const/4 v2, 0x5

    invoke-static {v2, v0}, La/b;->J(IB)Z

    move-result v0

    goto :goto_14

    :cond_13
    :goto_13
    move v0, v1

    :goto_14
    if-eqz v0, :cond_1b

    iget-object v2, p0, Ln4/b;->e:La/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1b
    sget-object v2, Lo4/b;->a:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-static {p3, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_27
    iget-object v3, p2, Lm4/b;->k:Ljava/lang/String;

    invoke-static {p4}, La/b;->O(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_31

    :cond_30
    move-object p4, v3

    :goto_31
    new-instance v3, Ljava/io/File;

    const-string v4, ":\\\\"

    const-string v5, "_"

    invoke-virtual {p4, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[/\\\\]"

    invoke-virtual {p4, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v3, p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-virtual {p4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_62

    invoke-static {p4, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_62
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_75

    invoke-static {p3, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_75
    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1f0

    iget-object p3, p2, Lm4/b;->c:[B

    aget-byte p3, p3, v1

    const/4 p4, 0x6

    invoke-static {p4, p3}, La/b;->J(IB)Z

    move-result p3

    if-nez p3, :cond_1dc

    invoke-virtual {p1, p2}, Lk4/k;->e(Lm4/g;)Lm4/h;

    move-result-object p3

    if-eqz p3, :cond_1c7

    iget-object p4, p2, Lm4/b;->k:Ljava/lang/String;

    iget-object p3, p3, Lm4/b;->k:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1bf

    iget-boolean p3, p2, Lm4/b;->s:Z

    if-eqz p3, :cond_bf

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_18f

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_a8

    goto/16 :goto_18f

    :cond_a8
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not create directory: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_bf
    if-eqz v0, :cond_148

    new-instance p3, Ljava/lang/String;

    iget-wide v4, p2, Lm4/b;->h:J

    long-to-int p4, v4

    new-array p6, p4, [B

    invoke-virtual {p1, p6, v1, p4}, Lk4/k;->read([BII)I

    move-result p1

    if-ne p1, p4, :cond_140

    int-to-long v4, p4

    invoke-virtual {p5, v4, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(J)V

    invoke-direct {p3, p6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_f2

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_ea

    goto :goto_f2

    :cond_ea
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Could not create parent directories"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f2
    :goto_f2
    :try_start_f2
    new-array p1, v1, [Ljava/lang/String;

    invoke-static {p3, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_11c

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result p4

    if-eqz p4, :cond_105

    goto :goto_11c

    :cond_105
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Could not delete existing symlink "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11c
    :goto_11c
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p4

    new-array p5, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p4, p1, p5}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_125
    .catch Ljava/lang/NoSuchMethodError; {:try_start_f2 .. :try_end_125} :catch_126

    goto :goto_18f

    :catch_126
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_12b
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_132
    .catchall {:try_start_12b .. :try_end_132} :catchall_136

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_18f

    :catchall_136
    move-exception p2

    :try_start_137
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_13a
    .catchall {:try_start_137 .. :try_end_13a} :catchall_13b

    goto :goto_13f

    :catchall_13b
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13f
    throw p2

    :cond_140
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Could not read complete entry"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_148
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_174

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result p3

    if-eqz p3, :cond_15d

    goto :goto_174

    :cond_15d
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Unable to create parent directories: "

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_174
    :goto_174
    :try_start_174
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_179} :catch_1b4

    :goto_179
    :try_start_179
    array-length p4, p6

    invoke-virtual {p1, p6, v1, p4}, Lk4/k;->read([BII)I

    move-result p4

    const/4 v2, -0x1

    if-eq p4, v2, :cond_18c

    invoke-virtual {p3, p6, v1, p4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, p4

    invoke-virtual {p5, v4, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(J)V

    invoke-virtual {p0}, Ln4/h;->f()V
    :try_end_18b
    .catchall {:try_start_179 .. :try_end_18b} :catchall_1aa

    goto :goto_179

    :cond_18c
    :try_start_18c
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_18f} :catch_1b4

    :cond_18f
    :goto_18f
    if-nez v0, :cond_1a9

    :try_start_191
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    iget-object p3, p2, Lm4/g;->v:[B

    invoke-static {p1, p3}, Lo4/a;->q(Ljava/nio/file/Path;[B)V

    iget-wide p3, p2, Lm4/b;->e:J

    invoke-static {p1, p3, p4}, Lo4/a;->r(Ljava/nio/file/Path;J)V
    :try_end_19f
    .catch Ljava/lang/NoSuchMethodError; {:try_start_191 .. :try_end_19f} :catch_1a0

    goto :goto_1a9

    :catch_1a0
    iget-wide p1, p2, Lm4/b;->e:J

    invoke-static {p1, p2}, La/b;->v(J)J

    move-result-wide p1

    invoke-virtual {v3, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    :cond_1a9
    :goto_1a9
    return-void

    :catchall_1aa
    move-exception p1

    :try_start_1ab
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_1ae
    .catchall {:try_start_1ab .. :try_end_1ae} :catchall_1af

    goto :goto_1b3

    :catchall_1af
    move-exception p2

    :try_start_1b0
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b3
    throw p1
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1b4} :catch_1b4

    :catch_1b4
    move-exception p1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1be

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1be
    throw p1

    :cond_1bf
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "File header and local file header mismatch"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c7
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p3, "Could not read corresponding local file header for file header: "

    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p2, p2, Lm4/b;->k:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1dc
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p3, "Entry with name "

    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p2, p2, Lm4/b;->k:Ljava/lang/String;

    const-string p4, " is encrypted with Strong Encryption. Zip4j does not support Strong Encryption, as this is patented."

    invoke-static {p3, p2, p4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p3, "illegal file name that breaks out of the target directory: "

    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p2, p2, Lm4/b;->k:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
