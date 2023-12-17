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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpEntity;Lm1/i;Lm1/c;Lm1/j;Z)V
    .registers 6

    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    iput-object p2, p0, Lm1/m;->a:Lm1/i;

    iput-object p3, p0, Lm1/m;->b:Lm1/c;

    iput-object p4, p0, Lm1/m;->c:Lm1/j;

    iput-boolean p5, p0, Lm1/m;->d:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm1/m;->e:Z

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .registers 10

    iget-object v0, p0, Lm1/m;->c:Lm1/j;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lm1/j;->checkStop()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_18

    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    invoke-direct {v1}, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;-><init>()V

    const-string v2, "@ getContent()"

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_18
    :goto_18
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v4

    iget-boolean v0, p0, Lm1/m;->e:Z

    if-nez v0, :cond_49

    iget-object v0, p0, Lm1/m;->b:Lm1/c;

    if-eqz v0, :cond_37

    iget-boolean v1, p0, Lm1/m;->d:Z

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContentLength()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lm1/c;->setSendTotal(J)V

    goto :goto_37

    :cond_30
    invoke-virtual {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContentLength()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lm1/c;->setReceiveTotal(J)V

    :cond_37
    :goto_37
    new-instance v0, Lm1/n;

    iget-object v5, p0, Lm1/m;->a:Lm1/i;

    iget-object v6, p0, Lm1/m;->b:Lm1/c;

    iget-object v7, p0, Lm1/m;->c:Lm1/j;

    iget-boolean v8, p0, Lm1/m;->d:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lm1/n;-><init>(Ljava/io/InputStream;Lm1/i;Lm1/c;Lm1/j;Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lm1/m;->e:Z

    move-object v4, v0

    :cond_49
    return-object v4
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 9

    iget-object v0, p0, Lm1/m;->c:Lm1/j;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lm1/j;->checkStop()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_18

    :cond_b
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    invoke-direct {v0}, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;-><init>()V

    const-string v1, "@ writeTo()"

    invoke-direct {p1, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_18
    :goto_18
    iget-boolean v0, p0, Lm1/m;->e:Z

    if-nez v0, :cond_2f

    new-instance v0, Lm1/o;

    iget-object v3, p0, Lm1/m;->a:Lm1/i;

    iget-object v4, p0, Lm1/m;->b:Lm1/c;

    iget-object v5, p0, Lm1/m;->c:Lm1/j;

    iget-boolean v6, p0, Lm1/m;->d:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lm1/o;-><init>(Ljava/io/OutputStream;Lm1/i;Lm1/c;Lm1/j;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm1/m;->e:Z

    move-object p1, v0

    :cond_2f
    invoke-super {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
