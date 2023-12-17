.class public Lmiuix/hybrid/feature/Barcode;
.super Ljava/lang/Object;
.source "Barcode.java"

# interfaces
.implements Lmiuix/hybrid/HybridFeature;


# static fields
.field private static final ACTION_SCAN_BARCODE:Ljava/lang/String; = "scan"

.field private static final INTENT_ACTION_SCAN_BARCODE:Ljava/lang/String; = "android.intent.action.scanbarcode"

.field private static final INTENT_CATEGORY_SYSAPP_TOOL:Ljava/lang/String; = "miui.intent.category.SYSAPP_TOOL"

.field private static final INTENT_EXTRA_IS_BACKTO_THIRDAPP:Ljava/lang/String; = "isBackToThirdApp"

.field private static final INTENT_EXTRA_RESULT:Ljava/lang/String; = "result"

.field private static final INTENT_EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final REQUEST_SCAN_BARCODE:I = 0x7698246e


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()I
    .registers 1

    .line 1
    sget v0, Lmiuix/hybrid/feature/Barcode;->REQUEST_SCAN_BARCODE:I

    .line 3
    return v0
.end method

.method public static synthetic access$100(Lmiuix/hybrid/feature/Barcode;Landroid/content/Intent;)Lorg/json/JSONObject;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Barcode;->makeResult(Landroid/content/Intent;)Lorg/json/JSONObject;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private makeResult(Landroid/content/Intent;)Lorg/json/JSONObject;
    .registers 6

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    const/4 v0, -0x1

    .line 6
    const-string v1, "type"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    const-string v2, "result"

    .line 14
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    new-instance v3, Lorg/json/JSONObject;

    .line 20
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 23
    :try_start_16
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1c} :catch_1d

    .line 29
    goto :goto_21

    .line 30
    :catch_1d
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    :goto_21
    return-object v3
.end method


# virtual methods
.method public getInvocationMode(Lmiuix/hybrid/Request;)Lmiuix/hybrid/HybridFeature$Mode;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "scan"

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
    .registers 8

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "scan"

    .line 7
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const/16 v1, 0xcc

    .line 13
    if-nez v0, :cond_16

    .line 15
    new-instance p1, Lmiuix/hybrid/Response;

    .line 17
    const-string v0, "no such action"

    .line 19
    invoke-direct {p1, v1, v0}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

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
    move-result-object v2

    .line 31
    new-instance v3, Landroid/content/Intent;

    .line 33
    const-string v4, "android.intent.action.scanbarcode"

    .line 35
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v4, "miui.intent.category.SYSAPP_TOOL"

    .line 40
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const/4 v4, 0x1

    .line 44
    const-string v5, "isBackToThirdApp"

    .line 46
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 52
    move-result-object v4

    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 57
    move-result-object v4

    .line 58
    const/4 v5, 0x0

    .line 59
    if-nez v4, :cond_4b

    .line 61
    new-instance v0, Lmiuix/hybrid/Response;

    .line 63
    const-string v2, "can\'t find barcode scanner activity"

    .line 65
    invoke-direct {v0, v1, v2}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getCallback()Lmiuix/hybrid/Callback;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, v0}, Lmiuix/hybrid/Callback;->callback(Lmiuix/hybrid/Response;)V

    .line 75
    return-object v5

    .line 76
    :cond_4b
    new-instance v1, Lmiuix/hybrid/feature/Barcode$1;

    .line 78
    invoke-direct {v1, p0, v0, p1}, Lmiuix/hybrid/feature/Barcode$1;-><init>(Lmiuix/hybrid/feature/Barcode;Lmiuix/hybrid/NativeInterface;Lmiuix/hybrid/Request;)V

    .line 81
    invoke-virtual {v0, v1}, Lmiuix/hybrid/NativeInterface;->addLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V

    .line 84
    sget p1, Lmiuix/hybrid/feature/Barcode;->REQUEST_SCAN_BARCODE:I

    .line 86
    invoke-virtual {v2, v3, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 89
    return-object v5
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
