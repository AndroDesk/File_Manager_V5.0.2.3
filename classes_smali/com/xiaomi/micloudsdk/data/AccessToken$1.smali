.class Lcom/xiaomi/micloudsdk/data/AccessToken$1;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudsdk/data/AccessToken;->getBuilderForCloudRequest()Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/micloudsdk/data/AccessToken;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/micloudsdk/data/AccessToken;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/data/AccessToken$1;->this$0:Lcom/xiaomi/micloudsdk/data/AccessToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAdditionalHeaders(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Origin"

    const-string v2, "www.mi.com"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addParams(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/data/AccessToken$1;->this$0:Lcom/xiaomi/micloudsdk/data/AccessToken;

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/data/AccessToken;->access$000(Lcom/xiaomi/micloudsdk/data/AccessToken;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientId"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/data/AccessToken$1;->this$0:Lcom/xiaomi/micloudsdk/data/AccessToken;

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/data/AccessToken;->access$100(Lcom/xiaomi/micloudsdk/data/AccessToken;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCryptCoder(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    .registers 2

    new-instance p1, Lcom/xiaomi/micloudsdk/data/AccessToken$1$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/micloudsdk/data/AccessToken$1$1;-><init>(Lcom/xiaomi/micloudsdk/data/AccessToken$1;)V

    return-object p1
.end method

.method public getServiceToken()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public signParams(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
