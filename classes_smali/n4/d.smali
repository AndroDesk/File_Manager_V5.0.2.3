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
.method public constructor <init>(Ln4/h$a;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ln4/h;-><init>(Ln4/h$a;)V

    .line 4
    return-void
.end method

.method public static g(Ljava/io/File;Ljava/io/File;Z)V
    .registers 3

    .line 1
    if-eqz p2, :cond_1f

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_17

    .line 9
    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_f

    .line 15
    goto :goto_25

    .line 16
    :cond_f
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 18
    const-string p1, "cannot rename modified zip file"

    .line 20
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0

    .line 24
    :cond_17
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 26
    const-string p1, "cannot delete old zip file"

    .line 28
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0

    .line 32
    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_26

    .line 38
    :goto_25
    return-void

    .line 39
    :cond_26
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 41
    const-string p1, "Could not delete temporary file"

    .line 43
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0
.end method

.method public static h(Ljava/io/RandomAccessFile;Ll4/h;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)V
    .registers 12

    .line 1
    add-long/2addr p4, p2

    .line 2
    const-wide/16 v0, 0x0

    .line 4
    cmp-long v2, p2, v0

    .line 6
    if-ltz v2, :cond_54

    .line 8
    cmp-long v2, p4, v0

    .line 10
    if-ltz v2, :cond_54

    .line 12
    cmp-long v2, p2, p4

    .line 14
    if-gtz v2, :cond_54

    .line 16
    if-nez v2, :cond_12

    .line 18
    goto :goto_4c

    .line 19
    :cond_12
    :try_start_12
    invoke-virtual {p0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 22
    sub-long/2addr p4, p2

    .line 23
    int-to-long p2, p7

    .line 24
    cmp-long p2, p4, p2

    .line 26
    if-gez p2, :cond_1f

    .line 28
    long-to-int p2, p4

    .line 29
    new-array p2, p2, [B

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    new-array p2, p7, [B

    .line 34
    :cond_21
    :goto_21
    invoke-virtual {p0, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 37
    move-result p3

    .line 38
    const/4 p7, -0x1

    .line 39
    if-eq p3, p7, :cond_4c

    .line 41
    const/4 p7, 0x0

    .line 42
    invoke-virtual {p1, p2, p7, p3}, Ll4/h;->write([BII)V

    .line 45
    int-to-long v2, p3

    .line 46
    invoke-virtual {p6, v2, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(J)V

    .line 49
    iget-boolean p3, p6, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    .line 51
    if-eqz p3, :cond_39

    .line 53
    sget-object p0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 55
    iput-object p0, p6, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 57
    goto :goto_4c

    .line 58
    :cond_39
    add-long/2addr v0, v2

    .line 59
    cmp-long p3, v0, p4

    .line 61
    if-nez p3, :cond_3f

    .line 63
    goto :goto_4c

    .line 64
    :cond_3f
    array-length p3, p2

    .line 65
    int-to-long v2, p3

    .line 66
    add-long/2addr v2, v0

    .line 67
    cmp-long p3, v2, p4

    .line 69
    if-lez p3, :cond_21

    .line 71
    sub-long p2, p4, v0

    .line 73
    long-to-int p2, p2

    .line 74
    new-array p2, p2, [B
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_4b} :catch_4d

    .line 76
    goto :goto_21

    .line 77
    :cond_4c
    :goto_4c
    return-void

    .line 78
    :catch_4d
    move-exception p0

    .line 79
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 81
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 84
    throw p1

    .line 85
    :cond_54
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 87
    const-string p1, "invalid offsets"

    .line 89
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p0
.end method

.method public static i(Ljava/util/ArrayList;Lm4/g;)I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_17

    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lm4/g;

    .line 14
    invoke-virtual {v1, p1}, Lm4/g;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_14

    .line 20
    return v0

    .line 21
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_17
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 26
    const-string p1, "Could not find file header in list of central directory file headers"

    .line 28
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0
.end method
