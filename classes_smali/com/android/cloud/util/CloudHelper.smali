.class public final Lcom/android/cloud/util/CloudHelper;
.super Ljava/lang/Object;
.source "CloudHelper.java"


# static fields
.field public static final CLOUD_SERVICE_STORAGE_PATH:Ljava/lang/String; = "micloud://com.xiaomi.cloudservice/storage"

.field private static final DAILY_MEMBER_URL:Ljava/lang/String; = "https://daily.i.mi.com/vip?_locale=%s&source=Drive-App"

.field public static final EXTRA_URL:Ljava/lang/String; = "com.miui.sdk.hybrid.extra.URL"

.field private static final MEMBER_URL:Ljava/lang/String; = "https://i.mi.com/vip?_locale=%s&source=Drive-App"

.field private static final MICLOUD_PACKAGE:Ljava/lang/String; = "com.miui.cloudservice"

.field private static final MICLOUD_VIP_CLASS:Ljava/lang/String; = "com.miui.cloudservice.ui.MiCloudHybridActivity"

.field private static final PAY_DAILY_MEMBER_URL:Ljava/lang/String; = "https://daily.i.mi.com/vip?_locale=%s&source=Drive-App&params={\"autoSelect\":{\"level\":\"default\",\"month\":12}}"

.field private static final PAY_MEMBER_URL:Ljava/lang/String; = "https://i.mi.com/vip?_locale=%s&source=Drive-App&params={\"autoSelect\":{\"level\":\"default\",\"month\":12}}"

.field private static final RECYCLE_BIN_URL:Ljava/lang/String; = "https://i.mi.com/mobile/drive/trash?_locale=%s"

.field private static final STAGING_MEMBER_URL:Ljava/lang/String; = "http://micloudweb.preview.n.xiaomi.com/vip"

.field private static final TAG:Ljava/lang/String; = "CloudHelper"

.field private static final USE_MEMBER_DAILY:Z

