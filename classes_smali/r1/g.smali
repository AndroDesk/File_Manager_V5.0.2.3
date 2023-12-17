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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr1/g;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lr1/g;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lr1/g;->d:J

    return-void
.end method

.method public static a(Lorg/apache/http/Header;)I
    .registers 3

    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_20

    :catch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed parser header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ServerExpect"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_20
    return p0
.end method

.method public static b(Lm1/f;)Lr1/g;
    .registers 6

    invoke-virtual {p0}, Lm1/f;->d()Lorg/apache/http/HttpResponse;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    new-instance v1, Lr1/g;

    invoke-direct {v1}, Lr1/g;-><init>()V

    const-string v2, "X-Factory-Mode"

    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_21

    invoke-static {v2}, Lr1/g;->a(Lorg/apache/http/Header;)I

    move-result v2

    if-ne v2, v4, :cond_1e

    move v3, v4

    :cond_1e
    iput-boolean v3, v1, Lr1/g;->b:Z

    move v3, v4

    :cond_21
    const-string v2, "X-Upload-Delay"

    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-static {v2}, Lr1/g;->a(Lorg/apache/http/Header;)I

    move-result v2

    iput v2, v1, Lr1/g;->c:I

    move v3, v4

    :cond_30
    const-string v2, "X-Next-Chunk-Size"

    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    if-eqz p0, :cond_40

    invoke-static {p0}, Lr1/g;->a(Lorg/apache/http/Header;)I

    move-result p0

    int-to-long v2, p0

    iput-wide v2, v1, Lr1/g;->d:J

    goto :goto_41

    :cond_40
    move v4, v3

    :goto_41
    if-eqz v4, :cond_44

    move-object v0, v1

    :cond_44
    return-object v0
.end method
