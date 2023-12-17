.class public final Lw3/k;
.super Ljava/lang/Object;
.source "RequestInjectorCompat.java"


# static fields
.field public static final a:La/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget v0, Lcom/xiaomi/micloudsdk/utils/MiCloudSDKDependencyUtil;->SDKEnvironment:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_e

    new-instance v0, Lw3/j;

    invoke-direct {v0}, Lw3/j;-><init>()V

    sput-object v0, Lw3/k;->a:La/b;

    goto :goto_16

    :cond_e
    new-instance v0, La/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/b;-><init>(I)V

    sput-object v0, Lw3/k;->a:La/b;

    :goto_16
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_f} :catch_16

    const v1, 0xcb23

    if-ne p1, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1a

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1a
    :goto_1a
    if-eqz v0, :cond_21

    sget-object p1, Lx3/a;->a:La/b;

    invoke-virtual {p1, p0}, La/b;->R(Landroid/content/Context;)V

    :cond_21
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/xiaomi/micloudsdk/exception/CloudServerException;)V
    .registers 4

    iget v0, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_10

    iget p1, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    if-lez p1, :cond_10

    sget-object v0, Lw3/k;->a:La/b;

    invoke-virtual {v0, p0, p1}, La/b;->X(Landroid/content/Context;I)V

    goto :goto_1a

    :cond_10
    const p1, 0xcb23

    if-ne v0, p1, :cond_1a

    sget-object p1, Lx3/a;->a:La/b;

    invoke-virtual {p1, p0}, La/b;->R(Landroid/content/Context;)V

    :cond_1a
    :goto_1a
    return-void
.end method
