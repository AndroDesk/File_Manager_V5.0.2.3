.class public Lcom/xiaomi/onetrack/util/oaid/helpers/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "NubiaDeviceIDHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, ""

    .line 3
    const-string v1, "content://cn.nubia.identity/identity"

    .line 5
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    move-result-object v1

    .line 9
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 16
    move-result-object p1

    .line 17
    const-string v1, "getOAID"

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p1, v1, v2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    .line 27
    const-string p1, "code"

    .line 29
    const/4 v2, -0x1

    .line 30
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_35

    .line 36
    const-string p1, "id"

    .line 38
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_2b

    .line 42
    move-object v0, p1

    .line 43
    goto :goto_35

    .line 44
    :catch_2b
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    const-string v1, "NubiaDeviceIDHelper"

    .line 51
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_35
    :goto_35
    return-object v0
.end method
