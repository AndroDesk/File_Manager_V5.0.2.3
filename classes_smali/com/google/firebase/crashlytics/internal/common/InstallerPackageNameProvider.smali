.class Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;
.super Ljava/lang/Object;
.source "InstallerPackageNameProvider.java"


# static fields
.field private static final NO_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = ""


# instance fields
.field private installerPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_10

    .line 15
    const-string p0, ""

    .line 17
    :cond_10
    return-object p0
.end method


# virtual methods
.method public declared-synchronized getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;->installerPackageName:Ljava/lang/String;

    .line 4
    if-nez v0, :cond_b

    .line 6
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;->loadInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;->installerPackageName:Ljava/lang/String;

    .line 12
    :cond_b
    const-string p1, ""

    .line 14
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;->installerPackageName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_17

    .line 22
    const/4 p1, 0x0

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;->installerPackageName:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 26
    :goto_19
    monitor-exit p0

    .line 27
    return-object p1

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1
.end method
