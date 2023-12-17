.class public abstract Ln4/d;
.super Ln4/h;
.source "AbstractModifyFileTask.java"


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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ln4/h$a;)V
    .registers 2

    invoke-direct {p0, p1}, Ln4/h;-><init>(Ln4/h$a;)V

    return-void
.end method

.method public static g(Ljava/io/File;Ljava/io/File;Z)V
    .registers 3

    if-eqz p2, :cond_1f

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_25

    :cond_f
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "cannot rename modified zip file"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "cannot delete old zip file"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_26

    :goto_25
    return-void

    :cond_26
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "Could not delete temporary file"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/io/RandomAccessFile;Ll4/h;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)V
    .registers 12

    add-long/2addr p4, p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_54

    cmp-long v2, p4, v0

    if-ltz v2, :cond_54

    cmp-long v2, p2, p4

    if-gtz v2, :cond_54

    if-nez v2, :cond_12

    goto :goto_4c

    :cond_12
    :try_start_12
    invoke-virtual {p0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    sub-long/2addr p4, p2

    int-to-long p2, p7

    cmp-long p2, p4, p2

    if-gez p2, :cond_1f

    long-to-int p2, p4

    new-array p2, p2, [B

    goto :goto_21

    :cond_1f
    new-array p2, p7, [B

    :cond_21
    :goto_21
    invoke-virtual {p0, p2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p3

    const/4 p7, -0x1

    if-eq p3, p7, :cond_4c

    const/4 p7, 0x0

    invoke-virtual {p1, p2, p7, p3}, Ll4/h;->write([BII)V

    int-to-long v2, p3

    invoke-virtual {p6, v2, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(J)V

    iget-boolean p3, p6, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    if-eqz p3, :cond_39

    sget-object p0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    iput-object p0, p6, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    goto :goto_4c

    :cond_39
    add-long/2addr v0, v2

    cmp-long p3, v0, p4

    if-nez p3, :cond_3f

    goto :goto_4c

    :cond_3f
    array-length p3, p2

    int-to-long v2, p3

    add-long/2addr v2, v0

    cmp-long p3, v2, p4

    if-lez p3, :cond_21

    sub-long p2, p4, v0

    long-to-int p2, p2

    new-array p2, p2, [B
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_4b} :catch_4d

    goto :goto_21

    :cond_4c
    :goto_4c
    return-void

    :catch_4d
    move-exception p0

    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_54
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "invalid offsets"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Ljava/util/ArrayList;Lm4/g;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm4/g;

    invoke-virtual {v1, p1}, Lm4/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "Could not find file header in list of central directory file headers"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
