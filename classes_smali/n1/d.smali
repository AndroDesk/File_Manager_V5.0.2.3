.class public final Ln1/d;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "KscRedirectHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ksc.message_list"

    .line 7
    invoke-interface {p2, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/util/List;

    .line 13
    if-nez v2, :cond_16

    .line 15
    new-instance v2, Ljava/util/LinkedList;

    .line 17
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 20
    invoke-interface {p2, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    :cond_16
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-object v0
.end method
