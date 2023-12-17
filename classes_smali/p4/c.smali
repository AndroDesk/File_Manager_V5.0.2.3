.class public final Lp4/c;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lp4/i;


# instance fields
.field public final synthetic a:La/b;

.field public final synthetic b:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;La/b;)V
    .registers 3

    iput-object p2, p0, Lp4/c;->a:La/b;

    iput-object p1, p0, Lp4/c;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lp4/c;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final n(Lokio/a;J)J
    .registers 9

    const/4 p2, 0x1

    :try_start_1
    iget-object p3, p0, Lp4/c;->a:La/b;

    invoke-virtual {p3}, La/b;->e0()V

    invoke-virtual {p1, p2}, Lokio/a;->o(I)Lp4/g;

    move-result-object p3

    iget v0, p3, Lp4/g;->c:I

    rsub-int v0, v0, 0x2000

    int-to-long v0, v0

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lp4/c;->b:Ljava/io/InputStream;

    iget-object v2, p3, Lp4/g;->a:[B

    iget v3, p3, Lp4/g;->c:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_26
    iget v1, p3, Lp4/g;->c:I

    add-int/2addr v1, v0

    iput v1, p3, Lp4/g;->c:I

    iget-wide v1, p1, Lokio/a;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p1, Lokio/a;->b:J
    :try_end_31
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_31} :catch_32

    return-wide v3

    :catch_32
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_4c

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4c

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "getsockname failed"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 p2, 0x0

    :goto_4d
    if-eqz p2, :cond_55

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_55
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, "source("

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lp4/c;->b:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
