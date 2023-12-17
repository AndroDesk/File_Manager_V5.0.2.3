.class public Lcom/cleanmaster/sdk/CleanMasterIntentHelper;
.super Ljava/lang/Object;
.source "CleanMasterIntentHelper.java"


# static fields
.field private static final CLEAN_MASTER_PACKAGE_NAME:Ljava/lang/String; = "com.miui.cleanmaster"

.field private static final EXTRA_KEY_CLEAN_MASTER_ACTION:Ljava/lang/String; = "cleanMasterAction"

.field private static final INSTALL_AND_LUNCH_ACTION:Ljava/lang/String; = "com.miui.cleanmaster.InstallAndLunchCleanMaster"

.field private static final TAG:Ljava/lang/String; = "CleanMasterIntentHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCleanMasterInstalled()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_19

    .line 16
    :try_start_f
    const-string v2, "com.miui.cleanmaster"

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 21
    move-result-object v0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_15} :catch_19

    .line 22
    if-eqz v0, :cond_19

    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :catch_19
    :cond_19
    return v1
.end method

.method public static startCleanMaster(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 6

    .line 1
    if-eqz p0, :cond_59

    .line 3
    if-nez p1, :cond_5

    .line 5
    goto :goto_59

    .line 6
    :cond_5
    invoke-static {}, Lcom/cleanmaster/sdk/CleanMasterIntentHelper;->isCleanMasterInstalled()Z

    .line 9
    move-result v0

    .line 10
    const-string v1, "CleanMasterIntentHelper"

    .line 12
    if-eqz v0, :cond_27

    .line 14
    :try_start_d
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    .line 17
    goto :goto_59

    .line 18
    :catch_11
    move-exception p0

    .line 19
    const-string p1, "startCleanMaster error: "

    .line 21
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    goto :goto_59

    .line 40
    :cond_27
    new-instance v0, Landroid/content/Intent;

    .line 42
    const-string v2, "com.miui.cleanmaster.InstallAndLunchCleanMaster"

    .line 44
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    const-string v3, "cleanMasterAction"

    .line 53
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_40

    .line 62
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 65
    :cond_40
    :try_start_40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    .line 68
    goto :goto_59

    .line 69
    :catch_44
    move-exception p0

    .line 70
    const-string p1, "startCleanMaster install error: "

    .line 72
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_59
    :goto_59
    return-void
.end method
