.class public final Lr1/g;
.super Ljava/lang/Object;
.source "ServerExpect.java"

# interfaces
.implements Lp1/f;


# instance fields
.field public b:Z

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lr1/g;->b:Z

    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lr1/g;->c:I

    .line 10
    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lr1/g;->d:J

    .line 14
    return-void
.end method

.method public static a(Lorg/apache/http/Header;)I
    .registers 3

    .line 1
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result p0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    goto :goto_20

    .line 10
    :catch_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v1, "Failed parser header: "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    const-string v0, "ServerExpect"

    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 p0, -0x1

    .line 33
    :goto_20
    return p0
.end method

.method public static b(Lm1/f;)Lr1/g;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lm1/f;->d()Lorg/apache/http/HttpResponse;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_8

    .line 8
    return-object v0

    .line 9
    :cond_8
    new-instance v1, Lr1/g;

    .line 11
    invoke-direct {v1}, Lr1/g;-><init>()V

    .line 14
    const-string v2, "X-Factory-Mode"

    .line 16
    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz v2, :cond_21

    .line 24
    invoke-static {v2}, Lr1/g;->a(Lorg/apache/http/Header;)I

    .line 27
    move-result v2

    .line 28
    if-ne v2, v4, :cond_1e

    .line 30
    move v3, v4

    .line 31
    :cond_1e
    iput-boolean v3, v1, Lr1/g;->b:Z

    .line 33
    move v3, v4

    .line 34
    :cond_21
    const-string v2, "X-Upload-Delay"

    .line 36
    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_30

    .line 42
    invoke-static {v2}, Lr1/g;->a(Lorg/apache/http/Header;)I

    .line 45
    move-result v2

    .line 46
    iput v2, v1, Lr1/g;->c:I

    .line 48
    move v3, v4

    .line 49
    :cond_30
    const-string v2, "X-Next-Chunk-Size"

    .line 51
    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_40

    .line 57
    invoke-static {p0}, Lr1/g;->a(Lorg/apache/http/Header;)I

    .line 60
    move-result p0

    .line 61
    int-to-long v2, p0

    .line 62
    iput-wide v2, v1, Lr1/g;->d:J

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    move v4, v3

    .line 66
    :goto_41
    if-eqz v4, :cond_44

    .line 68
    move-object v0, v1

    .line 69
    :cond_44
    return-object v0
.end method
