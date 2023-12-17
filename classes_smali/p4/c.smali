.class public final Lp4/c;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lp4/i;


# instance fields
.field public final synthetic a:La/b;

.field public final synthetic b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;La/b;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lp4/c;->a:La/b;

    .line 3
    iput-object p1, p0, Lp4/c;->b:Ljava/io/InputStream;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lp4/c;->b:Ljava/io/InputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 6
    return-void
.end method

.method public final n(Lokio/a;J)J
    .registers 9

    .line 1
    const/4 p2, 0x1

    .line 2
    :try_start_1
    iget-object p3, p0, Lp4/c;->a:La/b;

    .line 4
    invoke-virtual {p3}, La/b;->e0()V

    .line 7
    invoke-virtual {p1, p2}, Lokio/a;->o(I)Lp4/g;

    .line 10
    move-result-object p3

    .line 11
    iget v0, p3, Lp4/g;->c:I

    .line 13
    rsub-int v0, v0, 0x2000

    .line 15
    int-to-long v0, v0

    .line 16
    const-wide/16 v2, 0x2000

    .line 18
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 21
    move-result-wide v0

    .line 22
    long-to-int v0, v0

    .line 23
    iget-object v1, p0, Lp4/c;->b:Ljava/io/InputStream;

    .line 25
    iget-object v2, p3, Lp4/g;->a:[B

    .line 27
    iget v3, p3, Lp4/g;->c:I

    .line 29
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    .line 32
    move-result v0

    .line 33
    const/4 v1, -0x1

    .line 34
    if-ne v0, v1, :cond_26

    .line 36
    const-wide/16 p1, -0x1

    .line 38
    return-wide p1

    .line 39
    :cond_26
    iget v1, p3, Lp4/g;->c:I

    .line 41
    add-int/2addr v1, v0

    .line 42
    iput v1, p3, Lp4/g;->c:I

    .line 44
    iget-wide v1, p1, Lokio/a;->b:J

    .line 46
    int-to-long v3, v0

    .line 47
    add-long/2addr v1, v3

    .line 48
    iput-wide v1, p1, Lokio/a;->b:J
    :try_end_31
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_31} :catch_32

    .line 50
    return-wide v3

    .line 51
    :catch_32
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 55
    move-result-object p3

    .line 56
    if-eqz p3, :cond_4c

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 61
    move-result-object p3

    .line 62
    if-eqz p3, :cond_4c

    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    move-result-object p3

    .line 68
    const-string v0, "getsockname failed"

    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 73
    move-result p3

    .line 74
    if-eqz p3, :cond_4c

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    const/4 p2, 0x0

    .line 78
    :goto_4d
    if-eqz p2, :cond_55

    .line 80
    new-instance p2, Ljava/io/IOException;

    .line 82
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 85
    throw p2

    .line 86
    :cond_55
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "source("

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lp4/c;->b:Ljava/io/InputStream;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ")"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
