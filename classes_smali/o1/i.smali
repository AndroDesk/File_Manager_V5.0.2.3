.class public final Lo1/i;
.super Lo1/g;
.source "StringPart.java"


# instance fields
.field public n:[B

.field public o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "text/plain"

    const-string v1, "UTF-8"

    const-string v2, "8bit"

    invoke-direct {p0, p1, v0, v1, v2}, Lo1/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1e

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_16

    iput-object p2, p0, Lo1/i;->o:Ljava/lang/String;

    return-void

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NULs may not be present in string parts"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Value may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final f()J
    .registers 3

    iget-object v0, p0, Lo1/i;->n:[B

    if-nez v0, :cond_10

    iget-object v0, p0, Lo1/i;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lo1/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lo1/i;->n:[B

    :cond_10
    iget-object v0, p0, Lo1/i;->n:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final h(Ljava/io/OutputStream;)V
    .registers 4

    iget-object v0, p0, Lo1/i;->n:[B

    if-nez v0, :cond_10

    iget-object v0, p0, Lo1/i;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lo1/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lo1/i;->n:[B

    :cond_10
    iget-object v0, p0, Lo1/i;->n:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
