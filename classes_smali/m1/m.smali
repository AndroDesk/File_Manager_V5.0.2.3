.class public final Lm1/m;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "ProcessMonitorEntity.java"


# instance fields
.field public final a:Lm1/i;

.field public final b:Lm1/c;

.field public final c:Lm1/j;

.field public final d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lm1/i;Lm1/c;Lm1/j;Z)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 4
    iput-object p2, p0, Lm1/m;->a:Lm1/i;

    .line 6
    iput-object p3, p0, Lm1/m;->b:Lm1/c;

    .line 8
    iput-object p4, p0, Lm1/m;->c:Lm1/j;

    .line 10
    iput-boolean p5, p0, Lm1/m;->d:Z

    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lm1/m;->e:Z

    .line 15
    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .registers 10

    .line 1
    iget-object v0, p0, Lm1/m;->c:Lm1/j;

    .line 3
    if-eqz v0, :cond_18

    .line 5
    invoke-interface {v0}, Lm1/j;->checkStop()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_18

    .line 12
    :cond_b
    new-instance v0, Ljava/io/IOException;

    .line 14
    new-instance v1, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    .line 16
    invoke-direct {v1}, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;-><init>()V

    .line 19
    const-string v2, "@ getContent()"

    .line 21
    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    throw v0

    .line 25
    :cond_18
    :goto_18
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    .line 28
    move-result-object v4

    .line 29
    iget-boolean v0, p0, Lm1/m;->e:Z

    .line 31
    if-nez v0, :cond_49

    .line 33
    iget-object v0, p0, Lm1/m;->b:Lm1/c;

    .line 35
    if-eqz v0, :cond_37

    .line 37
    iget-boolean v1, p0, Lm1/m;->d:Z

    .line 39
    if-eqz v1, :cond_30

    .line 41
    invoke-virtual {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContentLength()J

    .line 44
    move-result-wide v1

    .line 45
    invoke-interface {v0, v1, v2}, Lm1/c;->setSendTotal(J)V

    .line 48
    goto :goto_37

    .line 49
    :cond_30
    invoke-virtual {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContentLength()J

    .line 52
    move-result-wide v1

    .line 53
    invoke-interface {v0, v1, v2}, Lm1/c;->setReceiveTotal(J)V

    .line 56
    :cond_37
    :goto_37
    new-instance v0, Lm1/n;

    .line 58
    iget-object v5, p0, Lm1/m;->a:Lm1/i;

    .line 60
    iget-object v6, p0, Lm1/m;->b:Lm1/c;

    .line 62
    iget-object v7, p0, Lm1/m;->c:Lm1/j;

    .line 64
    iget-boolean v8, p0, Lm1/m;->d:Z

    .line 66
    move-object v3, v0

    .line 67
    invoke-direct/range {v3 .. v8}, Lm1/n;-><init>(Ljava/io/InputStream;Lm1/i;Lm1/c;Lm1/j;Z)V

    .line 70
    const/4 v1, 0x1

    .line 71
    iput-boolean v1, p0, Lm1/m;->e:Z

    .line 73
    move-object v4, v0

    .line 74
    :cond_49
    return-object v4
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lm1/m;->c:Lm1/j;

    .line 3
    if-eqz v0, :cond_18

    .line 5
    invoke-interface {v0}, Lm1/j;->checkStop()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_18

    .line 12
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 14
    new-instance v0, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    .line 16
    invoke-direct {v0}, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;-><init>()V

    .line 19
    const-string v1, "@ writeTo()"

    .line 21
    invoke-direct {p1, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    throw p1

    .line 25
    :cond_18
    :goto_18
    iget-boolean v0, p0, Lm1/m;->e:Z

    .line 27
    if-nez v0, :cond_2f

    .line 29
    new-instance v0, Lm1/o;

    .line 31
    iget-object v3, p0, Lm1/m;->a:Lm1/i;

    .line 33
    iget-object v4, p0, Lm1/m;->b:Lm1/c;

    .line 35
    iget-object v5, p0, Lm1/m;->c:Lm1/j;

    .line 37
    iget-boolean v6, p0, Lm1/m;->d:Z

    .line 39
    move-object v1, v0

    .line 40
    move-object v2, p1

    .line 41
    invoke-direct/range {v1 .. v6}, Lm1/o;-><init>(Ljava/io/OutputStream;Lm1/i;Lm1/c;Lm1/j;Z)V

    .line 44
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lm1/m;->e:Z

    .line 47
    move-object p1, v0

    .line 48
    :cond_2f
    invoke-super {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    .line 51
    return-void
.end method
