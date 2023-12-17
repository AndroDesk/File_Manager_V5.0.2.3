.class public Lcom/android/fileexplorer/util/PrivacyUtil;
.super Ljava/lang/Object;
.source "PrivacyUtil.java"


# static fields
.field private static final ACTION_SYSTEM_PERMISSION_DECLARE:Ljava/lang/String; = "miui.intent.action.SYSTEM_PERMISSION_DECLARE"

.field private static final ACTION_SYSTEM_PRIVACY_DECLARE:Ljava/lang/String; = "miui.intent.action.PRIVACY_DECLARE"

.field private static final AGREE_DESC:Ljava/lang/String; = "agree_desc"

.field private static final ALL_PURPOSE:Ljava/lang/String; = "all_purpose"

.field private static final APP_NAME:Ljava/lang/String; = "app_name"

.field public static final LOCAL_CHANGE:I = -0x3

.field private static final MANDATORY:Ljava/lang/String; = "mandatory"

.field private static final MIUI_SECURITY:Ljava/lang/String; = "com.lbe.security.miui"

.field private static final MIUI_SECURITY_SAFE_BOX_VERSION_CODE:I = 0xa0

.field private static final MIUI_SECURITY_VERSION_CODE:I = 0x6f

.field private static final NECESSARY_PERMISSION:Ljava/lang/String; = "mandatory_permission"

.field private static final OPTIONAL_PERM:Ljava/lang/String; = "optional_perm"

.field private static final OPTIONAL_PERM_DESC:Ljava/lang/String; = "optional_perm_desc"

.field private static final OPTIONAL_PERM_WIFI:Ljava/lang/String; = "change wifi state"

.field private static final PKG_NAME_SECURITYCENTER:Ljava/lang/String; = "com.miui.securitycenter"

.field private static final PRIVACY_POLICY:Ljava/lang/String; = "privacy_policy"

.field private static final PRIVACY_URI:Ljava/lang/String;

.field private static final PRIVACY_URI_GLOBAL:Ljava/lang/String; = "https://privacy.mi.com/all/%1$s"

.field private static final PURPOSE:Ljava/lang/String; = "main_purpose"

.field private static final PURPOSE_GLOBAL:Ljava/lang/String; = "purpose"

.field public static final RESULT_AGREE:I = 0x1

.field public static final RESULT_CANCEL:I = 0x2

.field public static final RESULT_CODE:I = 0x904

.field public static final RESULT_MISS_CONFIG:I = -0x1

.field public static final RESULT_REFUSE:I = 0x0

.field private static final RUNTIME_PERM:Ljava/lang/String; = "runtime_perm"

.field private static final RUNTIME_PERM_DESC:Ljava/lang/String; = "runtime_perm_desc"

.field private static final SHOW_ON_LOCK:Ljava/lang/String; = "show_locked"

.field private static final SHOW_STYLE:I = 0x1

.field private static final STYLE:Ljava/lang/String; = "style"

.field private static final TAG:Ljava/lang/String; = "PrivacyUtil"

.field private static final USER_AGREEMENT:Ljava/lang/String; = "user_agreement"

.field private static final USER_AGREEMENT_URI:Ljava/lang/String;

.field private static final USER_AGREEMENT_URI_GLOBAL:Ljava/lang/String; = "http://www.miui.com/res/doc/eula.html?region=%1$s&#38;lang=%2$s"

