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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IZ)V
    .registers 6

    invoke-direct {p0}, Lk4/h;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lk4/m;->e:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lk4/m;->f:[B

    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lk4/m;->a:Ljava/io/RandomAccessFile;

    iput-object p1, p0, Lk4/m;->b:Ljava/io/File;

    iput-boolean p3, p0, Lk4/m;->d:Z

    iput p2, p0, Lk4/m;->c:I

    if-eqz p3, :cond_22

    iput p2, p0, Lk4/m;->e:I

    :cond_22
    return-void
.end method


# virtual methods
.method public final a(Lm4/g;)V
    .registers 5

    iget-boolean v0, p0, Lk4/m;->d:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lk4/m;->e:I

    iget v1, p1, Lm4/g;->u:I

    if-eq v0, v1, :cond_11

    invoke-virtual {p0, v1}, Lk4/m;->e(I)V

    iget v0, p1, Lm4/g;->u:I

    iput v0, p0, Lk4/m;->e:I

    :cond_11
    iget-object v0, p0, Lk4/m;->a:Ljava/io/RandomAccessFile;

    iget-wide v1, p1, Lm4/g;->w:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Lk4/m;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_7
    return-void
.end method

.method public final e(I)V
    .registers 8

    iget v0, p0, Lk4/m;->c:I

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lk4/m;->b:Ljava/io/File;

    goto :goto_3b

    :cond_7
    iget-object v0, p0, Lk4/m;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-lt p1, v1, :cond_14

    const-string v1, ".z"

    goto :goto_16

    :cond_14
    const-string v1, ".z0"

    :goto_16
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p1, v2

    :goto_3b
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lk4/m;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lk4/m;->a:Ljava/io/RandomAccessFile;

    return-void

    :cond_54
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zip split file does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final read()I
    .registers 3

    iget-object v0, p0, Lk4/m;->f:[B

    invoke-virtual {p0, v0}, Lk4/m;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lk4/m;->f:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public final read([B)I
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/m;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .registers 5

    iget-object v0, p0, Lk4/m;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p2

    if-ne p2, p3, :cond_b

    const/4 v0, -0x1

    if-ne p2, v0, :cond_29

    :cond_b
    iget-boolean v0, p0, Lk4/m;->d:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lk4/m;->e:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lk4/m;->e(I)V

    iget v0, p0, Lk4/m;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk4/m;->e:I

    if-gez p2, :cond_1f

    const/4 p2, 0x0

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
