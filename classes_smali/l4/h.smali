.class public final Ll4/h;
.super Ljava/io/OutputStream;
.source "SplitOutputStream.java"

# interfaces
.implements Ll4/g;


# instance fields
.field public a:Ljava/io/RandomAccessFile;

.field public b:J

.field public c:Ljava/io/File;

.field public d:I

.field public e:J

.field public f:Lj4/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Ll4/h;-><init>(Ljava/io/File;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .registers 8

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Lj4/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lj4/a;-><init>(I)V

    iput-object v0, p0, Ll4/h;->f:Lj4/a;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_21

    const-wide/32 v2, 0x10000

    cmp-long v2, p2, v2

    if-ltz v2, :cond_19

    goto :goto_21

    :cond_19
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "split length less than minimum allowed split length of 65536 Bytes"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_21
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v3, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->WRITE:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Ll4/h;->a:Ljava/io/RandomAccessFile;

    iput-wide p2, p0, Ll4/h;->b:J

    iput-object p1, p0, Ll4/h;->c:Ljava/io/File;

    const/4 p1, 0x0

    iput p1, p0, Ll4/h;->d:I

    iput-wide v0, p0, Ll4/h;->e:J

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Ll4/h;->d:I

    return v0
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Ll4/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public final e()V
    .registers 7

    iget-object v0, p0, Ll4/h;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo4/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ll4/h;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ll4/h;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    const-string v2, ""

    goto :goto_36

    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ll4/h;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "file.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_36
    const-string v3, ".z0"

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ll4/h;->d:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Ll4/h;->d:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_5e

    const-string v3, ".z"

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ll4/h;->d:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5e
    new-instance v4, Ljava/io/File;

    invoke-static {v2, v0, v3}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ll4/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9f

    iget-object v0, p0, Ll4/h;->c:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_97

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ll4/h;->c:Ljava/io/File;

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Ll4/h;->c:Ljava/io/File;

    sget-object v2, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->WRITE:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ll4/h;->a:Ljava/io/RandomAccessFile;

    iget v0, p0, Ll4/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ll4/h;->d:I

    return-void

    :cond_97
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot rename newly created split file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "split file: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already exists in the current directory, cannot rename this file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFilePointer()J
    .registers 3

    iget-object v0, p0, Ll4/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public final write(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Ll4/h;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ll4/h;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 15

    if-gtz p3, :cond_3

    return-void

    :cond_3
    iget-wide v0, p0, Ll4/h;->b:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_17

    iget-object v0, p0, Ll4/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide p1, p0, Ll4/h;->e:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ll4/h;->e:J

    return-void

    :cond_17
    iget-wide v2, p0, Ll4/h;->e:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_29

    invoke-virtual {p0}, Ll4/h;->e()V

    iget-object v0, p0, Ll4/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long p1, p3

    iput-wide p1, p0, Ll4/h;->e:J

    goto :goto_92

    :cond_29
    int-to-long v4, p3

    add-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_88

    iget-object v0, p0, Ll4/h;->f:Lj4/a;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lj4/a;->l([BI)I

    move-result v0

    invoke-static {}, Lnet/lingala/zip4j/headers/HeaderSignature;->values()[Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v2

    array-length v3, v2

    move v6, v1

    :goto_3f
    if-ge v6, v3, :cond_55

    aget-object v7, v2, v6

    sget-object v8, Lnet/lingala/zip4j/headers/HeaderSignature;->SPLIT_ZIP:Lnet/lingala/zip4j/headers/HeaderSignature;

    if-eq v7, v8, :cond_52

    invoke-virtual {v7}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v7

    int-to-long v9, v0

    cmp-long v7, v7, v9

    if-nez v7, :cond_52

    const/4 v1, 0x1

    goto :goto_55

    :cond_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    :cond_55
    :goto_55
    if-eqz v1, :cond_62

    invoke-virtual {p0}, Ll4/h;->e()V

    iget-object v0, p0, Ll4/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iput-wide v4, p0, Ll4/h;->e:J

    goto :goto_92

    :cond_62
    iget-object p3, p0, Ll4/h;->a:Ljava/io/RandomAccessFile;

    iget-wide v0, p0, Ll4/h;->b:J

    iget-wide v2, p0, Ll4/h;->e:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p3, p1, p2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {p0}, Ll4/h;->e()V

    iget-object p3, p0, Ll4/h;->a:Ljava/io/RandomAccessFile;

    iget-wide v0, p0, Ll4/h;->b:J

    iget-wide v2, p0, Ll4/h;->e:J

    sub-long/2addr v0, v2

    long-to-int v2, v0

    add-int/2addr p2, v2

    sub-long v0, v4, v0

    long-to-int v0, v0

    invoke-virtual {p3, p1, p2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide p1, p0, Ll4/h;->b:J

    iget-wide v0, p0, Ll4/h;->e:J

    sub-long/2addr p1, v0

    sub-long/2addr v4, p1

    iput-wide v4, p0, Ll4/h;->e:J

    goto :goto_92

    :cond_88
    iget-object v0, p0, Ll4/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide p1, p0, Ll4/h;->e:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Ll4/h;->e:J

    :goto_92
    return-void
.end method
