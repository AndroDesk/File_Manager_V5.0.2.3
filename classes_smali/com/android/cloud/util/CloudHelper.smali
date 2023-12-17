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

    const-string v0, "/data/system/micloud_member_daily"

    invoke-static {v0}, La/a;->A(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/cloud/util/CloudHelper;->USE_MEMBER_DAILY:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "private constructor of CloudHelper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMemberUrl(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 5

    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->USE_PREVIEW:Z

    if-eqz v0, :cond_7

    const-string p0, "http://micloudweb.preview.n.xiaomi.com/vip"

    return-object p0

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/android/cloud/util/CloudHelper;->USE_MEMBER_DAILY:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    if-eqz p1, :cond_28

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "https://daily.i.mi.com/vip?_locale=%s&source=Drive-App&params={\"autoSelect\":{\"level\":\"default\",\"month\":12}}"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "https://daily.i.mi.com/vip?_locale=%s&source=Drive-App"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_33
    if-eqz p1, :cond_40

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "https://i.mi.com/vip?_locale=%s&source=Drive-App&params={\"autoSelect\":{\"level\":\"default\",\"month\":12}}"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_40
    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "https://i.mi.com/vip?_locale=%s&source=Drive-App"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRecycleBinUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "https://i.mi.com/mobile/drive/trash?_locale=%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static startUnActivatedActivity(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "CloudHelper"

    const-string v1, "account is valid"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v1, "show_account_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static visitManageCloudData(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_d

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "CloudHelper"

    const-string v1, "Error visitManageCloudData, no valid context to start."

    invoke-static {v0, v1, p0}, Lmiui/cloud/common/XLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "micloud://com.xiaomi.cloudservice/storage"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static visitManageCloudDataSite(Landroid/content/Context;)V
    .registers 5

    if-nez p0, :cond_d

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "CloudHelper"

    const-string v1, "Error getManageCloudDataIntent, no valid context to start HybridActivity."

    invoke-static {v0, v1, p0}, Lmiui/cloud/common/XLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.cloudservice"

    const-string v3, "com.miui.cloudservice.ui.MiCloudHybridActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.miui.sdk.hybrid.extra.URL"

    const-string v2, "https://i.mi.com/?source=Drive-App"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static visitMemberShipSite(Landroid/content/Context;Z)V
    .registers 6

    if-nez p0, :cond_d

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "CloudHelper"

    const-string v0, "Error getMemeberShipIntent, no valid context to start HybridActivity."

    invoke-static {p1, v0, p0}, Lmiui/cloud/common/XLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.cloudservice"

    const-string v3, "com.miui.cloudservice.ui.MiCloudHybridActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/cloud/util/CloudHelper;->getMemberUrl(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.miui.sdk.hybrid.extra.URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static visitPicToPdfPage(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_d

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "CloudHelper"

    const-string v1, "Error, no valid context to start PicToPdfPage."

    invoke-static {v0, v1, p0}, Lmiui/cloud/common/XLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static visitRecycleBinSite(Landroid/content/Context;)V
    .registers 5

    if-nez p0, :cond_d

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "CloudHelper"

    const-string v1, "Error getMemeberShipIntent, no valid context to start HybridActivity."

    invoke-static {v0, v1, p0}, Lmiui/cloud/common/XLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.cloudservice"

    const-string v3, "com.miui.cloudservice.ui.MiCloudHybridActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/cloud/util/CloudHelper;->getRecycleBinUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.miui.sdk.hybrid.extra.URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
