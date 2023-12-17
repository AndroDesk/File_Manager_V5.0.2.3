.class public Lmiui/cloud/net/XHttpClient$HttpResponse;
.super Ljava/lang/Object;
.source "XHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/net/XHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpResponse"
.end annotation


# instance fields
.field public content:Ljava/lang/Object;

.field public contentLength:J

.field public ctx:Ljava/lang/Object;

.field public date:Ljava/util/Date;

.field public error:Ljava/lang/Exception;

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public stateCode:I

.field public stateMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    .line 3
    if-eqz v0, :cond_1d

    .line 5
    const-string v0, "Error: \n"

    .line 7
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "\n"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_1d
    const/4 v0, 0x5

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    const/4 v1, 0x0

    .line 34
    iget v2, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v2

    .line 40
    aput-object v2, v0, v1

    .line 42
    const/4 v1, 0x1

    .line 43
    iget-object v2, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateMessage:Ljava/lang/String;

    .line 45
    aput-object v2, v0, v1

    .line 47
    const/4 v1, 0x2

    .line 48
    iget-object v2, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->headers:Ljava/util/Map;

    .line 50
    aput-object v2, v0, v1

    .line 52
    const/4 v1, 0x3

    .line 53
    iget-object v2, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    .line 55
    if-nez v2, :cond_3a

    .line 57
    const/4 v2, 0x0

    .line 58
    goto :goto_3e

    .line 59
    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    move-result-object v2

    .line 63
    :goto_3e
    aput-object v2, v0, v1

    .line 65
    const/4 v1, 0x4

    .line 66
    iget-object v2, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    .line 68
    aput-object v2, v0, v1

    .line 70
    const-string v1, "%s %s \n%s \n%s:%s"

    .line 72
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method
