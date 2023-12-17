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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;)V
    .registers 11

    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Lk4/g;->d:[B

    const/4 v1, 0x0

    iput v1, p0, Lk4/g;->e:I

    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    sget-object v2, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->WRITE:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    array-length v2, p3

    move v3, v0

    :goto_1c
    if-ge v1, v2, :cond_6d

    aget-object v4, p3, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    const-string v4, ""

    goto :goto_38

    :cond_2f
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_38
    :try_start_38
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_43

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_43
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Split file number "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " does not exist"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_5f} :catch_5f

    :catch_5f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Split file extension not in expected format. Found: "

    const-string p3, " expected of format: .001, .002, etc"

    invoke-static {p2, v4, p3}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6d
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    iput-object p3, p0, Lk4/g;->b:[Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lk4/g;->a:J

    iput-object p2, p0, Lk4/g;->f:Ljava/lang/String;

    return-void

    :cond_7f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "write mode is not allowed for NumberedSplitRandomAccessFile"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    iget v0, p0, Lk4/g;->e:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lk4/g;->b:[Ljava/io/File;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_23

    iget-object v0, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_13
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lk4/g;->b:[Ljava/io/File;

    aget-object v1, v1, p1

    iget-object v2, p0, Lk4/g;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    iput p1, p0, Lk4/g;->e:I

    return-void

    :cond_23
    new-instance p1, Ljava/io/IOException;

    const-string v0, "split counter greater than number of split files"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_7
    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public final getFilePointer()J
    .registers 3

    iget-object v0, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public final length()J
    .registers 3

    iget-object v0, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final read()I
    .registers 3

    iget-object v0, p0, Lk4/g;->d:[B

    invoke-virtual {p0, v0}, Lk4/g;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lk4/g;->d:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/g;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .registers 7

    iget-object v0, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    iget v0, p0, Lk4/g;->e:I

    iget-object v2, p0, Lk4/g;->b:[Ljava/io/File;

    array-length v2, v2

    add-int/2addr v2, v1

    if-ne v0, v2, :cond_12

    return v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lk4/g;->a(I)V

    invoke-virtual {p0, p1, p2, p3}, Lk4/g;->read([BII)I

    move-result p1

    return p1

    :cond_1c
    return v0
.end method

.method public final seek(J)V
    .registers 9

    iget-wide v0, p0, Lk4/g;->a:J

    div-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lk4/g;->e:I

    if-eq v0, v1, :cond_c

    invoke-virtual {p0, v0}, Lk4/g;->a(I)V

    :cond_c
    iget-object v1, p0, Lk4/g;->c:Ljava/io/RandomAccessFile;

    int-to-long v2, v0

    iget-wide v4, p0, Lk4/g;->a:J

    mul-long/2addr v2, v4

    sub-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public final write(I)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final write([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/g;->write([BII)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final write([BII)V
    .registers 4

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
