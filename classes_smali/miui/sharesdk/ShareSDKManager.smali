.class public Lmiui/sharesdk/ShareSDKManager;
.super Ljava/lang/Object;
.source "ShareSDKManager.java"


# static fields
.field private static final SDK_PACKAGE_NAME:Ljava/lang/String; = "com.miui.cloudservice"

.field private static final SDK_VERSION_NONE:I = -0x1

.field private static final SDK_VERSION_STRING_KEY:Ljava/lang/String; = "share_sdk_version"

.field public static final SDK_VERSION_V1:I = 0x0

.field public static final SDK_VERSION_V2:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ShareSDKManager"


# direct methods
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

    .line 1
    invoke-static {p0}, Lmiui/sharesdk/ShareSDKManager;->getSDKKernelVersion(Landroid/content/Context;)I

    .line 4
    move-result p0

    .line 5
    if-ltz p0, :cond_38

    .line 7
    new-instance p0, Landroid/content/Intent;

    .line 9
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 12
    const-string v0, "com.miui.cloudservice.VIEW_INVITATION_INFO"

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    const-string v0, "com.miui.cloudservice"

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v0, "share_app_id"

    .line 24
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string p1, "share_package_name"

    .line 29
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string p1, "share_resource"

    .line 34
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 37
    const-string p1, "share_permission_id_list"

    .line 39
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    .line 45
    move-result p1

    .line 46
    const-string p2, "share_permission_choose_mode"

    .line 48
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string p1, "share_invitation_id"

    .line 53
    invoke-virtual {p0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    return-object p0

    .line 57
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    const-string p1, "Not support Share SDK V1"

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p0
.end method

.method public static getSDKKernelVersion(Landroid/content/Context;)I
    .registers 8

    .line 1
    const-string v0, "com.miui.cloudservice"

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_4
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v4

    .line 13
    const-string v5, "share_sdk_version"

    .line 15
    const-string v6, "integer"

    .line 17
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v4, v5, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_37

    .line 27
    new-instance v3, Landroid/content/Intent;

    .line 29
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 32
    const-string v4, "com.miui.cloudservice.ADD_SHARE_MEMBER"

    .line 34
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_36

    .line 54
    return v2

    .line 55
    :cond_36
    return v1

    .line 56
    :cond_37
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 59
    move-result p0
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_3b} :catch_3c

    .line 60
    return p0

    .line 61
    :catch_3c
    const/4 p0, 0x2

    .line 62
    new-array p0, p0, [Ljava/lang/Object;

    .line 64
    const-string v0, "ShareSDKManager"

    .line 66
    aput-object v0, p0, v2

    .line 68
    const/4 v0, 0x1

    .line 69
    const-string v2, "Error occur for create share sdk context"

    .line 71
    aput-object v2, p0, v0

    .line 73
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 76
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

    .line 1
    invoke-static {p0}, Lmiui/sharesdk/ShareSDKManager;->getSDKKernelVersion(Landroid/content/Context;)I

    .line 4
    move-result p0

    .line 5
    if-ltz p0, :cond_38

    .line 7
    new-instance p0, Landroid/content/Intent;

    .line 9
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 12
    const-string v0, "com.miui.cloudservice.ADD_SHARE_MEMBER"

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    const-string v0, "com.miui.cloudservice"

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v0, "share_app_id"

    .line 24
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string p1, "share_package_name"

    .line 29
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string p1, "share_resource"

    .line 34
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 37
    const-string p1, "share_permission_id_list"

    .line 39
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    .line 45
    move-result p1

    .line 46
    const-string p2, "share_permission_choose_mode"

    .line 48
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string p1, "share_server_extension"

    .line 53
    invoke-virtual {p0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    return-object p0

    .line 57
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    const-string p1, "Not support Share SDK V1"

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
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

    .line 1
    invoke-static {p0}, Lmiui/sharesdk/ShareSDKManager;->getSDKKernelVersion(Landroid/content/Context;)I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x14

    .line 7
    if-lt v0, v1, :cond_17

    .line 9
    invoke-static/range {p0 .. p6}, Lmiui/sharesdk/ShareSDKManager;->getShareEntranceIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/sharesdk/model/ShareResource;Ljava/util/ArrayList;Lmiui/sharesdk/ChooseMode;Lmiui/sharesdk/model/InviteServerExtension;)Landroid/content/Intent;

    .line 12
    move-result-object p0

    .line 13
    const-string p1, "share_sdk_version"

    .line 15
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    const-string p1, "share_permission_default_checked_permission_id_list"

    .line 20
    invoke-virtual {p0, p1, p7}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 23
    return-object p0

    .line 24
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    const-string p1, "Share SDK not support for this V2 request"

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0
.end method

.method public static getSharePrivacyIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 1
    invoke-static {p0}, Lmiui/sharesdk/ShareSDKManager;->getSDKKernelVersion(Landroid/content/Context;)I

    .line 4
    move-result p0

    .line 5
    if-ltz p0, :cond_1b

    .line 7
    new-instance p0, Landroid/content/Intent;

    .line 9
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 12
    const-string v0, "com.miui.cloudservice.GRANT_SHARING_PRIVACY"

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    const-string v0, "com.miui.cloudservice"

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v0, "share_package_name"

    .line 24
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    return-object p0

    .line 28
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 30
    const-string p1, "Not support Share SDK V1"

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
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

    .line 1
    invoke-static {p0}, Lmiui/sharesdk/ShareSDKManager;->getSDKKernelVersion(Landroid/content/Context;)I

    .line 4
    move-result p0

    .line 5
    if-ltz p0, :cond_42

    .line 7
    new-instance p0, Landroid/content/Intent;

    .line 9
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 12
    const-string v0, "com.miui.cloudservice.VIEW_SHARING_INFO"

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    const-string v0, "com.miui.cloudservice"

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v0, "share_app_id"

    .line 24
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string p1, "share_package_name"

    .line 29
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string p1, "share_resource"

    .line 34
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 37
    const-string p1, "share_permission_id_list"

    .line 39
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    .line 45
    move-result p1

    .line 46
    const-string p2, "share_permission_choose_mode"

    .line 48
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string p1, "share_user_id"

    .line 53
    invoke-virtual {p0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string p1, "share_user_is_creator"

    .line 58
    invoke-virtual {p0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    const-string p1, "share_server_extension"

    .line 63
    invoke-virtual {p0, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    return-object p0

    .line 67
    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 69
    const-string p1, "Not support Share SDK V1"

    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p0
.end method
