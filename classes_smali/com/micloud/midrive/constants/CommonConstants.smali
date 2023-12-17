.class public Lcom/micloud/midrive/constants/CommonConstants;
.super Ljava/lang/Object;
.source "CommonConstants.java"


# static fields
.field public static final ACCOUNT_AVATAR_URL:Ljava/lang/String; = "acc_avatar_url"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"

.field public static final ACCOUNT_TYPE_UNACTIVATED:Ljava/lang/String; = "com.xiaomi.unactivated"

.field public static final ACCOUNT_USER_NAME:Ljava/lang/String; = "acc_user_name"

.field public static final ACTION_XIAOMI_ACCOUNT_SYNC_SETTINGS:Ljava/lang/String; = "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

.field public static final CHANNEL_APP:Ljava/lang/String; = "APP"

.field public static final CHANNEL_DOC_MANAGER:Ljava/lang/String; = "DOC_MANAGER"

.field public static final CHANNEL_PAD:Ljava/lang/String; = "PAD"

.field public static final CHANNEL_PC:Ljava/lang/String; = "PC"

.field public static final CHANNEL_WEB:Ljava/lang/String; = "WEB"

.field public static final CURRENT_CHANNEL:Ljava/lang/String;

.field public static final DEFAULT_PAGE_LIMIT:I = 0xc8

.field public static final DEFAULT_RECENT_PAGE_LIMIT:I = 0x32

.field public static final DEFAULT_RECENT_SIZE_IN_GROUP_LIMIT:I = 0xc

.field public static final DEFAULT_SHOW_LIMIT:I = 0x14

.field public static final EXTRA_KEY_FROM_PACKAGE_NAME:Ljava/lang/String; = "from_package_name"

.field public static final EXTRA_KEY_HAS_BACK_BUTTON:Ljava/lang/String; = "has_back_button"

.field public static final EXTRA_MICLOUD_VIP_AVAILIABLE:Ljava/lang/String; = "extra_micloud_vip_availiable"

.field public static final EXTRA_PARCELABLE_KEY_ACCOUNT:Ljava/lang/String; = "account"

.field public static final FILE_LIST_REFRESH_TIME:I = 0x3e8

.field public static final LIST_NUM_ONE:I = 0x1

.field public static final LIST_NUM_THREE:I = 0x3

.field public static final LIST_NUM_TWO:I = 0x2

.field public static final PARAM_PAGE_ID_ARRAY:Ljava/lang/String; = "page_ids"

.field public static final PARAM_PAGE_NAME_ARRAY:Ljava/lang/String; = "page_names"

.field public static final PREVIEW_DOWNLOAD_LIMIT:J = 0x3200000L

.field public static final PTP_AI_RECOMMEND_QUERY_LIMIT:I = 0x1e

.field public static final WEB_VIEW_UA_FOR_MI_DRIVE:Ljava/lang/String; = "NewMiDrive"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/micloud/midrive/constants/Config;->IS_PAD:Z

    if-eqz v0, :cond_7

    const-string v0, "PAD"

    goto :goto_9

    :cond_7
    const-string v0, "APP"

    :goto_9
    sput-object v0, Lcom/micloud/midrive/constants/CommonConstants;->CURRENT_CHANNEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
