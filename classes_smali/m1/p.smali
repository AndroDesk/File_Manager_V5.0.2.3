.class public final Lm1/p;
.super Ljava/lang/Object;
.source "RandomInputBuffer.java"


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:I

.field public c:Z

.field public d:[B

.field public final e:Lm1/l;

.field public f:Ljava/io/File;

.field public g:Z

.field public h:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lm1/l;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_17

    if-eqz p1, :cond_17

    iput-object p1, p0, Lm1/p;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lm1/p;->e:Lm1/l;

    const/16 p1, 0x2000

    new-array p1, p1, [B

    iput-object p1, p0, Lm1/p;->d:[B

    const/4 p1, 0x0

    iput p1, p0, Lm1/p;->b:I

    iput-boolean p1, p0, Lm1/p;->c:Z

    return-void

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "InputStream & NetCacheManager can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm1/p;->a:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iput-object v1, p0, Lm1/p;->a:Ljava/io/InputStream;

    :cond_b
    iget-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    iput-object v1, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    :cond_14
    iget-object v0, p0, Lm1/p;->f:Ljava/io/File;

    if-eqz v0, :cond_2c

    iget-object v2, p0, Lm1/p;->e:Lm1/l;

    iget-object v2, v2, Lm1/l;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_2a

    :cond_27
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_2a
    iput-object v1, p0, Lm1/p;->f:Ljava/io/File;

    :cond_2c
    iput-object v1, p0, Lm1/p;->d:[B

    const/4 v0, 0x0

    iput v0, p0, Lm1/p;->b:I

    iput-boolean v0, p0, Lm1/p;->c:Z
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(I)V
    .registers 8

    iget-boolean v0, p0, Lm1/p;->c:Z

    if-nez v0, :cond_aa

    iget v0, p0, Lm1/p;->b:I

    if-gt p1, v0, :cond_a

    goto/16 :goto_aa

    :cond_a
    rem-int/lit16 v0, p1, 0x2000

    if-nez v0, :cond_f

    goto :goto_15

    :cond_f
    div-int/lit16 p1, p1, 0x2000

    mul-int/lit16 p1, p1, 0x2000

    add-int/lit16 p1, p1, 0x2000

    :goto_15
    iget-boolean v0, p0, Lm1/p;->g:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lm1/p;->d:[B

    array-length v0, v0

    if-le p1, v0, :cond_4c

    iput-boolean v1, p0, Lm1/p;->g:Z

    :try_start_22
    iget-object v0, p0, Lm1/p;->e:Lm1/l;

    invoke-virtual {v0}, Lm1/l;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lm1/p;->f:Ljava/io/File;

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lm1/p;->f:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lm1/p;->d:[B

    iget v4, p0, Lm1/p;->b:I

    invoke-virtual {v0, v3, v2, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_3c
    .catch Ljava/io/InterruptedIOException; {:try_start_22 .. :try_end_3c} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3c} :catch_3d

    goto :goto_4c

    :catch_3d
    :try_start_3d
    iget-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_44
    .catch Ljava/io/InterruptedIOException; {:try_start_3d .. :try_end_44} :catch_48
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_44} :catch_44

    :catch_44
    :cond_44
    const/4 v0, 0x0

    iput-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    goto :goto_4c

    :catch_48
    move-exception p1

    throw p1

    :catch_4a
    move-exception p1

    throw p1

    :cond_4c
    :goto_4c
    iget-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_81

    iget-object v0, p0, Lm1/p;->d:[B

    array-length v3, v0

    if-le p1, v3, :cond_65

    array-length v0, v0

    :goto_56
    mul-int/lit8 v0, v0, 0x2

    if-ge v0, p1, :cond_5b

    goto :goto_56

    :cond_5b
    new-array v0, v0, [B

    iget-object v3, p0, Lm1/p;->d:[B

    array-length v4, v3

    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lm1/p;->d:[B

    :cond_65
    iget-object v0, p0, Lm1/p;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lm1/p;->d:[B

    iget v3, p0, Lm1/p;->b:I

    array-length v4, v2

    sub-int/2addr v4, v3

    sub-int/2addr p1, v3

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_7e

    iget v0, p0, Lm1/p;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lm1/p;->b:I

    goto :goto_aa

    :cond_7e
    iput-boolean v1, p0, Lm1/p;->c:Z

    goto :goto_aa

    :cond_81
    iget-object v0, p0, Lm1/p;->a:Ljava/io/InputStream;

    iget-object v3, p0, Lm1/p;->d:[B

    array-length v4, v3

    iget v5, p0, Lm1/p;->b:I

    sub-int/2addr p1, v5

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, v3, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_a8

    iget-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    iget v1, p0, Lm1/p;->b:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lm1/p;->d:[B

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget v0, p0, Lm1/p;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lm1/p;->b:I

    goto :goto_aa

    :cond_a8
    iput-boolean v1, p0, Lm1/p;->c:Z

    :cond_aa
    :goto_aa
    return-void
.end method

.method public final declared-synchronized c(I[BII)I
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm1/p;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_64

    if-eqz p2, :cond_5c

    or-int v0, p3, p4

    if-ltz v0, :cond_56

    array-length v0, p2
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_6c

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_56

    const/4 v0, 0x0

    if-nez p4, :cond_14

    monitor-exit p0

    return v0

    :cond_14
    add-int v1, p1, p4

    :try_start_16
    iget v2, p0, Lm1/p;->b:I

    if-le v1, v2, :cond_1d

    invoke-virtual {p0, v1}, Lm1/p;->b(I)V

    :cond_1d
    if-nez p4, :cond_20

    goto :goto_4c

    :cond_20
    iget-boolean v1, p0, Lm1/p;->c:Z

    if-eqz v1, :cond_2a

    iget v1, p0, Lm1/p;->b:I

    if-lt p1, v1, :cond_2a

    const/4 v0, -0x1

    goto :goto_4c

    :cond_2a
    iget v1, p0, Lm1/p;->b:I

    if-gt p1, v1, :cond_4e

    if-ne p1, v1, :cond_31

    goto :goto_4c

    :cond_31
    sub-int/2addr v1, p1

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    iget-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_41

    iget-object v0, p0, Lm1/p;->d:[B

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, p4

    goto :goto_4c

    :cond_41
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_4b
    .catchall {:try_start_16 .. :try_end_4b} :catchall_6c

    move v0, p1

    :goto_4c
    monitor-exit p0

    return v0

    :cond_4e
    :try_start_4e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "from > pos"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_56
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_5c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_64
    new-instance p1, Ljava/io/IOException;

    const-string p2, "RandomInputBuffer has been closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6c
    .catchall {:try_start_4e .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
