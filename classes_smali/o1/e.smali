.class public final Lo1/e;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "MultipartEntity.java"


# static fields
.field public static c:[B


# instance fields
.field public a:[Lo1/f;

.field public b:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 3
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lo1/e;->c:[B

    .line 9
    return-void
.end method

.method public constructor <init>([Lo1/f;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 4
    const-string v0, "multipart/form-data"

    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 9
    if-eqz p1, :cond_d

    .line 11
    iput-object p1, p0, Lo1/e;->a:[Lo1/f;

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string v0, "parts cannot be null"

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1
.end method


# virtual methods
.method public final a([Lo1/f;)V
    .registers 6

    .line 1
    if-eqz p1, :cond_24

    .line 3
    array-length v0, p1

    .line 4
    if-gtz v0, :cond_6

    .line 6
    goto :goto_24

    .line 7
    :cond_6
    iget-object v0, p0, Lo1/e;->a:[Lo1/f;

    .line 9
    if-eqz v0, :cond_22

    .line 11
    array-length v1, v0

    .line 12
    if-gtz v1, :cond_e

    .line 14
    goto :goto_22

    .line 15
    :cond_e
    array-length v1, v0

    .line 16
    array-length v2, p1

    .line 17
    add-int/2addr v1, v2

    .line 18
    new-array v1, v1, [Lo1/f;

    .line 20
    iput-object v1, p0, Lo1/e;->a:[Lo1/f;

    .line 22
    array-length v2, v0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget-object v1, p0, Lo1/e;->a:[Lo1/f;

    .line 29
    array-length v0, v0

    .line 30
    array-length v2, p1

    .line 31
    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    return-void

    .line 35
    :cond_22
    :goto_22
    iput-object p1, p0, Lo1/e;->a:[Lo1/f;

    .line 37
    :cond_24
    :goto_24
    return-void
.end method

.method public final b()[B
    .registers 7

    .line 1
    iget-object v0, p0, Lo1/e;->b:[B

    .line 3
    if-nez v0, :cond_26

    .line 5
    new-instance v0, Ljava/util/Random;

    .line 7
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 10
    const/16 v1, 0xb

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, 0x1e

    .line 18
    new-array v2, v1, [B

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_14
    if-ge v3, v1, :cond_24

    .line 23
    sget-object v4, Lo1/e;->c:[B

    .line 25
    array-length v5, v4

    .line 26
    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    .line 29
    move-result v5

    .line 30
    aget-byte v4, v4, v5

    .line 32
    aput-byte v4, v2, v3

    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 36
    goto :goto_14

    .line 37
    :cond_24
    iput-object v2, p0, Lo1/e;->b:[B

    .line 39
    :cond_26
    iget-object v0, p0, Lo1/e;->b:[B

    .line 41
    return-object v0
.end method

.method public final getContent()Ljava/io/InputStream;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lo1/e;->isRepeatable()Z

    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 6
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 9
    iget-object v1, p0, Lo1/e;->a:[Lo1/f;

    .line 11
    iget-object v2, p0, Lo1/e;->b:[B

    .line 13
    invoke-static {v0, v1, v2}, Lo1/f;->j(Ljava/io/OutputStream;[Lo1/f;[B)V

    .line 16
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 21
    move-result-object v0

    .line 22
    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 25
    return-object v1
.end method

.method public final getContentLength()J
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lo1/e;->a:[Lo1/f;

    .line 3
    invoke-virtual {p0}, Lo1/e;->b()[B

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lo1/f;->c([Lo1/f;[B)J

    .line 10
    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 11
    return-wide v0

    .line 12
    :catch_b
    move-exception v0

    .line 13
    const-string v1, "Multipart"

    .line 15
    const-string v2, "An exception occurred while getting the length of the parts"

    .line 17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    const-wide/16 v0, 0x0

    .line 22
    return-wide v0
.end method

.method public final getContentType()Lorg/apache/http/Header;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    const-string v1, "multipart/form-data"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "; boundary="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-virtual {p0}, Lo1/e;->b()[B

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v2, "Content-Type"

    .line 32
    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-object v1
.end method

.method public final isRepeatable()Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lo1/e;->a:[Lo1/f;

    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_e

    .line 7
    aget-object v1, v1, v0

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_e
    const/4 v0, 0x1

    .line 16
    return v0
.end method

.method public final isStreaming()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo1/e;->a:[Lo1/f;

    .line 3
    invoke-virtual {p0}, Lo1/e;->b()[B

    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1, v0, v1}, Lo1/f;->j(Ljava/io/OutputStream;[Lo1/f;[B)V

    .line 10
    return-void
.end method
