.class public final Lk4/f;
.super Lk4/h;
.source "NumberedSplitFileInputStream.java"


# instance fields
.field public a:Lk4/g;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lk4/h;-><init>()V

    .line 4
    new-instance v0, Lk4/g;

    .line 6
    sget-object v1, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 8
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {p1}, Lo4/a;->b(Ljava/io/File;)[Ljava/io/File;

    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, p1, v1, v2}, Lk4/g;-><init>(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;)V

    .line 19
    iput-object v0, p0, Lk4/f;->a:Lk4/g;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lm4/g;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lk4/f;->a:Lk4/g;

    .line 3
    iget-wide v1, p1, Lm4/g;->w:J

    .line 5
    invoke-virtual {v0, v1, v2}, Lk4/g;->seek(J)V

    .line 8
    return-void
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lk4/f;->a:Lk4/g;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lk4/g;->close()V

    .line 8
    :cond_7
    return-void
.end method

.method public final read()I
    .registers 2

    .line 1
    iget-object v0, p0, Lk4/f;->a:Lk4/g;

    invoke-virtual {v0}, Lk4/g;->read()I

    move-result v0

    return v0
.end method

.method public final read([B)I
    .registers 4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/f;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .registers 5

    .line 3
    iget-object v0, p0, Lk4/f;->a:Lk4/g;

    invoke-virtual {v0, p1, p2, p3}, Lk4/g;->read([BII)I

    move-result p1

    return p1
.end method
