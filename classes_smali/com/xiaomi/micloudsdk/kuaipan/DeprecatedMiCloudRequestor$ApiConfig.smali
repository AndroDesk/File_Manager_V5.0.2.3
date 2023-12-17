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
.method public constructor <init>(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->this$0:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->method:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-static {p3, p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateRequestHost(Ljava/lang/String;Z)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->uri:Landroid/net/Uri;

    .line 19
    return-void
.end method

.method public static synthetic access$002(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->uri:Landroid/net/Uri;

    .line 3
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p1, :cond_32

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_32

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_32

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 34
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    .line 40
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-direct {v4, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_15

    .line 51
    :cond_32
    const-string p1, "filterQuerys failed."

    .line 53
    if-eqz p2, :cond_4c

    .line 55
    :try_start_36
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->this$0:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    .line 57
    iget-object v1, v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 59
    if-eqz v1, :cond_42

    .line 61
    iget-object v1, v1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 63
    invoke-static {v1, p2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object p2

    .line 67
    :cond_42
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 69
    const-string v2, "data"

    .line 71
    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_4c
    const/4 p2, 0x0

    .line 78
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->this$0:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    .line 80
    iget-object v2, v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mAccount:Landroid/accounts/Account;

    .line 82
    if-eqz v2, :cond_89

    .line 84
    iget-object v1, v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 86
    if-eqz v1, :cond_89

    .line 88
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->method:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 90
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->uri:Landroid/net/Uri;

    .line 92
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->this$0:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    .line 98
    iget-object v2, v2, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 100
    iget-object v2, v2, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 102
    invoke-static {p2, v1, v0, v2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getSignature(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object p2

    .line 106
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 108
    const-string v2, "signature"

    .line 110
    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->this$0:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    .line 118
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->access$100(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;)Landroid/content/Context;

    .line 121
    move-result-object p2

    .line 122
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->this$0:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    .line 124
    iget-object v1, v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mAccount:Landroid/accounts/Account;

    .line 126
    invoke-static {p2, v1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getCUserId(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    .line 129
    move-result-object p2

    .line 130
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->this$0:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    .line 132
    iget-object v1, v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 134
    invoke-static {p2, v1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getCookies(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)Lorg/apache/http/Header;

    .line 137
    move-result-object p2

    .line 138
    :cond_89
    sget-object v1, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->GET:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 140
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->method:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 142
    if-ne v1, v2, :cond_93

    .line 144
    invoke-virtual {p3, v0}, Lcn/kuaipan/android/http/KscHttpRequest;->b(Ljava/util/ArrayList;)V

    .line 147
    goto :goto_a6

    .line 148
    :cond_93
    invoke-virtual {p3, v0}, Lcn/kuaipan/android/http/KscHttpRequest;->a(Ljava/util/ArrayList;)V

    .line 151
    invoke-virtual {p3}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    .line 154
    move-result-object v1

    .line 155
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    .line 157
    const-string v3, "Content-Type"

    .line 159
    const-string v4, "application/x-www-form-urlencoded"

    .line 161
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-interface {v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 167
    :goto_a6
    invoke-virtual {p3}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    .line 170
    move-result-object p3

    .line 171
    invoke-interface {p3, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Lorg/apache/http/Header;)V
    :try_end_ad
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_36 .. :try_end_ad} :catch_c0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_36 .. :try_end_ad} :catch_b7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_ad} :catch_ae

    .line 174
    return-object v0

    .line 175
    :catch_ae
    move-exception p2

    .line 176
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    invoke-static {p2, p1, p4}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 182
    move-result-object p1

    .line 183
    throw p1

    .line 184
    :catch_b7
    move-exception p2

    .line 185
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    invoke-static {p2, p1, p4}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 191
    move-result-object p1

    .line 192
    throw p1

    .line 193
    :catch_c0
    move-exception p2

    .line 194
    invoke-static {p2, p1, p4}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 197
    move-result-object p1

    .line 198
    throw p1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->uri:Landroid/net/Uri;

    .line 3
    return-object v0
.end method
