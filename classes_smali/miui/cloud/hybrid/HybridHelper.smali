.class public Lmiui/cloud/hybrid/HybridHelper;
.super Ljava/lang/Object;
.source "HybridHelper.java"


# static fields
.field private static final HYBRID_TOKEN_PROVIDER_URI:Landroid/net/Uri;

.field public static final KEY_INVALIDATE_CACHE_AND_SET_HYBRID_COOKIES_FOR_AUTO_LOGIN_RESULT:Ljava/lang/String; = "invalidate_cache_and_set_hybrid_cookies_for_account_login_result"

.field public static final METHOD_INVALIDATE_CACHE_AND_SET_HYBRID_COOKIES_FOR_AUTO_LOGIN:Ljava/lang/String; = "invalidate_cache_and_set_hybrid_cookies_for_account_login"

.field private static final TAG:Ljava/lang/String; = "HybridHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.miui.cloudservice.hybrid.HybridTokenProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/cloud/hybrid/HybridHelper;->HYBRID_TOKEN_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockingInvalidateAndSetHybridCookiesForAutoLogin(Landroid/content/Context;)Z
    .registers 6

    const-string v0, "HybridHelper"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_8
    sget-object v3, Lmiui/cloud/hybrid/HybridHelper;->HYBRID_TOKEN_PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_35
    .catchall {:try_start_8 .. :try_end_e} :catchall_33

    if-nez p0, :cond_1b

    :try_start_10
    const-string v1, "blockingInvalidateAndSetHybridCookiesForAutoLogin : provider not exist , ignore ."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_2d
    .catchall {:try_start_10 .. :try_end_15} :catchall_44

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1a
    return v2

    :cond_1b
    :try_start_1b
    const-string v3, "invalidate_cache_and_set_hybrid_cookies_for_account_login"

    invoke-virtual {p0, v3, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2f

    const-string v3, "invalidate_cache_and_set_hybrid_cookies_for_account_login_result"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_29} :catch_2d
    .catchall {:try_start_1b .. :try_end_29} :catchall_44

    if-eqz v0, :cond_2f

    const/4 v2, 0x1

    goto :goto_2f

    :catch_2d
    move-exception v1

    goto :goto_39

    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return v2

    :catchall_33
    move-exception v0

    goto :goto_46

    :catch_35
    move-exception p0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    :goto_39
    :try_start_39
    const-string v3, "blockingInvalidateAndSetHybridCookiesForAutoLogin"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_44

    if-eqz p0, :cond_43

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_43
    return v2

    :catchall_44
    move-exception v0

    move-object v1, p0

    :goto_46
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_4b
    throw v0
.end method
