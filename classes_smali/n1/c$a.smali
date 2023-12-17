.class public final Ln1/c$a;
.super Lorg/apache/http/params/AbstractHttpParams;
.source "KscHttpRoutePlanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lorg/apache/http/params/HttpParams;

.field public final b:Lorg/apache/http/params/HttpParams;

.field public final synthetic c:Ln1/c;


# direct methods
.method public constructor <init>(Ln1/c;Lorg/apache/http/params/HttpParams;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ln1/c$a;->c:Ln1/c;

    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    .line 2
    iput-object p2, p0, Ln1/c$a;->a:Lorg/apache/http/params/HttpParams;

    .line 3
    new-instance p1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object p1, p0, Ln1/c$a;->b:Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method public constructor <init>(Ln1/c;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V
    .registers 4

    .line 4
    iput-object p1, p0, Ln1/c$a;->c:Ln1/c;

    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    .line 5
    iput-object p2, p0, Ln1/c$a;->a:Lorg/apache/http/params/HttpParams;

    .line 6
    iput-object p3, p0, Ln1/c$a;->b:Lorg/apache/http/params/HttpParams;

    return-void
.end method


# virtual methods
.method public final copy()Lorg/apache/http/params/HttpParams;
    .registers 5

    .line 1
    new-instance v0, Ln1/c$a;

    .line 3
    iget-object v1, p0, Ln1/c$a;->c:Ln1/c;

    .line 5
    iget-object v2, p0, Ln1/c$a;->a:Lorg/apache/http/params/HttpParams;

    .line 7
    iget-object v3, p0, Ln1/c$a;->b:Lorg/apache/http/params/HttpParams;

    .line 9
    invoke-interface {v3}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    .line 12
    move-result-object v3

    .line 13
    invoke-direct {v0, v1, v2, v3}, Ln1/c$a;-><init>(Ln1/c;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    .line 16
    return-object v0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Ln1/c$a;->b:Lorg/apache/http/params/HttpParams;

    .line 3
    invoke-interface {v0, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_e

    .line 9
    iget-object v0, p0, Ln1/c$a;->a:Lorg/apache/http/params/HttpParams;

    .line 11
    invoke-interface {v0, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    :cond_e
    return-object v0
.end method

.method public final removeParameter(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Ln1/c$a;->b:Lorg/apache/http/params/HttpParams;

    .line 3
    invoke-interface {v0, p1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_e

    .line 9
    :try_start_8
    iget-object v1, p0, Ln1/c$a;->a:Lorg/apache/http/params/HttpParams;

    .line 11
    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    .line 14
    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_e

    .line 15
    :catch_e
    :cond_e
    return v0
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .registers 4

    .line 1
    iget-object v0, p0, Ln1/c$a;->b:Lorg/apache/http/params/HttpParams;

    .line 3
    invoke-interface {v0, p1, p2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 6
    return-object p0
.end method
