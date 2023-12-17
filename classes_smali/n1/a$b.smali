.class public final Ln1/a$b;
.super Ljava/lang/Object;
.source "KscHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Ln1/a;


# direct methods
.method public constructor <init>(Ln1/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ln1/a$b;->a:Ln1/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 5

    .line 1
    iget-object p2, p0, Ln1/a$b;->a:Ln1/a;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of p2, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 8
    if-eqz p2, :cond_1d

    .line 10
    const/4 p2, 0x2

    .line 11
    new-array p2, p2, [Ljava/lang/Object;

    .line 13
    const-string v0, "CurlLogger"

    .line 15
    const/4 v1, 0x0

    .line 16
    aput-object v0, p2, v1

    .line 18
    const/4 v0, 0x1

    .line 19
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 21
    invoke-static {p1}, Ln1/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    aput-object p1, p2, v0

    .line 27
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 30
    :cond_1d
    return-void
.end method
