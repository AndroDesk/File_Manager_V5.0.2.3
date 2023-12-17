.class public Lcom/google/android/gms/security/ProviderInstaller;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;
    }
.end annotation


# static fields
.field public static final PROVIDER_NAME:Ljava/lang/String; = "GmsCore_OpenSSL"

.field private static final lock:Ljava/lang/Object;

.field private static final zziv:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

.field private static zziw:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zziv:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->lock:Ljava/lang/Object;

    .line 14
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zziw:Ljava/lang/reflect/Method;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installIfNeeded(Landroid/content/Context;)V
    .registers 9

    .line 1
    const-string v0, "Context must not be null"

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zziv:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 8
    const v1, 0xb5f608

    .line 11
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->verifyGooglePlayServicesIsAvailable(Landroid/content/Context;I)V

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/security/ProviderInstaller;->zzk(Landroid/content/Context;)Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_17

    .line 20
    invoke-static {p0}, Lcom/google/android/gms/security/ProviderInstaller;->zzl(Landroid/content/Context;)Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    :cond_17
    const/16 v1, 0x8

    .line 26
    if-eqz v0, :cond_8d

    .line 28
    sget-object v2, Lcom/google/android/gms/security/ProviderInstaller;->lock:Ljava/lang/Object;

    .line 30
    monitor-enter v2

    .line 31
    :try_start_1e
    sget-object v3, Lcom/google/android/gms/security/ProviderInstaller;->zziw:Ljava/lang/reflect/Method;

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x1

    .line 35
    if-nez v3, :cond_3c

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 40
    move-result-object v3

    .line 41
    const-string v6, "com.google.android.gms.common.security.ProviderInstallerImpl"

    .line 43
    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    move-result-object v3

    .line 47
    new-array v6, v5, [Ljava/lang/Class;

    .line 49
    const-class v7, Landroid/content/Context;

    .line 51
    aput-object v7, v6, v4

    .line 53
    const-string v7, "insertProvider"

    .line 55
    invoke-virtual {v3, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 58
    move-result-object v3

    .line 59
    sput-object v3, Lcom/google/android/gms/security/ProviderInstaller;->zziw:Ljava/lang/reflect/Method;

    .line 61
    :cond_3c
    sget-object v3, Lcom/google/android/gms/security/ProviderInstaller;->zziw:Ljava/lang/reflect/Method;

    .line 63
    const/4 v6, 0x0

    .line 64
    new-array v5, v5, [Ljava/lang/Object;

    .line 66
    aput-object v0, v5, v4

    .line 68
    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_46} :catch_4a
    .catchall {:try_start_1e .. :try_end_46} :catchall_48

    .line 71
    :try_start_46
    monitor-exit v2

    .line 72
    return-void

    .line 73
    :catchall_48
    move-exception p0

    .line 74
    goto :goto_8b

    .line 75
    :catch_4a
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 79
    move-result-object v3

    .line 80
    const-string v4, "ProviderInstaller"

    .line 82
    const/4 v5, 0x6

    .line 83
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_7e

    .line 89
    if-nez v3, :cond_5f

    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    move-result-object v4

    .line 95
    goto :goto_63

    .line 96
    :cond_5f
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    move-result-object v4

    .line 100
    :goto_63
    const-string v5, "ProviderInstaller"

    .line 102
    const-string v6, "Failed to install provider: "

    .line 104
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_76

    .line 114
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v4

    .line 118
    goto :goto_7b

    .line 119
    :cond_76
    new-instance v4, Ljava/lang/String;

    .line 121
    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 124
    :goto_7b
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_7e
    if-nez v3, :cond_81

    .line 129
    goto :goto_82

    .line 130
    :cond_81
    move-object v0, v3

    .line 131
    :goto_82
    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 134
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    .line 136
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    .line 139
    throw p0

    .line 140
    :goto_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_46 .. :try_end_8c} :catchall_48

    .line 141
    throw p0

    .line 142
    :cond_8d
    const-string p0, "ProviderInstaller"

    .line 144
    const-string v0, "Failed to get remote context"

    .line 146
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    .line 151
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    .line 154
    throw p0
.end method

.method public static installIfNeededAsync(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V
    .registers 3

    .line 1
    const-string v0, "Context must not be null"

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string v0, "Listener must not be null"

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v0, "Must be called on the UI thread"

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/google/android/gms/security/zza;

    .line 18
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/security/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V

    .line 21
    const/4 p0, 0x0

    .line 22
    new-array p0, p0, [Ljava/lang/Void;

    .line 24
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 27
    return-void
.end method

.method public static synthetic zzal()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zziv:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 3
    return-object v0
.end method

.method private static zzk(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 3
    const-string v1, "providerinstaller"

    .line 5
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getModuleContext()Landroid/content/Context;

    .line 12
    move-result-object p0
    :try_end_c
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_c} :catch_d

    .line 13
    return-object p0

    .line 14
    :catch_d
    move-exception p0

    .line 15
    const-string v0, "Failed to load providerinstaller module: "

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_23

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    goto :goto_28

    .line 36
    :cond_23
    new-instance p0, Ljava/lang/String;

    .line 38
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 41
    :goto_28
    const-string v0, "ProviderInstaller"

    .line 43
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method private static zzl(Landroid/content/Context;)Landroid/content/Context;
    .registers 5

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    .line 4
    move-result-object p0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p0

    .line 6
    :catch_5
    move-exception v0

    .line 7
    const-string v1, "Failed to load GMS Core context for providerinstaller: "

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1b

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    goto :goto_21

    .line 28
    :cond_1b
    new-instance v2, Ljava/lang/String;

    .line 30
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 33
    move-object v1, v2

    .line 34
    :goto_21
    const-string v2, "ProviderInstaller"

    .line 36
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method
