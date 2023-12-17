.class public final Lk4/g;
.super Ljava/io/RandomAccessFile;
.source "NumberedSplitRandomAccessFile.java"


# instance fields
.field public a:J

.field public b:[Ljava/io/File;

.field public c:Ljava/io/RandomAccessFile;

.field public d:[B

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;)V
    .registers 11

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [B

    .line 7
    iput-object v1, p0, Lk4/g;->d:[B

    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lk4/g;->e:I

    .line 12
    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    .line 15
    sget-object v2, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->WRITE:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 17
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_7f

    .line 27
    array-length v2, p3

    .line 28
    move v3, v0

    .line 29
    :goto_1c
    if-ge v1, v2, :cond_6d

    .line 31
    aget-object v4, p3, v1

    .line 33
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 37
    const-string v5, "."

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v6

    .line 43
    if-nez v6, :cond_2f

    .line 45
    const-string v4, ""

    .line 47
    goto :goto_38

    .line 48
    :cond_2f
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 51
    move-result v5

    .line 52
    add-int/2addr v5, v0

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    :goto_38
    :try_start_38
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 60
    move-result v5

    .line 61
    if-ne v3, v5, :cond_43

    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 67
    goto :goto_1c

    .line 68
    :cond_43
    new-instance p1, Ljava/io/IOException;

    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const-string p3, "Split file number "

    .line 77
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string p3, " does not exist"

    .line 85
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p2

    .line 92
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p1
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_5f} :catch_5f

    .line 96
    :catch_5f
    new-instance p1, Ljava/io/IOException;

    .line 98
    const-string p2, "Split file extension not in expected format. Found: "

    .line 100
    const-string p3, " expected of format: .001, .002, etc"

    .line 102
    invoke-static {p2, v4, p3}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object p2

    .line 106
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p1

    .line 110
    :cond_6d
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 112
    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    iput-object v0, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    .line 117
    iput-object p3, p0, Lk4/g;->b:[Ljava/io/File;

    .line 119
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 122
    move-result-wide v0

    .line 123
    iput-wide v0, p0, Lk4/g;->a:J

    .line 125
    iput-object p2, p0, Lk4/g;->f:Ljava/lang/String;

    .line 127
    return-void

    .line 128
    :cond_7f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 130
    const-string p2, "write mode is not allowed for NumberedSplitRandomAccessFile"

    .line 132
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p1
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    .line 1
    iget v0, p0, Lk4/g;->e:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lk4/g;->b:[Ljava/io/File;

    .line 8
    array-length v0, v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    if-gt p1, v0, :cond_23

    .line 13
    iget-object v0, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    .line 15
    if-eqz v0, :cond_13

    .line 17
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 20
    :cond_13
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 22
    iget-object v1, p0, Lk4/g;->b:[Ljava/io/File;

    .line 24
    aget-object v1, v1, p1

    .line 26
    iget-object v2, p0, Lk4/g;->f:Ljava/lang/String;

    .line 28
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    iput-object v0, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    .line 33
    iput p1, p0, Lk4/g;->e:I

    .line 35
    return-void

    .line 36
    :cond_23
    new-instance p1, Ljava/io/IOException;

    .line 38
    const-string v0, "split counter greater than number of split files"

    .line 40
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p1
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 8
    :cond_7
    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    .line 11
    return-void
.end method

.method public final getFilePointer()J
    .registers 3

    .line 1
    iget-object v0, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final length()J
    .registers 3

    .line 1
    iget-object v0, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final read()I
    .registers 3

    .line 1
    iget-object v0, p0, Lk4/g;->d:[B

    invoke-virtual {p0, v0}, Lk4/g;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    .line 2
    :cond_a
    iget-object v0, p0, Lk4/g;->d:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .registers 4

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/g;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .registers 7

    .line 4
    iget-object v0, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 5
    iget v0, p0, Lk4/g;->e:I

    iget-object v2, p0, Lk4/g;->b:[Ljava/io/File;

    array-length v2, v2

    add-int/2addr v2, v1

    if-ne v0, v2, :cond_12

    return v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lk4/g;->a(I)V

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lk4/g;->read([BII)I

    move-result p1

    return p1

    :cond_1c
    return v0
.end method

.method public final seek(J)V
    .registers 9

    .line 1
    iget-wide v0, p0, Lk4/g;->a:J

    .line 3
    div-long v0, p1, v0

    .line 5
    long-to-int v0, v0

    .line 6
    iget v1, p0, Lk4/g;->e:I

    .line 8
    if-eq v0, v1, :cond_c

    .line 10
    invoke-virtual {p0, v0}, Lk4/g;->a(I)V

    .line 13
    :cond_c
    iget-object v1, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    .line 15
    int-to-long v2, v0

    .line 16
    iget-wide v4, p0, Lk4/g;->a:J

    .line 18
    mul-long/2addr v2, v4

    .line 19
    sub-long/2addr p1, v2

    .line 20
    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 23
    return-void
.end method

.method public final write(I)V
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final write([B)V
    .registers 4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/g;->write([BII)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final write([BII)V
    .registers 4

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
