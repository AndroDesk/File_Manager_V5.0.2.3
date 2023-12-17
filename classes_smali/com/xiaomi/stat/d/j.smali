.class public Lcom/xiaomi/stat/d/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = -0x1

.field private static final b:I = 0x1000


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 3

    const/16 v0, 0x1000

    .line 7
    invoke-static {p0, p1, v0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .registers 7

    .line 8
    new-array p2, p2, [B

    const-wide/16 v0, 0x0

    :goto_4
    const/4 v2, -0x1

    .line 9
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_12

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, p2, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v3

    add-long/2addr v0, v2

    goto :goto_4

    :cond_12
    return-wide v0
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 6
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static a(Ljava/io/InputStream;)V
    .registers 1

    .line 4
    invoke-static {p0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .registers 1

    .line 5
    invoke-static {p0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public static a(Ljava/io/Reader;)V
    .registers 1

    .line 2
    invoke-static {p0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public static a(Ljava/io/Writer;)V
    .registers 1

    .line 3
    invoke-static {p0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-void
.end method

.method public static b(Ljava/io/InputStream;)[B
    .registers 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
