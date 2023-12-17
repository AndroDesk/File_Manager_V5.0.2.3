.class public final Lo1/c;
.super Lo1/g;
.source "FilePart.java"


# static fields
.field public static final o:[B


# instance fields
.field public n:Lo1/h;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "; filename="

    .line 3
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lo1/c;->o:[B

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 3
    new-instance v0, Lo1/a;

    invoke-direct {v0}, Lo1/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lo1/c;-><init>(Ljava/lang/String;Lo1/a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 4
    new-instance v0, Lo1/a;

    invoke-direct {v0, p2}, Lo1/a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lo1/c;-><init>(Ljava/lang/String;Lo1/a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo1/a;)V
    .registers 6

    const-string v0, "application/octet-stream"

    const-string v1, "ISO-8859-1"

    const-string v2, "binary"

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Lo1/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lo1/c;->n:Lo1/h;

    return-void
.end method


# virtual methods
.method public final f()J
    .registers 3

    .line 1
    iget-object v0, p0, Lo1/c;->n:Lo1/h;

    .line 3
    check-cast v0, Lo1/a;

    .line 5
    iget v1, v0, Lo1/a;->a:I

    .line 7
    packed-switch v1, :pswitch_data_20

    .line 10
    goto :goto_11

    .line 11
    :pswitch_a  #0x0
    iget-object v0, v0, Lo1/a;->c:Ljava/lang/Object;

    .line 13
    check-cast v0, [B

    .line 15
    array-length v0, v0

    .line 16
    int-to-long v0, v0

    .line 17
    goto :goto_1e

    .line 18
    :goto_11
    iget-object v0, v0, Lo1/a;->c:Ljava/lang/Object;

    .line 20
    check-cast v0, Ljava/io/File;

    .line 22
    if-eqz v0, :cond_1c

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 27
    move-result-wide v0

    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    const-wide/16 v0, 0x0

    .line 31
    :goto_1e
    return-wide v0

    .line 32
    nop

    .line 33
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_a  #00000000
    .end packed-switch
.end method

.method public final h(Ljava/io/OutputStream;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lo1/c;->f()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    cmp-long v0, v0, v2

    .line 9
    if-nez v0, :cond_12

    .line 11
    const-string p1, "FilePart"

    .line 13
    const-string v0, "No data to send."

    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 19
    :cond_12
    const/16 v0, 0x1000

    .line 21
    new-array v0, v0, [B

    .line 23
    iget-object v1, p0, Lo1/c;->n:Lo1/h;

    .line 25
    check-cast v1, Lo1/a;

    .line 27
    iget v2, v1, Lo1/a;->a:I

    .line 29
    const/4 v3, 0x0

    .line 30
    packed-switch v2, :pswitch_data_56

    .line 33
    goto :goto_2b

    .line 34
    :pswitch_21  #0x0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 36
    iget-object v1, v1, Lo1/a;->c:Ljava/lang/Object;

    .line 38
    check-cast v1, [B

    .line 40
    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 43
    goto :goto_42

    .line 44
    :goto_2b
    iget-object v2, v1, Lo1/a;->c:Ljava/lang/Object;

    .line 46
    check-cast v2, Ljava/io/File;

    .line 48
    if-eqz v2, :cond_3b

    .line 50
    new-instance v2, Ljava/io/FileInputStream;

    .line 52
    iget-object v1, v1, Lo1/a;->c:Ljava/lang/Object;

    .line 54
    check-cast v1, Ljava/io/File;

    .line 56
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 59
    goto :goto_42

    .line 60
    :cond_3b
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 62
    new-array v1, v3, [B

    .line 64
    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 67
    :goto_42
    :try_start_42
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 70
    move-result v1

    .line 71
    if-ltz v1, :cond_4c

    .line 73
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_50

    .line 76
    goto :goto_42

    .line 77
    :cond_4c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 80
    return-void

    .line 81
    :catchall_50
    move-exception p1

    .line 82
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 85
    throw p1

    .line 86
    nop

    .line 87
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_21  #00000000
    .end packed-switch
.end method

.method public final i(Ljava/io/OutputStream;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lo1/f;->i(Ljava/io/OutputStream;)V

    .line 4
    iget-object v0, p0, Lo1/c;->n:Lo1/h;

    .line 6
    check-cast v0, Lo1/a;

    .line 8
    invoke-virtual {v0}, Lo1/a;->c()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_21

    .line 14
    sget-object v1, Lo1/c;->o:[B

    .line 16
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 19
    sget-object v1, Lo1/f;->d:[B

    .line 21
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 24
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 31
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 34
    :cond_21
    return-void
.end method
