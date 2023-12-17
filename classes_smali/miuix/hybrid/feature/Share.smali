.class public Lmiuix/hybrid/feature/Share;
.super Ljava/lang/Object;
.source "Share.java"

# interfaces
.implements Lmiuix/hybrid/HybridFeature;


# static fields
.field private static final ACTION_SEND:Ljava/lang/String; = "send"

.field private static final PARAM_DATA:Ljava/lang/String; = "data"

.field private static final PARAM_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "HybridShare"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private invokeShareTo(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 10

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getNativeInterface()Lmiuix/hybrid/NativeInterface;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getCallback()Lmiuix/hybrid/Callback;

    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Lmiuix/hybrid/feature/Share$1;

    .line 15
    invoke-direct {v3, p0, v0, v2}, Lmiuix/hybrid/feature/Share$1;-><init>(Lmiuix/hybrid/feature/Share;Lmiuix/hybrid/NativeInterface;Lmiuix/hybrid/Callback;)V

    .line 18
    invoke-virtual {v0, v3}, Lmiuix/hybrid/NativeInterface;->addLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V

    .line 21
    new-instance v0, Landroid/content/Intent;

    .line 23
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 26
    const-string v3, "android.intent.action.SEND"

    .line 28
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getRawParams()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    const/4 v3, 0x0

    .line 36
    const/16 v4, 0xc8

    .line 38
    :try_start_25
    new-instance v5, Lorg/json/JSONObject;

    .line 40
    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v6, "type"

    .line 45
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v6

    .line 49
    const-string v7, "data"

    .line 51
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    if-eqz v6, :cond_56

    .line 57
    if-nez v5, :cond_3b

    .line 59
    goto :goto_56

    .line 60
    :cond_3b
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v7, "text/"

    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_4c

    .line 71
    const-string v6, "android.intent.extra.TEXT"

    .line 73
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    goto :goto_51

    .line 77
    :cond_4c
    const-string v6, "android.intent.extra.STREAM"

    .line 79
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    :goto_51
    const/4 v5, 0x1

    .line 83
    invoke-virtual {v1, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    goto :goto_81

    .line 87
    :cond_56
    :goto_56
    new-instance v0, Lmiuix/hybrid/Response;

    .line 89
    const-string v1, "no data to share"

    .line 91
    invoke-direct {v0, v4, v1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 94
    invoke-virtual {v2, v0}, Lmiuix/hybrid/Callback;->callback(Lmiuix/hybrid/Response;)V
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_60} :catch_61

    .line 97
    return-object v3

    .line 98
    :catch_61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v1, "invalid JSON string:"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    const-string v0, "HybridShare"

    .line 117
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance p1, Lmiuix/hybrid/Response;

    .line 122
    const-string v0, "invalid data to share"

    .line 124
    invoke-direct {p1, v4, v0}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 127
    invoke-virtual {v2, p1}, Lmiuix/hybrid/Callback;->callback(Lmiuix/hybrid/Response;)V

    .line 130
    :goto_81
    return-object v3
.end method


# virtual methods
.method public getInvocationMode(Lmiuix/hybrid/Request;)Lmiuix/hybrid/HybridFeature$Mode;
    .registers 2

    .line 1
    sget-object p1, Lmiuix/hybrid/HybridFeature$Mode;->CALLBACK:Lmiuix/hybrid/HybridFeature$Mode;

    .line 3
    return-object p1
.end method

.method public invoke(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "send"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_11

    .line 13
    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Share;->invokeShareTo(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_11
    new-instance p1, Lmiuix/hybrid/Response;

    .line 20
    const/16 v0, 0xcc

    .line 22
    const-string v1, "no such action"

    .line 24
    invoke-direct {p1, v0, v1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 27
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
