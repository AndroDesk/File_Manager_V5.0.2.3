.class public final Lw3/k;
.super Ljava/lang/Object;
.source "RequestInjectorCompat.java"


# static fields
.field public static final a:La/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Lcom/xiaomi/micloudsdk/utils/MiCloudSDKDependencyUtil;->SDKEnvironment:I

    .line 3
    const/16 v1, 0x12

    .line 5
    if-lt v0, v1, :cond_e

    .line 7
    new-instance v0, Lw3/j;

    .line 9
    invoke-direct {v0}, Lw3/j;-><init>()V

    .line 12
    sput-object v0, Lw3/k;->a:La/b;

    .line 14
    goto :goto_16

    .line 15
    :cond_e
    new-instance v0, La/b;

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, La/b;-><init>(I)V

    .line 21
    sput-object v0, Lw3/k;->a:La/b;

    .line 23
    :goto_16
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const/4 v0, 0x0

    .line 5
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    const-string p1, "code"

    .line 12
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 15
    move-result p1
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_f} :catch_16

    .line 16
    const v1, 0xcb23

    .line 19
    if-ne p1, v1, :cond_1a

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_1a

    .line 23
    :catch_16
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :cond_1a
    :goto_1a
    if-eqz v0, :cond_21

    .line 29
    sget-object p1, Lx3/a;->a:La/b;

    .line 31
    invoke-virtual {p1, p0}, La/b;->R(Landroid/content/Context;)V

    .line 34
    :cond_21
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/xiaomi/micloudsdk/exception/CloudServerException;)V
    .registers 4

    .line 1
    iget v0, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    .line 3
    const/16 v1, 0x1f7

    .line 5
    if-ne v0, v1, :cond_10

    .line 7
    iget p1, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    .line 9
    if-lez p1, :cond_10

    .line 11
    sget-object v0, Lw3/k;->a:La/b;

    .line 13
    invoke-virtual {v0, p0, p1}, La/b;->X(Landroid/content/Context;I)V

    .line 16
    goto :goto_1a

    .line 17
    :cond_10
    const p1, 0xcb23

    .line 20
    if-ne v0, p1, :cond_1a

    .line 22
    sget-object p1, Lx3/a;->a:La/b;

    .line 24
    invoke-virtual {p1, p0}, La/b;->R(Landroid/content/Context;)V

    .line 27
    :cond_1a
    :goto_1a
    return-void
.end method
