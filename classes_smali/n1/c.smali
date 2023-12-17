.class public final Ln1/c;
.super Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;
.source "KscHttpRoutePlanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .registers 7

    .line 1
    invoke-static {}, Ls1/e;->b()Lorg/apache/http/HttpHost;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    new-instance v1, Ln1/c$a;

    .line 9
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, p0, v2}, Ln1/c$a;-><init>(Ln1/c;Lorg/apache/http/params/HttpParams;)V

    .line 16
    invoke-static {v1, v0}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 19
    invoke-interface {p2, v1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 22
    :cond_15
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method
