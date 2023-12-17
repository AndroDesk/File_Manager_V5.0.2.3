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

    .line 1
    const-string v0, "content://com.miui.cloudservice.hybrid.HybridTokenProvider"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lmiui/cloud/hybrid/HybridHelper;->HYBRID_TOKEN_PROVIDER_URI:Landroid/net/Uri;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockingInvalidateAndSetHybridCookiesForAutoLogin(Landroid/content/Context;)Z
    .registers 6

    .line 1
    const-string v0, "HybridHelper"

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_8
    sget-object v3, Lmiui/cloud/hybrid/HybridHelper;->HYBRID_TOKEN_PROVIDER_URI:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 14
    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_35
    .catchall {:try_start_8 .. :try_end_e} :catchall_33

    .line 15
    if-nez p0, :cond_1b

    .line 17
    :try_start_10
    const-string v1, "blockingInvalidateAndSetHybridCookiesForAutoLogin : provider not exist , ignore ."

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_2d
    .catchall {:try_start_10 .. :try_end_15} :catchall_44

    .line 22
    if-eqz p0, :cond_1a

    .line 24
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 27
    :cond_1a
    return v2

    .line 28
    :cond_1b
    :try_start_1b
    const-string v3, "invalidate_cache_and_set_hybrid_cookies_for_account_login"

    .line 30
    invoke-virtual {p0, v3, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_2f

    .line 36
    const-string v3, "invalidate_cache_and_set_hybrid_cookies_for_account_login_result"

    .line 38
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 41
    move-result v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_29} :catch_2d
    .catchall {:try_start_1b .. :try_end_29} :catchall_44

    .line 42
    if-eqz v0, :cond_2f

    .line 44
    const/4 v2, 0x1

    .line 45
    goto :goto_2f

    .line 46
    :catch_2d
    move-exception v1

    .line 47
    goto :goto_39

    .line 48
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 51
    return v2

    .line 52
    :catchall_33
    move-exception v0

    .line 53
    goto :goto_46

    .line 54
    :catch_35
    move-exception p0

    .line 55
    move-object v4, v1

    .line 56
    move-object v1, p0

    .line 57
    move-object p0, v4

    .line 58
    :goto_39
    :try_start_39
    const-string v3, "blockingInvalidateAndSetHybridCookiesForAutoLogin"

    .line 60
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_44

    .line 63
    if-eqz p0, :cond_43

    .line 65
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 68
    :cond_43
    return v2

    .line 69
    :catchall_44
    move-exception v0

    .line 70
    move-object v1, p0

    .line 71
    :goto_46
    if-eqz v1, :cond_4b

    .line 73
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 76
    :cond_4b
    throw v0
.end method
