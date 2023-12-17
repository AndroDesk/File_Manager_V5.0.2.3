.class public Lmiuix/hybrid/feature/Mipay;
.super Ljava/lang/Object;
.source "Mipay.java"

# interfaces
.implements Lmiuix/hybrid/HybridFeature;


# static fields
.field private static final ACTION_MIPAY_COUNTER:Ljava/lang/String; = "com.xiaomi.action.MIPAY_PAY_ORDER"

.field private static final ACTION_PAY:Ljava/lang/String; = "pay"

.field private static final ERROR_CODE_INVALID:I = -0x1

.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_EXTRA:Ljava/lang/String; = "extra"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_ORDER:Ljava/lang/String; = "order"

.field private static final KEY_ORDER_INFO:Ljava/lang/String; = "orderInfo"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final PACKAGE_MIPAY_WALLET:Ljava/lang/String; = "com.mipay.wallet"

.field private static final REQUEST_MIPAY:I = 0x1335188


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/hybrid/feature/Mipay;Landroid/content/Intent;)Lorg/json/JSONObject;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Mipay;->makeResult(Landroid/content/Intent;)Lorg/json/JSONObject;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private makeResult(Landroid/content/Intent;)Lorg/json/JSONObject;
    .registers 7

    .line 1
    const-string v0, "result"

    .line 3
    const-string v1, "message"

    .line 5
    const-string v2, "code"

    .line 7
    new-instance v3, Lorg/json/JSONObject;

    .line 9
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 12
    const/4 v4, -0x1

    .line 13
    :try_start_c
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    move-result v4

    .line 17
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_20

    .line 30
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    :cond_20
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_32

    .line 43
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_2d} :catch_2e

    .line 46
    goto :goto_32

    .line 47
    :catch_2e
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    :cond_32
    :goto_32
    return-object v3
.end method

.method private pay(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Lmiuix/hybrid/Response;
    .registers 8

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xcc

    .line 7
    if-eqz v0, :cond_10

    .line 9
    new-instance p1, Lmiuix/hybrid/Response;

    .line 11
    const-string p2, "order cannot be empty"

    .line 13
    invoke-direct {p1, v1, p2}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 16
    return-object p1

    .line 17
    :cond_10
    new-instance v0, Landroid/content/Intent;

    .line 19
    const-string v2, "com.xiaomi.action.MIPAY_PAY_ORDER"

    .line 21
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v2, "com.mipay.wallet"

    .line 26
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 37
    move-result-object v2

    .line 38
    if-nez v2, :cond_2f

    .line 40
    new-instance p1, Lmiuix/hybrid/Response;

    .line 42
    const-string p2, "mipay feature not available"

    .line 44
    invoke-direct {p1, v1, p2}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 47
    return-object p1

    .line 48
    :cond_2f
    const-string v1, "order"

    .line 50
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string p2, "extra"

    .line 55
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 58
    const p2, 0x1335188

    .line 61
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    const/4 p1, 0x0

    .line 65
    return-object p1
.end method


# virtual methods
.method public getInvocationMode(Lmiuix/hybrid/Request;)Lmiuix/hybrid/HybridFeature$Mode;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "pay"

    .line 7
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_f

    .line 13
    sget-object p1, Lmiuix/hybrid/HybridFeature$Mode;->CALLBACK:Lmiuix/hybrid/HybridFeature$Mode;

    .line 15
    return-object p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public invoke(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 5

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pay"

    .line 7
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_16

    .line 13
    new-instance p1, Lmiuix/hybrid/Response;

    .line 15
    const/16 v0, 0xcc

    .line 17
    const-string v1, "no such action"

    .line 19
    invoke-direct {p1, v0, v1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 22
    return-object p1

    .line 23
    :cond_16
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getNativeInterface()Lmiuix/hybrid/NativeInterface;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lmiuix/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lmiuix/hybrid/feature/Mipay$1;

    .line 33
    invoke-direct {v2, p0, v0, p1}, Lmiuix/hybrid/feature/Mipay$1;-><init>(Lmiuix/hybrid/feature/Mipay;Lmiuix/hybrid/NativeInterface;Lmiuix/hybrid/Request;)V

    .line 36
    invoke-virtual {v0, v2}, Lmiuix/hybrid/NativeInterface;->addLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V

    .line 39
    const/4 v0, 0x0

    .line 40
    :try_start_27
    new-instance v2, Lorg/json/JSONObject;

    .line 42
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getRawParams()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    const-string p1, "orderInfo"

    .line 51
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object p1
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_36} :catch_37

    .line 55
    goto :goto_3c

    .line 56
    :catch_37
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    move-object p1, v0

    .line 61
    :goto_3c
    invoke-direct {p0, v1, p1, v0}, Lmiuix/hybrid/feature/Mipay;->pay(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Lmiuix/hybrid/Response;

    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method

.method public setParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
