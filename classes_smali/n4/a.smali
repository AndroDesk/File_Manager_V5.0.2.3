.class public abstract Ln4/a;
.super Ln4/h;
.source "AbstractAddFileToZipTask.java"


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

.field public final e:[C

.field public final f:Lj4/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm4/n;[CLj4/a;Ln4/h$a;)V
    .registers 5

    invoke-direct {p0, p4}, Ln4/h;-><init>(Ln4/h$a;)V

    iput-object p1, p0, Ln4/a;->d:Lm4/n;

    iput-object p2, p0, Ln4/a;->e:[C

    iput-object p3, p0, Ln4/a;->f:Lj4/a;

    return-void
.end method

.method public static j(Lnet/lingala/zip4j/model/ZipParameters;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)Lnet/lingala/zip4j/model/ZipParameters;
    .registers 11

    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0, p0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>(Lnet/lingala/zip4j/model/ZipParameters;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_10

    iput-wide v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    goto :goto_16

    :cond_10
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v0, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    :goto_16
    iget-wide v4, p0, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_29

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gez v1, :cond_27

    iput-wide v2, v0, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    goto :goto_29

    :cond_27
    iput-wide v4, v0, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    :cond_29
    :goto_29
    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    iget-object v4, p0, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    invoke-static {v4}, La/b;->O(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-static {p1, p0}, Lo4/a;->g(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    :cond_3a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_4c

    sget-object p0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object p0, v0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    sget-object p0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object p0, v0, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-boolean v1, v0, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    goto/16 :goto_ba

    :cond_4c
    iget-boolean p0, v0, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    if-eqz p0, :cond_ae

    iget-object p0, v0, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne p0, v4, :cond_ae

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_a6

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_a6

    const/16 p0, 0x4000

    new-array p0, p0, [B

    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :cond_73
    :try_start_73
    invoke-virtual {v5, p0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_92

    invoke-virtual {v4, p0, v1, v6}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v6, v6

    invoke-virtual {p2, v6, v7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(J)V

    iget-boolean v6, p2, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    if-eqz v6, :cond_73

    sget-object p0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    iput-object p0, p2, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    sget-object p0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    iput-object p0, p2, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    :try_end_8d
    .catchall {:try_start_73 .. :try_end_8d} :catchall_9c

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    move-wide v6, v2

    goto :goto_99

    :cond_92
    :try_start_92
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_9c

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :goto_99
    iput-wide v6, v0, Lnet/lingala/zip4j/model/ZipParameters;->i:J

    goto :goto_ae

    :catchall_9c
    move-exception p0

    :try_start_9d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a1

    goto :goto_a5

    :catchall_a1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a5
    throw p0

    :cond_a6
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "input file is null or does not exist or cannot read. Cannot calculate CRC for the file"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ae
    :goto_ae
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-nez p0, :cond_ba

    sget-object p0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object p0, v0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    :cond_ba
    :goto_ba
    return-object v0
.end method


# virtual methods
.method public d()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .registers 2

    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->ADD_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method

.method public final g(Ljava/util/ArrayList;Lm4/i;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 13

    iget-object v0, p3, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-static {v2}, Lo4/a;->k(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_53

    sget-object v3, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_AND_LINKED_FILE:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    sget-object v3, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_28
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_6

    :cond_2f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Symlink target \'"

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v2}, Lo4/a;->o(Ljava/io/File;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' does not exist for link \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_53
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5a

    goto :goto_6

    :cond_5a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "File does not exist: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_71
    iget v0, p2, Lm4/i;->b:I

    new-array v0, v0, [B

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Ln4/a;->d:Lm4/n;

    iget-object v2, v2, Lm4/n;->h:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_86

    goto :goto_db

    :cond_86
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8a
    :goto_8a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, La/b;->O(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a3
    invoke-static {v2, p3}, Lo4/a;->g(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ln4/a;->d:Lm4/n;

    invoke-static {v5, v4}, La/b;->C(Lm4/n;Ljava/lang/String;)Lm4/g;

    move-result-object v4

    if-eqz v4, :cond_8a

    iget-boolean v5, p3, Lnet/lingala/zip4j/model/ZipParameters;->o:Z

    if-eqz v5, :cond_d7

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ln4/h$a;

    const/4 v5, 0x0

    invoke-direct {v2, v5, p4}, Ln4/h$a;-><init>(Ljava/util/concurrent/ExecutorService;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    new-instance v5, Ln4/j;

    iget-object v6, p0, Ln4/a;->d:Lm4/n;

    iget-object v7, p0, Ln4/a;->f:Lj4/a;

    invoke-direct {v5, v6, v7, v2}, Ln4/j;-><init>(Lm4/n;Lj4/a;Ln4/h$a;)V

    new-instance v2, Ln4/j$a;

    iget-object v4, v4, Lm4/b;->k:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4, p2}, Ln4/j$a;-><init>(Ljava/util/List;Lm4/i;)V

    invoke-virtual {v5, v2}, Ln4/h;->b(Lm4/m;)V

    invoke-virtual {p0}, Ln4/h;->f()V

    goto :goto_8a

    :cond_d7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8a

    :cond_db
    :goto_db
    new-instance p1, Ll4/h;

    iget-object v2, p0, Ln4/a;->d:Lm4/n;

    iget-object v4, v2, Lm4/n;->h:Ljava/io/File;

    iget-wide v5, v2, Lm4/n;->g:J

    invoke-direct {p1, v4, v5, v6}, Ll4/h;-><init>(Ljava/io/File;J)V

    :try_start_e6
    iget-object v2, p0, Ln4/a;->d:Lm4/n;

    iget-object v2, v2, Lm4/n;->h:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_104

    iget-object v2, p0, Ln4/a;->d:Lm4/n;

    iget-boolean v4, v2, Lm4/n;->i:Z

    if-eqz v4, :cond_fb

    iget-object v2, v2, Lm4/n;->e:Lm4/k;

    iget-wide v4, v2, Lm4/k;->j:J

    goto :goto_ff

    :cond_fb
    iget-object v2, v2, Lm4/n;->c:Lm4/d;

    iget-wide v4, v2, Lm4/d;->f:J

    :goto_ff
    iget-object v2, p1, Ll4/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_104
    new-instance v2, Ll4/k;

    iget-object v4, p0, Ln4/a;->e:[C

    iget-object v5, p0, Ln4/a;->d:Lm4/n;

    invoke-direct {v2, p1, v4, p2, v5}, Ll4/k;-><init>(Ljava/io/OutputStream;[CLm4/i;Lm4/n;)V
    :try_end_10d
    .catchall {:try_start_e6 .. :try_end_10d} :catchall_19f

    :try_start_10d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_111
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {p0}, Ln4/h;->f()V

    invoke-static {p3, v1, p4}, Ln4/a;->j(Lnet/lingala/zip4j/model/ZipParameters;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lo4/a;->k(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_156

    sget-object v5, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iget-object v6, v4, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_147

    sget-object v6, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_AND_LINKED_FILE:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iget-object v7, v4, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_145

    goto :goto_147

    :cond_145
    move v6, v3

    goto :goto_148

    :cond_147
    :goto_147
    const/4 v6, 0x1

    :goto_148
    if-eqz v6, :cond_156

    invoke-virtual {p0, v1, v2, v4, p1}, Ln4/a;->h(Ljava/io/File;Ll4/k;Lnet/lingala/zip4j/model/ZipParameters;Ll4/h;)V

    iget-object v6, v4, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_156

    goto :goto_111

    :cond_156
    invoke-virtual {v2, v4}, Ll4/k;->e(Lnet/lingala/zip4j/model/ZipParameters;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_18a

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_18a

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16a
    .catchall {:try_start_10d .. :try_end_16a} :catchall_195

    :goto_16a
    :try_start_16a
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_17c

    invoke-virtual {v2, v0, v3, v5}, Ll4/k;->write([BII)V

    int-to-long v5, v5

    invoke-virtual {p4, v5, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(J)V

    invoke-virtual {p0}, Ln4/h;->f()V
    :try_end_17b
    .catchall {:try_start_16a .. :try_end_17b} :catchall_180

    goto :goto_16a

    :cond_17c
    :try_start_17c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_17f
    .catchall {:try_start_17c .. :try_end_17f} :catchall_195

    goto :goto_18a

    :catchall_180
    move-exception p2

    :try_start_181
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_184
    .catchall {:try_start_181 .. :try_end_184} :catchall_185

    goto :goto_189

    :catchall_185
    move-exception p3

    :try_start_186
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_189
    throw p2

    :cond_18a
    :goto_18a
    invoke-virtual {p0, v2, p1, v1, v3}, Ln4/a;->k(Ll4/k;Ll4/h;Ljava/io/File;Z)V
    :try_end_18d
    .catchall {:try_start_186 .. :try_end_18d} :catchall_195

    goto :goto_111

    :cond_18e
    :try_start_18e
    invoke-virtual {v2}, Ll4/k;->close()V
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_19f

    invoke-virtual {p1}, Ll4/h;->close()V

    return-void

    :catchall_195
    move-exception p2

    :try_start_196
    invoke-virtual {v2}, Ll4/k;->close()V
    :try_end_199
    .catchall {:try_start_196 .. :try_end_199} :catchall_19a

    goto :goto_19e

    :catchall_19a
    move-exception p3

    :try_start_19b
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19e
    throw p2
    :try_end_19f
    .catchall {:try_start_19b .. :try_end_19f} :catchall_19f

    :catchall_19f
    move-exception p2

    :try_start_1a0
    invoke-virtual {p1}, Ll4/h;->close()V
    :try_end_1a3
    .catchall {:try_start_1a0 .. :try_end_1a3} :catchall_1a4

    goto :goto_1a8

    :catchall_1a4
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a8
    throw p2
.end method

.method public final h(Ljava/io/File;Ll4/k;Lnet/lingala/zip4j/model/ZipParameters;Ll4/h;)V
    .registers 11

    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0, p3}, Lnet/lingala/zip4j/model/ZipParameters;-><init>(Lnet/lingala/zip4j/model/ZipParameters;)V

    iget-object p3, p3, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2d
    iput-object v1, v0, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    iput-boolean v5, v0, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    sget-object p3, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object p3, v0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {p2, v0}, Ll4/k;->e(Lnet/lingala/zip4j/model/ZipParameters;)V

    invoke-static {p1}, Lo4/a;->o(Ljava/io/File;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ll4/k;->write([B)V

    invoke-virtual {p0, p2, p4, p1, v4}, Ln4/a;->k(Ll4/k;Ll4/h;Ljava/io/File;Z)V

    return-void
.end method

.method public final i(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)J
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            ")J"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_6

    :cond_19
    iget-boolean v3, p2, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    if-eqz v3, :cond_2b

    iget-object v3, p2, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v3, v4, :cond_2b

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    goto :goto_2f

    :cond_2b
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    :goto_2f
    add-long/2addr v3, v0

    invoke-static {v2, p2}, Lo4/a;->g(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ln4/a;->d:Lm4/n;

    invoke-static {v1, v0}, La/b;->C(Lm4/n;Ljava/lang/String;)Lm4/g;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v1, p0, Ln4/a;->d:Lm4/n;

    iget-object v1, v1, Lm4/n;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-wide v5, v0, Lm4/b;->g:J

    sub-long/2addr v1, v5

    add-long/2addr v1, v3

    move-wide v0, v1

    goto :goto_6

    :cond_4a
    move-wide v0, v3

    goto :goto_6

    :cond_4c
    return-wide v0
.end method

.method public final k(Ll4/k;Ll4/h;Ljava/io/File;Z)V
    .registers 15

    invoke-virtual {p1}, Ll4/k;->a()Lm4/g;

    move-result-object p1

    invoke-static {p3}, Lo4/a;->c(Ljava/io/File;)[B

    move-result-object p3

    if-nez p4, :cond_14

    const/4 p4, 0x3

    aget-byte v0, p3, p4

    const/4 v1, 0x5

    invoke-static {v1, v0}, La/b;->f0(IB)B

    move-result v0

    aput-byte v0, p3, p4

    :cond_14
    iput-object p3, p1, Lm4/g;->v:[B

    iget-object p3, p0, Ln4/a;->f:Lj4/a;

    iget-object p4, p0, Ln4/a;->d:Lm4/n;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p4, :cond_126

    iget v0, p1, Lm4/g;->u:I

    iget v1, p2, Ll4/h;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_7f

    iget-object v0, p4, Lm4/n;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iget-object p4, p4, Lm4/n;->h:Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lo4/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz v0, :cond_4b

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_4b
    const-string v0, ""

    :goto_4d
    iget v1, p1, Lm4/g;->u:I

    const/16 v4, 0x9

    if-ge v1, v4, :cond_64

    const-string v1, ".z0"

    invoke-static {v0, p4, v1}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget v0, p1, Lm4/g;->u:I

    add-int/2addr v0, v2

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_74

    :cond_64
    const-string v1, ".z"

    invoke-static {v0, p4, v1}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget v0, p1, Lm4/g;->u:I

    add-int/2addr v0, v2

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_74
    new-instance v0, Ll4/h;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ll4/h;-><init>(Ljava/io/File;)V

    goto :goto_81

    :cond_7f
    move-object v0, p2

    move v2, v3

    :goto_81
    invoke-virtual {v0}, Ll4/h;->getFilePointer()J

    move-result-wide v4

    iget-wide v6, p1, Lm4/g;->w:J

    const-wide/16 v8, 0xe

    add-long/2addr v6, v8

    iget-object p4, v0, Ll4/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p4, p3, Lj4/a;->a:Ljava/lang/Object;

    check-cast p4, Lj4/a;

    iget-object v1, p3, Lj4/a;->b:[B

    iget-wide v6, p1, Lm4/b;->f:J

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7, v1}, Lj4/a;->x(J[B)V

    iget-object p4, p3, Lj4/a;->b:[B

    const/4 v1, 0x4

    invoke-virtual {v0, p4, v3, v1}, Ll4/h;->write([BII)V

    iget-wide v6, p1, Lm4/b;->h:J

    const-wide v8, 0xffffffffL

    cmp-long p4, v6, v8

    if-ltz p4, :cond_f4

    iget-object p4, p3, Lj4/a;->a:Ljava/lang/Object;

    check-cast p4, Lj4/a;

    iget-object v6, p3, Lj4/a;->b:[B

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9, v6}, Lj4/a;->x(J[B)V

    iget-object p4, p3, Lj4/a;->b:[B

    invoke-virtual {v0, p4, v3, v1}, Ll4/h;->write([BII)V

    iget-object p4, p3, Lj4/a;->b:[B

    invoke-virtual {v0, p4, v3, v1}, Ll4/h;->write([BII)V

    iget p4, p1, Lm4/b;->i:I

    add-int/2addr p4, v1

    add-int/lit8 p4, p4, 0x2

    add-int/lit8 p4, p4, 0x2

    iget-object v1, v0, Ll4/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v1

    if-ne v1, p4, :cond_e6

    iget-object p4, p3, Lj4/a;->a:Ljava/lang/Object;

    check-cast p4, Lj4/a;

    iget-wide v6, p1, Lm4/b;->h:J

    invoke-virtual {p4, v6, v7, v0}, Lj4/a;->w(JLjava/io/OutputStream;)V

    iget-object p3, p3, Lj4/a;->a:Ljava/lang/Object;

    check-cast p3, Lj4/a;

    iget-wide v6, p1, Lm4/b;->g:J

    invoke-virtual {p3, v6, v7, v0}, Lj4/a;->w(JLjava/io/OutputStream;)V

    goto :goto_11a

    :cond_e6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Unable to skip "

    const-string p3, " bytes to update LFH"

    invoke-static {p2, p4, p3}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f4
    iget-object p4, p3, Lj4/a;->a:Ljava/lang/Object;

    check-cast p4, Lj4/a;

    iget-object v6, p3, Lj4/a;->b:[B

    iget-wide v7, p1, Lm4/b;->g:J

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8, v6}, Lj4/a;->x(J[B)V

    iget-object p4, p3, Lj4/a;->b:[B

    invoke-virtual {v0, p4, v3, v1}, Ll4/h;->write([BII)V

    iget-object p4, p3, Lj4/a;->a:Ljava/lang/Object;

    check-cast p4, Lj4/a;

    iget-object v6, p3, Lj4/a;->b:[B

    iget-wide v7, p1, Lm4/b;->h:J

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8, v6}, Lj4/a;->x(J[B)V

    iget-object p1, p3, Lj4/a;->b:[B

    invoke-virtual {v0, p1, v3, v1}, Ll4/h;->write([BII)V

    :goto_11a
    if-eqz v2, :cond_120

    invoke-virtual {v0}, Ll4/h;->close()V

    goto :goto_125

    :cond_120
    iget-object p1, p2, Ll4/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_125
    return-void

    :cond_126
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid input parameters, cannot update local file header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
