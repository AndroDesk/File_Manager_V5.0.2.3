.class public Lmiui/sharesdk/ShareSDKManager;
.super Ljava/lang/Object;
.source "ShareSDKManager.java"


# static fields
.field private static final SDK_PACKAGE_NAME:Ljava/lang/String; = "com.miui.cloudservice"

.field private static final SDK_VERSION_NONE:I

.field private static final SDK_VERSION_STRING_KEY:Ljava/lang/String; = "share_sdk_version"

.field public static final SDK_VERSION_V1:I

.field public static final SDK_VERSION_V2:I

.field private static final TAG:Ljava/lang/String; = "ShareSDKManager"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/sharesdk/ShareSDKManager;->SDK_VERSION_NONE:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/sharesdk/ShareSDKManager;->SDK_VERSION_V1:I

    const v0, 0x92d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/sharesdk/ShareSDKManager;->SDK_VERSION_V2:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInvitationInfoIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/sharesdk/model/ShareResource;Ljava/util/ArrayList;Lmiui/sharesdk/ChooseMode;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmiui/sharesdk/model/ShareResource;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lmiui/sharesdk/ChooseMode;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-static {p0}, Lmiui/sharesdk/ShareSDKManager;->getSDKKernelVersion(Landroid/content/Context;)I

    move-result p0

    if-ltz p0, :cond_38

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.cloudservice.VIEW_INVITATION_INFO"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.miui.cloudservice"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "share_app_id"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "share_package_name"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "share_resource"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "share_permission_id_list"

    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string p2, "share_permission_choose_mode"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "share_invitation_id"

    invoke-virtual {p0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not support Share SDK V1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSDKKernelVersion(Landroid/content/Context;)I
    .registers 8

    const-string v0, "com.miui.cloudservice"

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "share_sdk_version"

    const-string v6, "integer"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_37

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.miui.cloudservice.ADD_SHARE_MEMBER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_36

    return v2

    :cond_36
    return v1

    :cond_37
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_3b} :catch_3c

    return p0

    :catch_3c
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "ShareSDKManager"

    aput-object v0, p0, v2

    const/4 v0, 0x1

    const-string v2, "Error occur for create share sdk context"

    aput-object v2, p0, v0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    return v1
.end method

.method public static getShareEntranceIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/sharesdk/model/ShareResource;Ljava/util/ArrayList;Lmiui/sharesdk/ChooseMode;Lmiui/sharesdk/model/InviteServerExtension;)Landroid/content/Intent;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmiui/sharesdk/model/ShareResource;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lmiui/sharesdk/ChooseMode;",
            "Lmiui/sharesdk/model/InviteServerExtension;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-static {p0}, Lmiui/sharesdk/ShareSDKManager;->getSDKKernelVersion(Landroid/content/Context;)I

    move-result p0

    if-ltz p0, :cond_38

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.cloudservice.ADD_SHARE_MEMBER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.miui.cloudservice"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "share_app_id"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "share_package_name"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "share_resource"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "share_permission_id_list"

    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string p2, "share_permission_choose_mode"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "share_server_extension"

    invoke-virtual {p0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not support Share SDK V1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getShareEntranceIntentV2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/sharesdk/model/ShareResource;Ljava/util/ArrayList;Lmiui/sharesdk/ChooseMode;Lmiui/sharesdk/model/InviteServerExtension;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmiui/sharesdk/model/ShareResource;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lmiui/sharesdk/ChooseMode;",
            "Lmiui/sharesdk/model/InviteServerExtension;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-static {p0}, Lmiui/sharesdk/ShareSDKManager;->getSDKKernelVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_17

    invoke-static/range {p0 .. p6}, Lmiui/sharesdk/ShareSDKManager;->getShareEntranceIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/sharesdk/model/ShareResource;Ljava/util/ArrayList;Lmiui/sharesdk/ChooseMode;Lmiui/sharesdk/model/InviteServerExtension;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "share_sdk_version"

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "share_permission_default_checked_permission_id_list"

    invoke-virtual {p0, p1, p7}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0

    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Share SDK not support for this V2 request"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSharePrivacyIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    invoke-static {p0}, Lmiui/sharesdk/ShareSDKManager;->getSDKKernelVersion(Landroid/content/Context;)I

    move-result p0

    if-ltz p0, :cond_1b

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.cloudservice.GRANT_SHARING_PRIVACY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.miui.cloudservice"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "share_package_name"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not support Share SDK V1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSharingInfoIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/sharesdk/model/ShareResource;Ljava/util/ArrayList;Lmiui/sharesdk/ChooseMode;Ljava/lang/String;ZLmiui/sharesdk/model/InviteServerExtension;)Landroid/content/Intent;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmiui/sharesdk/model/ShareResource;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lmiui/sharesdk/ChooseMode;",
            "Ljava/lang/String;",
            "Z",
            "Lmiui/sharesdk/model/InviteServerExtension;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-static {p0}, Lmiui/sharesdk/ShareSDKManager;->getSDKKernelVersion(Landroid/content/Context;)I

    move-result p0

    if-ltz p0, :cond_42

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.cloudservice.VIEW_SHARING_INFO"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.miui.cloudservice"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "share_app_id"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "share_package_name"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "share_resource"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "share_permission_id_list"

    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string p2, "share_permission_choose_mode"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "share_user_id"

    invoke-virtual {p0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "share_user_is_creator"

    invoke-virtual {p0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "share_server_extension"

    invoke-virtual {p0, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0

    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not support Share SDK V1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
