.class public Lcom/cleanmaster/sdk/CleanMasterIntentHelper;
.super Ljava/lang/Object;
.source "CleanMasterIntentHelper.java"


# static fields
.field private static final CLEAN_MASTER_PACKAGE_NAME:Ljava/lang/String; = "com.miui.cleanmaster"

.field private static final EXTRA_KEY_CLEAN_MASTER_ACTION:Ljava/lang/String; = "cleanMasterAction"

.field private static final INSTALL_AND_LUNCH_ACTION:Ljava/lang/String; = "com.miui.cleanmaster.InstallAndLunchCleanMaster"

.field private static final TAG:Ljava/lang/String; = "CleanMasterIntentHelper"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCleanMasterInstalled()Z
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    :try_start_f
    const-string v2, "com.miui.cleanmaster"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_15} :catch_19

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    return v0

    :catch_19
    :cond_19
    return v1
.end method

.method public static startCleanMaster(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 6

    if-eqz p0, :cond_59

    if-nez p1, :cond_5

    goto :goto_59

    :cond_5
    invoke-static {}, Lcom/cleanmaster/sdk/CleanMasterIntentHelper;->isCleanMasterInstalled()Z

    move-result v0

    const-string v1, "CleanMasterIntentHelper"

    if-eqz v0, :cond_27

    :try_start_d
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_59

    :catch_11
    move-exception p0

    const-string p1, "startCleanMaster error: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    :cond_27
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.cleanmaster.InstallAndLunchCleanMaster"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cleanMasterAction"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_40

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_40
    :try_start_40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_59

    :catch_44
    move-exception p0

    const-string p1, "startCleanMaster install error: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    :goto_59
    return-void
.end method
