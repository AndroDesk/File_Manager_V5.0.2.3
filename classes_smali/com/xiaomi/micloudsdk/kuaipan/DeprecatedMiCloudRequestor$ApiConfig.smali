.class public Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;
.super Ljava/lang/Object;
.source "DeprecatedMiCloudRequestor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApiConfig"
.end annotation


# instance fields
.field public final method:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

.field public final synthetic this$0:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->this$0:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->method:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    const/4 p1, 0x0

    invoke-static {p3, p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateRequestHost(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->uri:Landroid/net/Uri;

    return-void
.end method

.method public static synthetic access$002(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->uri:Landroid/net/Uri;

    return-object p1
.end method


# virtual methods
.method public filterQuerys(Ljava/util/Map;Ljava/lang/String;Lcn/kuaipan/android/http/KscHttpRequest;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/kuaipan/android/http/KscHttpRequest;",
            "Lcn/kuaipan/android/kss/TransferStep;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_32

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_32
    const-string p1, "filterQuerys failed."

    if-eqz p2, :cond_4c

    :try_start_36
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->this$0:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    iget-object v1, v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    if-eqz v1, :cond_42

    iget-object v1, v1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_42
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "data"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    const/4 p2, 0x0

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->this$0:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    iget-object v2, v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_89

    iget-object v1, v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    if-eqz v1, :cond_89

    iget-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->method:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->this$0:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    iget-object v2, v2, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    iget-object v2, v2, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static {p2, v1, v0, v2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getSignature(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "signature"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->this$0:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->access$100(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->this$0:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    iget-object v1, v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mAccount:Landroid/accounts/Account;

    invoke-static {p2, v1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getCUserId(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->this$0:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    iget-object v1, v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    invoke-static {p2, v1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getCookies(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)Lorg/apache/http/Header;

    move-result-object p2

    :cond_89
    sget-object v1, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->GET:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->method:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    if-ne v1, v2, :cond_93

    invoke-virtual {p3, v0}, Lcn/kuaipan/android/http/KscHttpRequest;->b(Ljava/util/ArrayList;)V

    goto :goto_a6

    :cond_93
    invoke-virtual {p3, v0}, Lcn/kuaipan/android/http/KscHttpRequest;->a(Ljava/util/ArrayList;)V

    invoke-virtual {p3}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Lorg/apache/http/Header;)V

    :goto_a6
    invoke-virtual {p3}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p3

    invoke-interface {p3, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Lorg/apache/http/Header;)V
    :try_end_ad
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_36 .. :try_end_ad} :catch_c0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_36 .. :try_end_ad} :catch_b7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_ad} :catch_ae

    return-object v0

    :catch_ae
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p2, p1, p4}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p1

    throw p1

    :catch_b7
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p2, p1, p4}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p1

    throw p1

    :catch_c0
    move-exception p2

    invoke-static {p2, p1, p4}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p1

    throw p1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->uri:Landroid/net/Uri;

    return-object v0
.end method
