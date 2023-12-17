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

    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo1/c;->o:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lo1/a;

    invoke-direct {v0}, Lo1/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lo1/c;-><init>(Ljava/lang/String;Lo1/a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

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

    invoke-direct {p0, p1, v0, v1, v2}, Lo1/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lo1/c;->n:Lo1/h;

    return-void
.end method


# virtual methods
.method public final f()J
    .registers 3

    iget-object v0, p0, Lo1/c;->n:Lo1/h;

    check-cast v0, Lo1/a;

    iget v1, v0, Lo1/a;->a:I

    packed-switch v1, :pswitch_data_20

    goto :goto_11

    :pswitch_a  #0x0
    iget-object v0, v0, Lo1/a;->c:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_1e

    :goto_11
    iget-object v0, v0, Lo1/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_1e

    :cond_1c
    const-wide/16 v0, 0x0

    :goto_1e
    return-wide v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_a  #00000000
    .end packed-switch
.end method

.method public final h(Ljava/io/OutputStream;)V
    .registers 6

    invoke-virtual {p0}, Lo1/c;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const-string p1, "FilePart"

    const-string v0, "No data to send."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iget-object v1, p0, Lo1/c;->n:Lo1/h;

    check-cast v1, Lo1/a;

    iget v2, v1, Lo1/a;->a:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_56

    goto :goto_2b

    :pswitch_21  #0x0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v1, v1, Lo1/a;->c:Ljava/lang/Object;

    check-cast v1, [B

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_42

    :goto_2b
    iget-object v2, v1, Lo1/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_3b

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v1, v1, Lo1/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_42

    :cond_3b
    new-instance v2, Ljava/io/ByteArrayInputStream;

    new-array v1, v3, [B

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_42
    :try_start_42
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_4c

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_50

    goto :goto_42

    :cond_4c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_50
    move-exception p1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw p1

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_21  #00000000
    .end packed-switch
.end method

.method public final i(Ljava/io/OutputStream;)V
    .registers 4

    invoke-super {p0, p1}, Lo1/f;->i(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lo1/c;->n:Lo1/h;

    check-cast v0, Lo1/a;

    invoke-virtual {v0}, Lo1/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    sget-object v1, Lo1/c;->o:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Lo1/f;->d:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_21
    return-void
.end method
