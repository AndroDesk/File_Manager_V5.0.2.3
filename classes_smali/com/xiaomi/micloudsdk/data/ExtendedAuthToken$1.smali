.class Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken$1;
.super Ljava/lang/Object;
.source "ExtendedAuthToken.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->getBuilderForCloudRequest()Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken$1;->this$0:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public addAdditionalHeaders(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addParams(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getCryptCoder(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken$1;->this$0:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 3
    iget-object v0, v0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 5
    invoke-static {p1, v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->getCryptCoder(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/CryptCoder;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getServiceToken()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken$1;->this$0:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 3
    iget-object v0, v0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    .line 5
    return-object v0
.end method

.method public signParams(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
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

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken$1;->this$0:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 3
    iget-object v0, v0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 5
    invoke-static {p1, p2, p3, v0}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->getSignature(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    .line 11
    const-string v0, "signature"

    .line 13
    invoke-direct {p2, v0, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method