.field private static final WEBSITE_URL:Ljava/lang/String; = "https://i.mi.com/?source=Drive-App"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "/data/system/micloud_member_daily"

    .line 3
    invoke-static {v0}, La/a;->A(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/cloud/util/CloudHelper;->USE_MEMBER_DAILY:Z

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "private constructor of CloudHelper"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static getMemberUrl(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 5

    .line 1
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->USE_PREVIEW:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    const-string p0, "http://micloudweb.preview.n.xiaomi.com/vip"

    .line 7
    return-object p0

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    move-result-object p0

    .line 16
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 18
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    sget-boolean v0, Lcom/android/cloud/util/CloudHelper;->USE_MEMBER_DAILY:Z

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v0, :cond_33

    .line 28
    if-eqz p1, :cond_28

    .line 30
    new-array p1, v2, [Ljava/lang/Object;

    .line 32
    aput-object p0, p1, v1

    .line 34
    const-string p0, "https://daily.i.mi.com/vip?_locale=%s&source=Drive-App&params={\"autoSelect\":{\"level\":\"default\",\"month\":12}}"

    .line 36
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_28
    new-array p1, v2, [Ljava/lang/Object;

    .line 43
    aput-object p0, p1, v1

    .line 45
    const-string p0, "https://daily.i.mi.com/vip?_locale=%s&source=Drive-App"

    .line 47
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_33
    if-eqz p1, :cond_40

    .line 54
    new-array p1, v2, [Ljava/lang/Object;

    .line 56
    aput-object p0, p1, v1

    .line 58
    const-string p0, "https://i.mi.com/vip?_locale=%s&source=Drive-App&params={\"autoSelect\":{\"level\":\"default\",\"month\":12}}"

    .line 60
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_40
    new-array p1, v2, [Ljava/lang/Object;

    .line 67
    aput-object p0, p1, v1

    .line 69
    const-string p0, "https://i.mi.com/vip?_locale=%s&source=Drive-App"

    .line 71
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method private static getRecycleBinUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 11
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x1

    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    const/4 v1, 0x0

    .line 19
    aput-object p0, v0, v1

    .line 21
    const-string p0, "https://i.mi.com/mobile/drive/trash?_locale=%s"

    .line 23
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static startUnActivatedActivity(Landroid/app/Activity;)V
    .registers 4

    .line 1
    const-string v0, "CloudHelper"

    .line 3
    const-string v1, "account is valid"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 10
    const-string v1, "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

    .line 12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 22
    const-string v1, "show_account_settings"

    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 31
    return-void
.end method

.method public static visitManageCloudData(Landroid/content/Context;)V
    .registers 3

    .line 1
    if-nez p0, :cond_d

    .line 3
    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [Ljava/lang/Object;

    .line 6
    const-string v0, "CloudHelper"

    .line 8
    const-string v1, "Error visitManageCloudData, no valid context to start."

    .line 10
    invoke-static {v0, v1, p0}, Lmiui/cloud/common/XLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance v0, Landroid/content/Intent;

    .line 16
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 19
    const-string v1, "micloud://com.xiaomi.cloudservice/storage"

    .line 21
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    return-void
.end method

.method public static visitManageCloudDataSite(Landroid/content/Context;)V
    .registers 5

    .line 1
    if-nez p0, :cond_d

    .line 3
    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [Ljava/lang/Object;

    .line 6
    const-string v0, "CloudHelper"

    .line 8
    const-string v1, "Error getManageCloudDataIntent, no valid context to start HybridActivity."

    .line 10
    invoke-static {v0, v1, p0}, Lmiui/cloud/common/XLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance v0, Landroid/content/Intent;

    .line 16
    const-string v1, "android.intent.action.VIEW"

    .line 18
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v1, Landroid/content/ComponentName;

    .line 23
    const-string v2, "com.miui.cloudservice"

    .line 25
    const-string v3, "com.miui.cloudservice.ui.MiCloudHybridActivity"

    .line 27
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    const-string v1, "com.miui.sdk.hybrid.extra.URL"

    .line 35
    const-string v2, "https://i.mi.com/?source=Drive-App"

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method public static visitMemberShipSite(Landroid/content/Context;Z)V
    .registers 6

    .line 1
    if-nez p0, :cond_d

    .line 3
    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [Ljava/lang/Object;

    .line 6
    const-string p1, "CloudHelper"

    .line 8
    const-string v0, "Error getMemeberShipIntent, no valid context to start HybridActivity."

    .line 10
    invoke-static {p1, v0, p0}, Lmiui/cloud/common/XLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance v0, Landroid/content/Intent;

    .line 16
    const-string v1, "android.intent.action.VIEW"

    .line 18
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v1, Landroid/content/ComponentName;

    .line 23
    const-string v2, "com.miui.cloudservice"

    .line 25
    const-string v3, "com.miui.cloudservice.ui.MiCloudHybridActivity"

    .line 27
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    invoke-static {p0, p1}, Lcom/android/cloud/util/CloudHelper;->getMemberUrl(Landroid/content/Context;Z)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const-string v1, "com.miui.sdk.hybrid.extra.URL"

    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method public static visitPicToPdfPage(Landroid/content/Context;)V
    .registers 3

    .line 1
    if-nez p0, :cond_d

    .line 3
    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [Ljava/lang/Object;

    .line 6
    const-string v0, "CloudHelper"

    .line 8
    const-string v1, "Error, no valid context to start PicToPdfPage."

    .line 10
    invoke-static {v0, v1, p0}, Lmiui/cloud/common/XLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance v0, Landroid/content/Intent;

    .line 16
    const-class v1, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    .line 18
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    return-void
.end method

.method public static visitRecycleBinSite(Landroid/content/Context;)V
    .registers 5

    .line 1
    if-nez p0, :cond_d

    .line 3
    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [Ljava/lang/Object;

    .line 6
    const-string v0, "CloudHelper"

    .line 8
    const-string v1, "Error getMemeberShipIntent, no valid context to start HybridActivity."

    .line 10
    invoke-static {v0, v1, p0}, Lmiui/cloud/common/XLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance v0, Landroid/content/Intent;

    .line 16
    const-string v1, "android.intent.action.VIEW"

    .line 18
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v1, Landroid/content/ComponentName;

    .line 23
    const-string v2, "com.miui.cloudservice"

    .line 25
    const-string v3, "com.miui.cloudservice.ui.MiCloudHybridActivity"

    .line 27
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    invoke-static {p0}, Lcom/android/cloud/util/CloudHelper;->getRecycleBinUrl(Landroid/content/Context;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    const-string v2, "com.miui.sdk.hybrid.extra.URL"

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method
