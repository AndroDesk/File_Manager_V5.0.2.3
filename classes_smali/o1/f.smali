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

    const-string v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo1/f;->b:[B

    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo1/f;->c:[B

    const-string v0, "\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo1/f;->d:[B

    const-string v0, "--"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo1/f;->e:[B

    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo1/f;->f:[B

    const-string v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo1/f;->g:[B

    const-string v0, "; charset="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo1/f;->h:[B

    const-string v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo1/f;->i:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c([Lo1/f;[B)J
    .registers 14

    if-eqz p0, :cond_79

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_6
    array-length v5, p0

    if-ge v0, v5, :cond_68

    aget-object v5, p0, v0

    iput-object p1, v5, Lo1/f;->a:[B

    invoke-virtual {v5}, Lo1/f;->f()J

    move-result-wide v6

    cmp-long v6, v6, v1

    const-wide/16 v7, -0x1

    if-gez v6, :cond_19

    move-wide v5, v7

    goto :goto_5f

    :cond_19
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v9, Lo1/f;->e:[B

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    iget-object v9, v5, Lo1/f;->a:[B

    if-nez v9, :cond_29

    sget-object v9, Lo1/f;->b:[B

    :cond_29
    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    sget-object v9, Lo1/f;->c:[B

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5, v6}, Lo1/f;->i(Ljava/io/OutputStream;)V

    invoke-virtual {v5, v6}, Lo1/f;->g(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Lo1/f;->e()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4c

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    sget-object v11, Lo1/f;->i:[B

    invoke-virtual {v6, v11}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v10}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/OutputStream;->write([B)V

    :cond_4c
    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    int-to-long v9, v6

    invoke-virtual {v5}, Lo1/f;->f()J

    move-result-wide v5

    add-long/2addr v5, v9

    :goto_5f
    cmp-long v9, v5, v1

    if-gez v9, :cond_64

    return-wide v7

    :cond_64
    add-long/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_68
    sget-object p0, Lo1/f;->e:[B

    array-length v0, p0

    int-to-long v0, v0

    add-long/2addr v3, v0

    array-length p1, p1

    int-to-long v0, p1

    add-long/2addr v3, v0

    array-length p0, p0

    int-to-long p0, p0

    add-long/2addr v3, p0

    sget-object p0, Lo1/f;->c:[B

    array-length p0, p0

    int-to-long p0, p0

    add-long/2addr v3, p0

    return-wide v3

    :cond_79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parts may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Ljava/io/OutputStream;[Lo1/f;[B)V
    .registers 8

    if-eqz p1, :cond_65

    if-eqz p2, :cond_5d

    array-length v0, p2

    if-eqz v0, :cond_5d

    const/4 v0, 0x0

    :goto_8
    array-length v1, p1

    if-ge v0, v1, :cond_4c

    aget-object v1, p1, v0

    iput-object p2, v1, Lo1/f;->a:[B

    sget-object v2, Lo1/f;->e:[B

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, v1, Lo1/f;->a:[B

    if-nez v2, :cond_1a

    sget-object v2, Lo1/f;->b:[B

    :cond_1a
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lo1/f;->c:[B

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, p0}, Lo1/f;->i(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lo1/f;->g(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Lo1/f;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    sget-object v4, Lo1/f;->i:[B

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v3}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_3d
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, p0}, Lo1/f;->h(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_4c
    sget-object p1, Lo1/f;->e:[B

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    sget-object p1, Lo1/f;->c:[B

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "partBoundary may not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parts may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lo1/f;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    sget-object v1, Lo1/f;->c:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Lo1/f;->g:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lo1/f;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    sget-object v1, Lo1/f;->h:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_29
    return-void
.end method

.method public abstract h(Ljava/io/OutputStream;)V
.end method

.method public i(Ljava/io/OutputStream;)V
    .registers 4

    sget-object v0, Lo1/f;->f:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lo1/f;->d:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lo1/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    move-object v0, p0

    check-cast v0, Lo1/g;

    iget-object v0, v0, Lo1/g;->j:Ljava/lang/String;

    return-object v0
.end method
