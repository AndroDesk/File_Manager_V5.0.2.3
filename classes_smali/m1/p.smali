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
.method public constructor <init>(Ljava/io/InputStream;Lm1/l;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-eqz p2, :cond_17

    .line 6
    if-eqz p1, :cond_17

    .line 8
    iput-object p1, p0, Lm1/p;->a:Ljava/io/InputStream;

    .line 10
    iput-object p2, p0, Lm1/p;->e:Lm1/l;

    .line 12
    const/16 p1, 0x2000

    .line 14
    new-array p1, p1, [B

    .line 16
    iput-object p1, p0, Lm1/p;->d:[B

    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lm1/p;->b:I

    .line 21
    iput-boolean p1, p0, Lm1/p;->c:Z

    .line 23
    return-void

    .line 24
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    const-string p2, "InputStream & NetCacheManager can not be null."

    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lm1/p;->a:Ljava/io/InputStream;

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 10
    iput-object v1, p0, Lm1/p;->a:Ljava/io/InputStream;

    .line 12
    :cond_b
    iget-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    .line 14
    if-eqz v0, :cond_14

    .line 16
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 19
    iput-object v1, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    .line 21
    :cond_14
    iget-object v0, p0, Lm1/p;->f:Ljava/io/File;

    .line 23
    if-eqz v0, :cond_2c

    .line 25
    iget-object v2, p0, Lm1/p;->e:Lm1/l;

    .line 27
    iget-object v2, v2, Lm1/l;->d:Ljava/lang/String;

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_27

    .line 39
    goto :goto_2a

    .line 40
    :cond_27
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 43
    :goto_2a
    iput-object v1, p0, Lm1/p;->f:Ljava/io/File;

    .line 45
    :cond_2c
    iput-object v1, p0, Lm1/p;->d:[B

    .line 47
    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lm1/p;->b:I

    .line 50
    iput-boolean v0, p0, Lm1/p;->c:Z
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_35
    move-exception v0

    .line 55
    monitor-exit p0

    .line 56
    throw v0
.end method

.method public final b(I)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lm1/p;->c:Z

    .line 3
    if-nez v0, :cond_aa

    .line 5
    iget v0, p0, Lm1/p;->b:I

    .line 7
    if-gt p1, v0, :cond_a

    .line 9
    goto/16 :goto_aa

    .line 11
    :cond_a
    rem-int/lit16 v0, p1, 0x2000

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_15

    .line 16
    :cond_f
    div-int/lit16 p1, p1, 0x2000

    .line 18
    mul-int/lit16 p1, p1, 0x2000

    .line 20
    add-int/lit16 p1, p1, 0x2000

    .line 22
    :goto_15
    iget-boolean v0, p0, Lm1/p;->g:Z

    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v0, :cond_4c

    .line 28
    iget-object v0, p0, Lm1/p;->d:[B

    .line 30
    array-length v0, v0

    .line 31
    if-le p1, v0, :cond_4c

    .line 33
    iput-boolean v1, p0, Lm1/p;->g:Z

    .line 35
    :try_start_22
    iget-object v0, p0, Lm1/p;->e:Lm1/l;

    .line 37
    invoke-virtual {v0}, Lm1/l;->a()Ljava/io/File;

    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lm1/p;->f:Ljava/io/File;

    .line 43
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 45
    iget-object v3, p0, Lm1/p;->f:Ljava/io/File;

    .line 47
    const-string v4, "rw"

    .line 49
    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    iput-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    .line 54
    iget-object v3, p0, Lm1/p;->d:[B

    .line 56
    iget v4, p0, Lm1/p;->b:I

    .line 58
    invoke-virtual {v0, v3, v2, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_3c
    .catch Ljava/io/InterruptedIOException; {:try_start_22 .. :try_end_3c} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3c} :catch_3d

    .line 61
    goto :goto_4c

    .line 62
    :catch_3d
    :try_start_3d
    iget-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    .line 64
    if-eqz v0, :cond_44

    .line 66
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_44
    .catch Ljava/io/InterruptedIOException; {:try_start_3d .. :try_end_44} :catch_48
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_44} :catch_44

    .line 69
    :catch_44
    :cond_44
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    .line 72
    goto :goto_4c

    .line 73
    :catch_48
    move-exception p1

    .line 74
    throw p1

    .line 75
    :catch_4a
    move-exception p1

    .line 76
    throw p1

    .line 77
    :cond_4c
    :goto_4c
    iget-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    .line 79
    if-nez v0, :cond_81

    .line 81
    iget-object v0, p0, Lm1/p;->d:[B

    .line 83
    array-length v3, v0

    .line 84
    if-le p1, v3, :cond_65

    .line 86
    array-length v0, v0

    .line 87
    :goto_56
    mul-int/lit8 v0, v0, 0x2

    .line 89
    if-ge v0, p1, :cond_5b

    .line 91
    goto :goto_56

    .line 92
    :cond_5b
    new-array v0, v0, [B

    .line 94
    iget-object v3, p0, Lm1/p;->d:[B

    .line 96
    array-length v4, v3

    .line 97
    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iput-object v0, p0, Lm1/p;->d:[B

    .line 102
    :cond_65
    iget-object v0, p0, Lm1/p;->a:Ljava/io/InputStream;

    .line 104
    iget-object v2, p0, Lm1/p;->d:[B

    .line 106
    iget v3, p0, Lm1/p;->b:I

    .line 108
    array-length v4, v2

    .line 109
    sub-int/2addr v4, v3

    .line 110
    sub-int/2addr p1, v3

    .line 111
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    .line 114
    move-result p1

    .line 115
    invoke-virtual {v0, v2, v3, p1}, Ljava/io/InputStream;->read([BII)I

    .line 118
    move-result p1

    .line 119
    if-ltz p1, :cond_7e

    .line 121
    iget v0, p0, Lm1/p;->b:I

    .line 123
    add-int/2addr v0, p1

    .line 124
    iput v0, p0, Lm1/p;->b:I

    .line 126
    goto :goto_aa

    .line 127
    :cond_7e
    iput-boolean v1, p0, Lm1/p;->c:Z

    .line 129
    goto :goto_aa

    .line 130
    :cond_81
    iget-object v0, p0, Lm1/p;->a:Ljava/io/InputStream;

    .line 132
    iget-object v3, p0, Lm1/p;->d:[B

    .line 134
    array-length v4, v3

    .line 135
    iget v5, p0, Lm1/p;->b:I

    .line 137
    sub-int/2addr p1, v5

    .line 138
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    .line 141
    move-result p1

    .line 142
    invoke-virtual {v0, v3, v2, p1}, Ljava/io/InputStream;->read([BII)I

    .line 145
    move-result p1

    .line 146
    if-ltz p1, :cond_a8

    .line 148
    iget-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    .line 150
    iget v1, p0, Lm1/p;->b:I

    .line 152
    int-to-long v3, v1

    .line 153
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 156
    iget-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    .line 158
    iget-object v1, p0, Lm1/p;->d:[B

    .line 160
    invoke-virtual {v0, v1, v2, p1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 163
    iget v0, p0, Lm1/p;->b:I

    .line 165
    add-int/2addr v0, p1

    .line 166
    iput v0, p0, Lm1/p;->b:I

    .line 168
    goto :goto_aa

    .line 169
    :cond_a8
    iput-boolean v1, p0, Lm1/p;->c:Z

    .line 171
    :cond_aa
    :goto_aa
    return-void
.end method

.method public final declared-synchronized c(I[BII)I
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lm1/p;->a:Ljava/io/InputStream;

    .line 4
    if-eqz v0, :cond_64

    .line 6
    if-eqz p2, :cond_5c

    .line 8
    or-int v0, p3, p4

    .line 10
    if-ltz v0, :cond_56

    .line 12
    array-length v0, p2
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_6c

    .line 13
    sub-int/2addr v0, p4

    .line 14
    if-gt p3, v0, :cond_56

    .line 16
    const/4 v0, 0x0

    .line 17
    if-nez p4, :cond_14

    .line 19
    monitor-exit p0

    .line 20
    return v0

    .line 21
    :cond_14
    add-int v1, p1, p4

    .line 23
    :try_start_16
    iget v2, p0, Lm1/p;->b:I

    .line 25
    if-le v1, v2, :cond_1d

    .line 27
    invoke-virtual {p0, v1}, Lm1/p;->b(I)V

    .line 30
    :cond_1d
    if-nez p4, :cond_20

    .line 32
    goto :goto_4c

    .line 33
    :cond_20
    iget-boolean v1, p0, Lm1/p;->c:Z

    .line 35
    if-eqz v1, :cond_2a

    .line 37
    iget v1, p0, Lm1/p;->b:I

    .line 39
    if-lt p1, v1, :cond_2a

    .line 41
    const/4 v0, -0x1

    .line 42
    goto :goto_4c

    .line 43
    :cond_2a
    iget v1, p0, Lm1/p;->b:I

    .line 45
    if-gt p1, v1, :cond_4e

    .line 47
    if-ne p1, v1, :cond_31

    .line 49
    goto :goto_4c

    .line 50
    :cond_31
    sub-int/2addr v1, p1

    .line 51
    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    .line 54
    move-result p4

    .line 55
    iget-object v0, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    .line 57
    if-nez v0, :cond_41

    .line 59
    iget-object v0, p0, Lm1/p;->d:[B

    .line 61
    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    move v0, p4

    .line 65
    goto :goto_4c

    .line 66
    :cond_41
    int-to-long v1, p1

    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 70
    iget-object p1, p0, Lm1/p;->h:Ljava/io/RandomAccessFile;

    .line 72
    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 75
    move-result p1
    :try_end_4b
    .catchall {:try_start_16 .. :try_end_4b} :catchall_6c

    .line 76
    move v0, p1

    .line 77
    :goto_4c
    monitor-exit p0

    .line 78
    return v0

    .line 79
    :cond_4e
    :try_start_4e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 81
    const-string p2, "from > pos"

    .line 83
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p1

    .line 87
    :cond_56
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 89
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 92
    throw p1

    .line 93
    :cond_5c
    new-instance p1, Ljava/lang/NullPointerException;

    .line 95
    const-string p2, "buffer == null"

    .line 97
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p1

    .line 101
    :cond_64
    new-instance p1, Ljava/io/IOException;

    .line 103
    const-string p2, "RandomInputBuffer has been closed."

    .line 105
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p1
    :try_end_6c
    .catchall {:try_start_4e .. :try_end_6c} :catchall_6c

    .line 109
    :catchall_6c
    move-exception p1

    .line 110
    monitor-exit p0

    .line 111
    throw p1
.end method
