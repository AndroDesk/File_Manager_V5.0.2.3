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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ln1/c;Lorg/apache/http/params/HttpParams;)V
    .registers 3

    iput-object p1, p0, Ln1/c$a;->c:Ln1/c;

    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    iput-object p2, p0, Ln1/c$a;->a:Lorg/apache/http/params/HttpParams;

    new-instance p1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object p1, p0, Ln1/c$a;->b:Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method public constructor <init>(Ln1/c;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V
    .registers 4

    iput-object p1, p0, Ln1/c$a;->c:Ln1/c;

    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    iput-object p2, p0, Ln1/c$a;->a:Lorg/apache/http/params/HttpParams;

    iput-object p3, p0, Ln1/c$a;->b:Lorg/apache/http/params/HttpParams;

    return-void
.end method


# virtual methods
.method public final copy()Lorg/apache/http/params/HttpParams;
    .registers 5

    new-instance v0, Ln1/c$a;

    iget-object v1, p0, Ln1/c$a;->c:Ln1/c;

    iget-object v2, p0, Ln1/c$a;->a:Lorg/apache/http/params/HttpParams;

    iget-object v3, p0, Ln1/c$a;->b:Lorg/apache/http/params/HttpParams;

    invoke-interface {v3}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ln1/c$a;-><init>(Ln1/c;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ln1/c$a;->b:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Ln1/c$a;->a:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public final removeParameter(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Ln1/c$a;->b:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    :try_start_8
    iget-object v1, p0, Ln1/c$a;->a:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_e

    :catch_e
    :cond_e
    return v0
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .registers 4

    iget-object v0, p0, Ln1/c$a;->b:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    return-object p0
.end method
