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

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo1/e;->c:[B

    return-void
.end method

.method public constructor <init>([Lo1/f;)V
    .registers 3

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const-string v0, "multipart/form-data"

    invoke-virtual {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    if-eqz p1, :cond_d

    iput-object p1, p0, Lo1/e;->a:[Lo1/f;

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parts cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a([Lo1/f;)V
    .registers 6

    if-eqz p1, :cond_24

    array-length v0, p1

    if-gtz v0, :cond_6

    goto :goto_24

    :cond_6
    iget-object v0, p0, Lo1/e;->a:[Lo1/f;

    if-eqz v0, :cond_22

    array-length v1, v0

    if-gtz v1, :cond_e

    goto :goto_22

    :cond_e
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Lo1/f;

    iput-object v1, p0, Lo1/e;->a:[Lo1/f;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lo1/e;->a:[Lo1/f;

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_22
    :goto_22
    iput-object p1, p0, Lo1/e;->a:[Lo1/f;

    :cond_24
    :goto_24
    return-void
.end method

.method public final b()[B
    .registers 7

    iget-object v0, p0, Lo1/e;->b:[B

    if-nez v0, :cond_26

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_24

    sget-object v4, Lo1/e;->c:[B

    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_24
    iput-object v2, p0, Lo1/e;->b:[B

    :cond_26
    iget-object v0, p0, Lo1/e;->b:[B

    return-object v0
.end method

.method public final getContent()Ljava/io/InputStream;
    .registers 4

    invoke-virtual {p0}, Lo1/e;->isRepeatable()Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lo1/e;->a:[Lo1/f;

    iget-object v2, p0, Lo1/e;->b:[B

    invoke-static {v0, v1, v2}, Lo1/f;->j(Ljava/io/OutputStream;[Lo1/f;[B)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public final getContentLength()J
    .registers 4

    :try_start_0
    iget-object v0, p0, Lo1/e;->a:[Lo1/f;

    invoke-virtual {p0}, Lo1/e;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Lo1/f;->c([Lo1/f;[B)J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v0

    :catch_b
    move-exception v0

    const-string v1, "Multipart"

    const-string v2, "An exception occurred while getting the length of the parts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getContentType()Lorg/apache/http/Header;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lo1/e;->b()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Content-Type"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final isRepeatable()Z
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lo1/e;->a:[Lo1/f;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public final isStreaming()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 4

    iget-object v0, p0, Lo1/e;->a:[Lo1/f;

    invoke-virtual {p0}, Lo1/e;->b()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lo1/f;->j(Ljava/io/OutputStream;[Lo1/f;[B)V

    return-void
.end method
