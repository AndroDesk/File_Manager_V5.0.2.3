.class public final Lk4/m;
.super Lk4/h;
.source "ZipStandardSplitFileInputStream.java"


# instance fields
.field public a:Ljava/io/RandomAccessFile;

.field public b:Ljava/io/File;

.field public c:I

.field public d:Z

.field public e:I

.field public f:[B


# direct methods
.method public constructor <init>(Ljava/io/File;IZ)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lk4/h;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lk4/m;->e:I

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [B

    .line 10
    iput-object v0, p0, Lk4/m;->f:[B

    .line 12
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 14
    sget-object v1, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 16
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    iput-object v0, p0, Lk4/m;->a:Ljava/io/RandomAccessFile;

    .line 25
    iput-object p1, p0, Lk4/m;->b:Ljava/io/File;

    .line 27
    iput-boolean p3, p0, Lk4/m;->d:Z

    .line 29
    iput p2, p0, Lk4/m;->c:I

    .line 31
    if-eqz p3, :cond_22

    .line 33
    iput p2, p0, Lk4/m;->e:I

    .line 35
    :cond_22
    return-void
.end method


# virtual methods
.method public final a(Lm4/g;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lk4/m;->d:Z

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget v0, p0, Lk4/m;->e:I

    .line 7
    iget v1, p1, Lm4/g;->u:I

    .line 9
    if-eq v0, v1, :cond_11

    .line 11
    invoke-virtual {p0, v1}, Lk4/m;->e(I)V

    .line 14
    iget v0, p1, Lm4/g;->u:I

    .line 16
    iput v0, p0, Lk4/m;->e:I

    .line 18
    :cond_11
    iget-object v0, p0, Lk4/m;->a:Ljava/io/RandomAccessFile;

    .line 20
    iget-wide v1, p1, Lm4/g;->w:J

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 25
    return-void
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lk4/m;->a:Ljava/io/RandomAccessFile;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 8
    :cond_7
    return-void
.end method

.method public final e(I)V
    .registers 8

    .line 1
    iget v0, p0, Lk4/m;->c:I

    .line 3
    if-ne p1, v0, :cond_7

    .line 5
    iget-object p1, p0, Lk4/m;->b:Ljava/io/File;

    .line 7
    goto :goto_3b

    .line 8
    :cond_7
    iget-object v0, p0, Lk4/m;->b:Ljava/io/File;

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const/16 v1, 0x9

    .line 16
    if-lt p1, v1, :cond_14

    .line 18
    const-string v1, ".z"

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    const-string v1, ".z0"

    .line 23
    :goto_16
    new-instance v2, Ljava/io/File;

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const/4 v4, 0x0

    .line 31
    const-string v5, "."

    .line 33
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 36
    move-result v5

    .line 37
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    add-int/lit8 p1, p1, 0x1

    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    move-object p1, v2

    .line 60
    :goto_3b
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_54

    .line 66
    iget-object v0, p0, Lk4/m;->a:Ljava/io/RandomAccessFile;

    .line 68
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 71
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 73
    sget-object v1, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 75
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    iput-object v0, p0, Lk4/m;->a:Ljava/io/RandomAccessFile;

    .line 84
    return-void

    .line 85
    :cond_54
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    const-string v2, "zip split file does not exist: "

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 107
    throw v0
.end method

.method public final read()I
    .registers 3

    .line 1
    iget-object v0, p0, Lk4/m;->f:[B

    invoke-virtual {p0, v0}, Lk4/m;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    .line 2
    :cond_a
    iget-object v0, p0, Lk4/m;->f:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public final read([B)I
    .registers 4

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/m;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .registers 5

    .line 4
    iget-object v0, p0, Lk4/m;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p2

    if-ne p2, p3, :cond_b

    const/4 v0, -0x1

    if-ne p2, v0, :cond_29

    .line 5
    :cond_b
    iget-boolean v0, p0, Lk4/m;->d:Z

    if-eqz v0, :cond_29

    .line 6
    iget v0, p0, Lk4/m;->e:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lk4/m;->e(I)V

    .line 7
    iget v0, p0, Lk4/m;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk4/m;->e:I

    if-gez p2, :cond_1f

    const/4 p2, 0x0

    .line 8
    :cond_1f
    iget-object v0, p0, Lk4/m;->a:Ljava/io/RandomAccessFile;

    sub-int/2addr p3, p2

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-lez p1, :cond_29

    add-int/2addr p2, p1

    :cond_29
    return p2
.end method