.field private static final USE_NETWORK:Ljava/lang/String; = "use_network"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isNotSupportMidrive()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    const-string v0, "https://www.miui.com/res/doc/eula.html?lang=%1$s_%2$s"

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const-string v0, "https://terms.miui.com/doc/filemanage.html?lang=%1$s_%2$s"

    .line 12
    :goto_b
    sput-object v0, Lcom/android/fileexplorer/util/PrivacyUtil;->USER_AGREEMENT_URI:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isNotSupportMidrive()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_16

    .line 20
    const-string v0, "https://privacy.mi.com/fileexplorer/%s_%s"

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    const-string v0, "https://privacy.mi.com/FileManager/%s_%s"

    .line 25
    :goto_18
    sput-object v0, Lcom/android/fileexplorer/util/PrivacyUtil;->PRIVACY_URI:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrivacyUri()Ljava/lang/String;
    .registers 5

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_35

    .line 7
    new-array v0, v1, [Ljava/lang/Object;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v3, "_"

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    aput-object v1, v0, v2

    .line 47
    const-string v1, "https://privacy.mi.com/all/%1$s"

    .line 49
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    goto :goto_52

    .line 54
    :cond_35
    sget-object v0, Lcom/android/fileexplorer/util/PrivacyUtil;->PRIVACY_URI:Ljava/lang/String;

    .line 56
    const/4 v3, 0x2

    .line 57
    new-array v3, v3, [Ljava/lang/Object;

    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 67
    aput-object v4, v3, v2

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    aput-object v2, v3, v1

    .line 79
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    :goto_52
    return-object v0
.end method

.method public static getRegion()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ro.miui.region"

    .line 3
    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/PrivacyUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2f

    .line 15
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_21

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {v1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    :cond_21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2f

    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    :cond_2f
    return-object v0
.end method

.method private static getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "get"

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 12
    const-class v4, Ljava/lang/String;

    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v4, v3, v5

    .line 17
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v1

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    aput-object p0, v2, v5

    .line 25
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_23

    .line 31
    if-nez p0, :cond_21

    .line 33
    goto :goto_27

    .line 34
    :cond_21
    move-object p1, p0

    .line 35
    goto :goto_27

    .line 36
    :catch_23
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    :goto_27
    return-object p1
.end method

.method public static getUserAgreement()Ljava/lang/String;
    .registers 5

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    if-eqz v0, :cond_3c

    .line 8
    new-array v0, v3, [Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->getRegion()Ljava/lang/String;

    .line 13
    move-result-object v3

    .line 14
    aput-object v3, v0, v2

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v3, "_"

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    aput-object v2, v0, v1

    .line 54
    const-string v1, "http://www.miui.com/res/doc/eula.html?region=%1$s&#38;lang=%2$s"

    .line 56
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    goto :goto_58

    .line 61
    :cond_3c
    sget-object v0, Lcom/android/fileexplorer/util/PrivacyUtil;->USER_AGREEMENT_URI:Ljava/lang/String;

    .line 63
    new-array v3, v3, [Ljava/lang/Object;

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    aput-object v4, v3, v2

    .line 75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    aput-object v2, v3, v1

    .line 85
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    :goto_58
    return-object v0
.end method

.method public static isKoreaRegion()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->getRegion()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_c
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "kr"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public static isSafeBoxSupport()Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "com.lbe.security.miui"

    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_30

    .line 18
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_13} :catch_19

    .line 20
    const/16 v2, 0xa0

    .line 22
    if-lt v1, v2, :cond_18

    .line 24
    const/4 v0, 0x1

    .line 25
    :cond_18
    return v0

    .line 26
    :catch_19
    move-exception v1

    .line 27
    const-string v2, "isSecuritySupportPrivacy error: "

    .line 29
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    const-string v2, "PrivacyUtil"

    .line 46
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_30
    return v0
.end method

.method public static isSecuritySupportPrivacy()Z
    .registers 3

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    :try_start_6
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object v0

    .line 15
    const-string v2, "com.lbe.security.miui"

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_35

    .line 23
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_18} :catch_1e

    .line 25
    const/16 v2, 0x6f

    .line 27
    if-lt v0, v2, :cond_1d

    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_1d
    return v1

    .line 31
    :catch_1e
    move-exception v0

    .line 32
    const-string v2, "isSecuritySupportPrivacy error: "

    .line 34
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    const-string v2, "PrivacyUtil"

    .line 51
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_35
    return v1
.end method

.method public static startGlobalPrivacy(Landroid/os/Bundle;Landroid/app/Activity;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/util/PrivacyUtil;->supportGlobalSecurityPrivacy(Landroid/app/Activity;)Z

    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Lcom/android/fileexplorer/util/PrivacyUtil;->supportGlobalSecurityPrivacy(Landroid/app/Activity;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_16

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->isKoreaRegion()Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_16

    .line 17
    if-nez p0, :cond_3b

    .line 19
    invoke-static {p1}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPageGlobal(Landroid/app/Activity;)V

    .line 22
    goto :goto_3b

    .line 23
    :cond_16
    :try_start_16
    new-instance p0, Landroid/content/Intent;

    .line 25
    const-string v1, "fe.intent.action.PRIVACY"

    .line 27
    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v1, Landroid/os/Bundle;

    .line 32
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string v2, "supportSecurityPrivacy"

    .line 37
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    const-string v0, "data"

    .line 42
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_36} :catch_37

    .line 55
    goto :goto_3b

    .line 56
    :catch_37
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    :cond_3b
    :goto_3b
    return-void
.end method

.method public static startNecessaryPermissionPage(Landroid/app/Activity;)Z
    .registers 10

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "miui.intent.action.SYSTEM_PERMISSION_DECLARE"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "com.miui.securitycenter"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_23

    .line 28
    const-string p0, "PrivacyUtil"

    .line 30
    const-string v0, "startPermissionPage: miui security center not support."

    .line 32
    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return v2

    .line 36
    :cond_23
    const v1, 0x7f110032

    .line 39
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    const-string v3, "app_name"

    .line 45
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 50
    if-eqz v1, :cond_3b

    .line 52
    const v1, 0x7f110030

    .line 55
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    goto :goto_42

    .line 60
    :cond_3b
    const v1, 0x7f11002e

    .line 63
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    :goto_42
    const-string v3, "all_purpose"

    .line 69
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "use_network"

    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    const-string v1, "mandatory_permission"

    .line 80
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isRestrictGetIMEI()Z

    .line 86
    move-result v1

    .line 87
    const-string v4, "android.permission.CHANGE_WIFI_STATE"

    .line 89
    const-string v5, "android.permission-group.STORAGE"

    .line 91
    if-eqz v1, :cond_61

    .line 93
    filled-new-array {v5, v4}, [Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    goto :goto_67

    .line 98
    :cond_61
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 100
    filled-new-array {v1, v5, v4}, [Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    :goto_67
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isRestrictGetIMEI()Z

    .line 107
    move-result v4

    .line 108
    const v5, 0x7f1100f7

    .line 111
    const/4 v6, 0x2

    .line 112
    const v7, 0x7f1101cc

    .line 115
    if-eqz v4, :cond_83

    .line 117
    new-array v4, v6, [Ljava/lang/String;

    .line 119
    invoke-static {v7}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 122
    move-result-object v6

    .line 123
    aput-object v6, v4, v2

    .line 125
    invoke-static {v5}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 128
    move-result-object v5

    .line 129
    aput-object v5, v4, v3

    .line 131
    goto :goto_9b

    .line 132
    :cond_83
    const/4 v4, 0x3

    .line 133
    new-array v4, v4, [Ljava/lang/String;

    .line 135
    const v8, 0x7f1101ce

    .line 138
    invoke-static {v8}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 141
    move-result-object v8

    .line 142
    aput-object v8, v4, v2

    .line 144
    invoke-static {v7}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 147
    move-result-object v7

    .line 148
    aput-object v7, v4, v3

    .line 150
    invoke-static {v5}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 153
    move-result-object v5

    .line 154
    aput-object v5, v4, v6

    .line 156
    :goto_9b
    const-string v5, "show_locked"

    .line 158
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    const-string v2, "runtime_perm"

    .line 163
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v1, "runtime_perm_desc"

    .line 168
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->getUserAgreement()Ljava/lang/String;

    .line 174
    move-result-object v1

    .line 175
    const-string v2, "user_agreement"

    .line 177
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->getPrivacyUri()Ljava/lang/String;

    .line 183
    move-result-object v1

    .line 184
    const-string v2, "privacy_policy"

    .line 186
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const v1, 0x7f110029

    .line 192
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 195
    move-result-object v1

    .line 196
    const-string v2, "agree_desc"

    .line 198
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const/16 v1, 0x80

    .line 203
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 206
    return v3
.end method

.method private static startNecessaryPermissionPageGlobal(Landroid/app/Activity;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "miui.intent.action.PRIVACY_DECLARE"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "com.miui.securitycenter"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const v1, 0x7f11002f

    .line 16
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const-string v2, "purpose"

    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const-string v1, "style"

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    const-string v1, "show_locked"

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->getUserAgreement()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    const-string v4, "user_agreement"

    .line 43
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->getPrivacyUri()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    const-string v4, "privacy_policy"

    .line 52
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v1, "mandatory"

    .line 57
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    const/16 v1, 0x80

    .line 65
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    return-void
.end method

.method public static supportGlobalSecurityPrivacy(Landroid/app/Activity;)Z
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "miui.intent.action.PRIVACY_DECLARE"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "com.miui.securitycenter"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object p0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 25
    move-result p0

    .line 26
    if-lez p0, :cond_1c

    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_1c
    return v1
.end method

.method public static updatePrivacyParam(ZLandroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacySwitch(Z)V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    if-eqz p0, :cond_12

    .line 8
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacyDisagreeTime(J)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide p0

    .line 15
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacyAgreeTime(J)V

    .line 18
    goto :goto_1c

    .line 19
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    move-result-wide p0

    .line 23
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacyDisagreeTime(J)V

    .line 26
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacyAgreeTime(J)V

    .line 29
    :goto_1c
    return-void
.end method
