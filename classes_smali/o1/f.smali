.class public abstract Lo1/f;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field public static final b:[B

.field public static final c:[B

.field public static final d:[B

.field public static final e:[B

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B


# instance fields
.field public a:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "----------------314159265358979323846"

    .line 3
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lo1/f;->b:[B

    .line 9
    const-string v0, "\r\n"

    .line 11
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lo1/f;->c:[B

    .line 17
    const-string v0, "\""

    .line 19
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lo1/f;->d:[B

    .line 25
    const-string v0, "--"

    .line 27
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lo1/f;->e:[B

    .line 33
    const-string v0, "Content-Disposition: form-data; name="

    .line 35
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lo1/f;->f:[B

    .line 41
    const-string v0, "Content-Type: "

    .line 43
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lo1/f;->g:[B

    .line 49
    const-string v0, "; charset="

    .line 51
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lo1/f;->h:[B

    .line 57
    const-string v0, "Content-Transfer-Encoding: "

    .line 59
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lo1/f;->i:[B

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c([Lo1/f;[B)J
    .registers 14

    .line 1
    if-eqz p0, :cond_79

    .line 3
    const/4 v0, 0x0

    .line 4
    const-wide/16 v1, 0x0

    .line 6
    move-wide v3, v1

    .line 7
    :goto_6
    array-length v5, p0

    .line 8
    if-ge v0, v5, :cond_68

    .line 10
    aget-object v5, p0, v0

    .line 12
    iput-object p1, v5, Lo1/f;->a:[B

    .line 14
    invoke-virtual {v5}, Lo1/f;->f()J

    .line 17
    move-result-wide v6

    .line 18
    cmp-long v6, v6, v1

    .line 20
    const-wide/16 v7, -0x1

    .line 22
    if-gez v6, :cond_19

    .line 24
    move-wide v5, v7

    .line 25
    goto :goto_5f

    .line 26
    :cond_19
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 28
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    sget-object v9, Lo1/f;->e:[B

    .line 33
    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 36
    iget-object v9, v5, Lo1/f;->a:[B

    .line 38
    if-nez v9, :cond_29

    .line 40
    sget-object v9, Lo1/f;->b:[B

    .line 42
    :cond_29
    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 45
    sget-object v9, Lo1/f;->c:[B

    .line 47
    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 50
    invoke-virtual {v5, v6}, Lo1/f;->i(Ljava/io/OutputStream;)V

    .line 53
    invoke-virtual {v5, v6}, Lo1/f;->g(Ljava/io/OutputStream;)V

    .line 56
    invoke-virtual {v5}, Lo1/f;->e()Ljava/lang/String;

    .line 59
    move-result-object v10

    .line 60
    if-eqz v10, :cond_4c

    .line 62
    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 65
    sget-object v11, Lo1/f;->i:[B

    .line 67
    invoke-virtual {v6, v11}, Ljava/io/OutputStream;->write([B)V

    .line 70
    invoke-static {v10}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 73
    move-result-object v10

    .line 74
    invoke-virtual {v6, v10}, Ljava/io/OutputStream;->write([B)V

    .line 77
    :cond_4c
    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 80
    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 83
    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 86
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 89
    move-result v6

    .line 90
    int-to-long v9, v6

    .line 91
    invoke-virtual {v5}, Lo1/f;->f()J

    .line 94
    move-result-wide v5

    .line 95
    add-long/2addr v5, v9

    .line 96
    :goto_5f
    cmp-long v9, v5, v1

    .line 98
    if-gez v9, :cond_64

    .line 100
    return-wide v7

    .line 101
    :cond_64
    add-long/2addr v3, v5

    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 104
    goto :goto_6

    .line 105
    :cond_68
    sget-object p0, Lo1/f;->e:[B

    .line 107
    array-length v0, p0

    .line 108
    int-to-long v0, v0

    .line 109
    add-long/2addr v3, v0

    .line 110
    array-length p1, p1

    .line 111
    int-to-long v0, p1

    .line 112
    add-long/2addr v3, v0

    .line 113
    array-length p0, p0

    .line 114
    int-to-long p0, p0

    .line 115
    add-long/2addr v3, p0

    .line 116
    sget-object p0, Lo1/f;->c:[B

    .line 118
    array-length p0, p0

    .line 119
    int-to-long p0, p0

    .line 120
    add-long/2addr v3, p0

    .line 121
    return-wide v3

    .line 122
    :cond_79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 124
    const-string p1, "Parts may not be null"

    .line 126
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p0
.end method

.method public static j(Ljava/io/OutputStream;[Lo1/f;[B)V
    .registers 8

    .line 1
    if-eqz p1, :cond_65

    .line 3
    if-eqz p2, :cond_5d

    .line 5
    array-length v0, p2

    .line 6
    if-eqz v0, :cond_5d

    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_8
    array-length v1, p1

    .line 10
    if-ge v0, v1, :cond_4c

    .line 12
    aget-object v1, p1, v0

    .line 14
    iput-object p2, v1, Lo1/f;->a:[B

    .line 16
    sget-object v2, Lo1/f;->e:[B

    .line 18
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 21
    iget-object v2, v1, Lo1/f;->a:[B

    .line 23
    if-nez v2, :cond_1a

    .line 25
    sget-object v2, Lo1/f;->b:[B

    .line 27
    :cond_1a
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 30
    sget-object v2, Lo1/f;->c:[B

    .line 32
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 35
    invoke-virtual {v1, p0}, Lo1/f;->i(Ljava/io/OutputStream;)V

    .line 38
    invoke-virtual {v1, p0}, Lo1/f;->g(Ljava/io/OutputStream;)V

    .line 41
    invoke-virtual {v1}, Lo1/f;->e()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_3d

    .line 47
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 50
    sget-object v4, Lo1/f;->i:[B

    .line 52
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 55
    invoke-static {v3}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 62
    :cond_3d
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 65
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 68
    invoke-virtual {v1, p0}, Lo1/f;->h(Ljava/io/OutputStream;)V

    .line 71
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_8

    .line 77
    :cond_4c
    sget-object p1, Lo1/f;->e:[B

    .line 79
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 82
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 85
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 88
    sget-object p1, Lo1/f;->c:[B

    .line 90
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 93
    return-void

    .line 94
    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 96
    const-string p1, "partBoundary may not be empty"

    .line 98
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    throw p0

    .line 102
    :cond_65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 104
    const-string p1, "Parts may not be null"

    .line 106
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()J
.end method

.method public final g(Ljava/io/OutputStream;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lo1/f;->b()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_29

    .line 7
    sget-object v1, Lo1/f;->c:[B

    .line 9
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 12
    sget-object v1, Lo1/f;->g:[B

    .line 14
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 17
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 24
    invoke-virtual {p0}, Lo1/f;->a()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_29

    .line 30
    sget-object v1, Lo1/f;->h:[B

    .line 32
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 35
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 42
    :cond_29
    return-void
.end method

.method public abstract h(Ljava/io/OutputStream;)V
.end method

.method public i(Ljava/io/OutputStream;)V
    .registers 4

    .line 1
    sget-object v0, Lo1/f;->f:[B

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 6
    sget-object v0, Lo1/f;->d:[B

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {p0}, Lo1/f;->d()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 25
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lo1/g;

    .line 4
    iget-object v0, v0, Lo1/g;->j:Ljava/lang/String;

    .line 6
    return-object v0
.end method
