.class public final Lo1/i;
.super Lo1/g;
.source "StringPart.java"


# instance fields
.field public n:[B

.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "text/plain"

    .line 3
    const-string v1, "UTF-8"

    .line 5
    const-string v2, "8bit"

    .line 7
    invoke-direct {p0, p1, v0, v1, v2}, Lo1/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    if-eqz p2, :cond_1e

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    .line 16
    move-result p1

    .line 17
    const/4 v0, -0x1

    .line 18
    if-ne p1, v0, :cond_16

    .line 20
    iput-object p2, p0, Lo1/i;->o:Ljava/lang/String;

    .line 22
    return-void

    .line 23
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string p2, "NULs may not be present in string parts"

    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1

    .line 31
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    const-string p2, "Value may not be null"

    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1
.end method


# virtual methods
.method public final f()J
    .registers 3

    .line 1
    iget-object v0, p0, Lo1/i;->n:[B

    .line 3
    if-nez v0, :cond_10

    .line 5
    iget-object v0, p0, Lo1/i;->o:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lo1/g;->a()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lo1/i;->n:[B

    .line 17
    :cond_10
    iget-object v0, p0, Lo1/i;->n:[B

    .line 19
    array-length v0, v0

    .line 20
    int-to-long v0, v0

    .line 21
    return-wide v0
.end method

.method public final h(Ljava/io/OutputStream;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo1/i;->n:[B

    .line 3
    if-nez v0, :cond_10

    .line 5
    iget-object v0, p0, Lo1/i;->o:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lo1/g;->a()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lo1/i;->n:[B

    .line 17
    :cond_10
    iget-object v0, p0, Lo1/i;->n:[B

    .line 19
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 22
    return-void
.end method
