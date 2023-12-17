.class public Lcom/google/firebase/crashlytics/internal/common/IdManager;
.super Ljava/lang/Object;
.source "IdManager.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider;


# static fields
.field public static final DEFAULT_VERSION_NAME:Ljava/lang/String; = "0.0"

.field private static final FORWARD_SLASH_REGEX:Ljava/lang/String;

.field private static final ID_PATTERN:Ljava/util/regex/Pattern;

.field public static final PREFKEY_ADVERTISING_ID:Ljava/lang/String; = "crashlytics.advertising.id"

.field public static final PREFKEY_FIREBASE_IID:Ljava/lang/String; = "firebase.installation.id"

.field public static final PREFKEY_INSTALLATION_UUID:Ljava/lang/String; = "crashlytics.installation.id"

.field public static final PREFKEY_LEGACY_INSTALLATION_UUID:Ljava/lang/String; = "crashlytics.installation.id"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final appIdentifier:Ljava/lang/String;

.field private crashlyticsInstallId:Ljava/lang/String;

.field private final firebaseInstallationsApi:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final installerPackageNameProvider:Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "[^\\p{Alnum}]"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->ID_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    const-string v0, "/"

    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->FORWARD_SLASH_REGEX:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-eqz p1, :cond_1d

    .line 6
    if-eqz p2, :cond_15

    .line 8
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->appContext:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->appIdentifier:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->firebaseInstallationsApi:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 14
    new-instance p1, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;

    .line 16
    invoke-direct {p1}, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->installerPackageNameProvider:Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;

    .line 21
    return-void

    .line 22
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string p2, "appIdentifier must not be null"

    .line 26
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1

    .line 30
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    const-string p2, "appContext must not be null"

    .line 34
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1
.end method

.method private declared-synchronized createAndStoreIid(Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->formatId(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v3, "Created new Crashlytics IID: "

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 38
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 41
    move-result-object p2

    .line 42
    const-string v1, "crashlytics.installation.id"

    .line 44
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    move-result-object p2

    .line 48
    const-string v1, "firebase.installation.id"

    .line 50
    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 57
    monitor-exit p0

    .line 58
    return-object v0

    .line 59
    :catchall_3a
    move-exception p1

    .line 60
    monitor-exit p0

    .line 61
    throw p1
.end method

.method private static formatId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_16

    .line 5
    :cond_4
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->ID_PATTERN:Ljava/util/regex/Pattern;

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    move-result-object p0

    .line 11
    const-string v0, ""

    .line 13
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    :goto_16
    return-object p0
.end method

.method private declared-synchronized migrateLegacyId(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v2, "Migrating legacy Crashlytics IID: "

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 26
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    move-result-object p3

    .line 30
    const-string v0, "crashlytics.installation.id"

    .line 32
    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    move-result-object p1

    .line 36
    const-string p3, "firebase.installation.id"

    .line 38
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 48
    move-result-object p1

    .line 49
    const-string p2, "crashlytics.installation.id"

    .line 51
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    move-result-object p1

    .line 55
    const-string p2, "crashlytics.advertising.id"

    .line 57
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    .line 64
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :catchall_41
    move-exception p1

    .line 67
    monitor-exit p0

    .line 68
    throw p1
.end method

.method private removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->FORWARD_SLASH_REGEX:Ljava/lang/String;

    .line 3
    const-string v1, ""

    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method


# virtual methods
.method public getAppIdentifier()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->appIdentifier:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public declared-synchronized getCrashlyticsInstallId()Ljava/lang/String;
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a5

    .line 4
    if-eqz v0, :cond_7

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->appContext:Landroid/content/Context;

    .line 10
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->firebaseInstallationsApi:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 16
    invoke-interface {v1}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    .line 19
    move-result-object v1

    .line 20
    const-string v2, "firebase.installation.id"

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v2
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_a5

    .line 27
    :try_start_1a
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/Utils;->awaitEvenIfOnMainThread(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_21
    .catchall {:try_start_1a .. :try_end_20} :catchall_a5

    .line 33
    goto :goto_30

    .line 34
    :catch_21
    move-exception v1

    .line 35
    :try_start_22
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 38
    move-result-object v4

    .line 39
    const-string v5, "Failed to retrieve installation id"

    .line 41
    invoke-virtual {v4, v5, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    if-eqz v2, :cond_2f

    .line 46
    move-object v1, v2

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move-object v1, v3

    .line 49
    :goto_30
    if-nez v2, :cond_68

    .line 51
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->appContext:Landroid/content/Context;

    .line 53
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getLegacySharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 56
    move-result-object v2

    .line 57
    const-string v4, "crashlytics.installation.id"

    .line 59
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 66
    move-result-object v4

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v6, "No cached FID; legacy id is "

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v4, v5}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 87
    if-nez v3, :cond_5f

    .line 89
    invoke-direct {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->createAndStoreIid(Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;

    .line 95
    goto :goto_64

    .line 96
    :cond_5f
    iput-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;

    .line 98
    invoke-direct {p0, v3, v1, v0, v2}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->migrateLegacyId(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 101
    :goto_64
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;
    :try_end_66
    .catchall {:try_start_22 .. :try_end_66} :catchall_a5

    .line 103
    monitor-exit p0

    .line 104
    return-object v0

    .line 105
    :cond_68
    :try_start_68
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_9b

    .line 111
    const-string v2, "crashlytics.installation.id"

    .line 113
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object v2

    .line 117
    iput-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 122
    move-result-object v2

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    .line 125
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    const-string v4, "Found matching FID, using Crashlytics IID: "

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;

    .line 147
    if-nez v2, :cond_a1

    .line 149
    invoke-direct {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->createAndStoreIid(Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;

    .line 155
    goto :goto_a1

    .line 156
    :cond_9b
    invoke-direct {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->createAndStoreIid(Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 160
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;

    .line 162
    :cond_a1
    :goto_a1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->crashlyticsInstallId:Ljava/lang/String;
    :try_end_a3
    .catchall {:try_start_68 .. :try_end_a3} :catchall_a5

    .line 164
    monitor-exit p0

    .line 165
    return-object v0

    .line 166
    :catchall_a5
    move-exception v0

    .line 167
    monitor-exit p0

    .line 168
    throw v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->installerPackageNameProvider:Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/IdManager;->appContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 8
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 17
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x1

    .line 22
    aput-object v2, v1, v3

    .line 24
    const-string v2, "%s/%s"

    .line 26
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public getOsBuildVersionString()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getOsDisplayVersionString()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
