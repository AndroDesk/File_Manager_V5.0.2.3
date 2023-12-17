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

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isNotSupportMidrive()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "https://www.miui.com/res/doc/eula.html?lang=%1$s_%2$s"

    goto :goto_b

    :cond_9
    const-string v0, "https://terms.miui.com/doc/filemanage.html?lang=%1$s_%2$s"

    :goto_b
    sput-object v0, Lcom/android/fileexplorer/util/PrivacyUtil;->USER_AGREEMENT_URI:Ljava/lang/String;

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isNotSupportMidrive()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "https://privacy.mi.com/fileexplorer/%s_%s"

    goto :goto_18

    :cond_16
    const-string v0, "https://privacy.mi.com/FileManager/%s_%s"

    :goto_18
    sput-object v0, Lcom/android/fileexplorer/util/PrivacyUtil;->PRIVACY_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrivacyUri()Ljava/lang/String;
    .registers 5

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "https://privacy.mi.com/all/%1$s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_35
    sget-object v0, Lcom/android/fileexplorer/util/PrivacyUtil;->PRIVACY_URI:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_52
    return-object v0
.end method

.method public static getRegion()Ljava/lang/String;
    .registers 3

    const-string v0, "ro.miui.region"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/PrivacyUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-lez v2, :cond_21

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :cond_21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :cond_2f
    return-object v0
.end method

.method private static getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_23

    if-nez p0, :cond_21

    goto :goto_27

    :cond_21
    move-object p1, p0

    goto :goto_27

    :catch_23
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_27
    return-object p1
.end method

.method public static getUserAgreement()Ljava/lang/String;
    .registers 5

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_3c

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->getRegion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "http://www.miui.com/res/doc/eula.html?region=%1$s&#38;lang=%2$s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    :cond_3c
    sget-object v0, Lcom/android/fileexplorer/util/PrivacyUtil;->USER_AGREEMENT_URI:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_58
    return-object v0
.end method

.method public static isKoreaRegion()Z
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSafeBoxSupport()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.lbe.security.miui"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_30

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_13} :catch_19

    const/16 v2, 0xa0

    if-lt v1, v2, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    :catch_19
    move-exception v1

    const-string v2, "isSecuritySupportPrivacy error: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrivacyUtil"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return v0
.end method

.method public static isSecuritySupportPrivacy()Z
    .registers 3

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.lbe.security.miui"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_35

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_18} :catch_1e

    const/16 v2, 0x6f

    if-lt v0, v2, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1

    :catch_1e
    move-exception v0

    const-string v2, "isSecuritySupportPrivacy error: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PrivacyUtil"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    return v1
.end method

.method public static startGlobalPrivacy(Landroid/os/Bundle;Landroid/app/Activity;I)V
    .registers 6

    invoke-static {p1}, Lcom/android/fileexplorer/util/PrivacyUtil;->supportGlobalSecurityPrivacy(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {p1}, Lcom/android/fileexplorer/util/PrivacyUtil;->supportGlobalSecurityPrivacy(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->isKoreaRegion()Z

    move-result v1

    if-nez v1, :cond_16

    if-nez p0, :cond_3b

    invoke-static {p1}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPageGlobal(Landroid/app/Activity;)V

    goto :goto_3b

    :cond_16
    :try_start_16
    new-instance p0, Landroid/content/Intent;

    const-string v1, "fe.intent.action.PRIVACY"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "supportSecurityPrivacy"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "data"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static startNecessaryPermissionPage(Landroid/app/Activity;)Z
    .registers 10

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.SYSTEM_PERMISSION_DECLARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_23

    const-string p0, "PrivacyUtil"

    const-string v0, "startPermissionPage: miui security center not support."

    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_23
    const v1, 0x7f110032

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "app_name"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz v1, :cond_3b

    const v1, 0x7f110030

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    :cond_3b
    const v1, 0x7f11002e

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_42
    const-string v3, "all_purpose"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "use_network"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "mandatory_permission"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isRestrictGetIMEI()Z

    move-result v1

    const-string v4, "android.permission.CHANGE_WIFI_STATE"

    const-string v5, "android.permission-group.STORAGE"

    if-eqz v1, :cond_61

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_67

    :cond_61
    const-string v1, "android.permission.READ_PHONE_STATE"

    filled-new-array {v1, v5, v4}, [Ljava/lang/String;

    move-result-object v1

    :goto_67
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isRestrictGetIMEI()Z

    move-result v4

    const v5, 0x7f1100f7

    const/4 v6, 0x2

    const v7, 0x7f1101cc

    if-eqz v4, :cond_83

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v7}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v5}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    goto :goto_9b

    :cond_83
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const v8, 0x7f1101ce

    invoke-static {v8}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    invoke-static {v7}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {v5}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    :goto_9b
    const-string v5, "show_locked"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "runtime_perm"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "runtime_perm_desc"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->getUserAgreement()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_agreement"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->getPrivacyUri()Ljava/lang/String;

    move-result-object v1

    const-string v2, "privacy_policy"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f110029

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "agree_desc"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return v3
.end method

.method private static startNecessaryPermissionPageGlobal(Landroid/app/Activity;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.PRIVACY_DECLARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f11002f

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "purpose"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "style"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "show_locked"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->getUserAgreement()Ljava/lang/String;

    move-result-object v1

    const-string v4, "user_agreement"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->getPrivacyUri()Ljava/lang/String;

    move-result-object v1

    const-string v4, "privacy_policy"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mandatory"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static supportGlobalSecurityPrivacy(Landroid/app/Activity;)Z
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.PRIVACY_DECLARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public static updatePrivacyParam(ZLandroid/app/Activity;)V
    .registers 4

    invoke-static {p0}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacySwitch(Z)V

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_12

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacyDisagreeTime(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacyAgreeTime(J)V

    goto :goto_1c

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacyDisagreeTime(J)V

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacyAgreeTime(J)V

    :goto_1c
    return-void
.end method
