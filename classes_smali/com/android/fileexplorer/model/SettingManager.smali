.class public Lcom/android/fileexplorer/model/SettingManager;
.super Ljava/lang/Object;
.source "SettingManager.java"


# static fields
.field private static final APK_UPDATE:Ljava/lang/String; = "apk_update"

.field private static final APP_CONFIG_VERSION:Ljava/lang/String; = "app_config_version"

.field private static final BLACK_DIR_CONFIG_VERSION:Ljava/lang/String; = "black_dir_config_version"

.field public static final CLICK_STORAGE:Ljava/lang/String; = "clickStorage"

.field private static final DATA_CONSUMPTION_SWITCH:Ljava/lang/String; = "data_consumption_switch"

.field private static final ENTER_FILE_VIEW_TIME:Ljava/lang/String; = "enter_file_view_time"

.field private static final FIRST_ENTER_PRIVATE_FOLDER:Ljava/lang/String; = "first_enter_private_folder"

.field public static final FTP_PD_PREF:Ljava/lang/String; = "password"

.field public static final FTP_USERNAME_PREF:Ljava/lang/String; = "username"

.field private static final IS_USING_ANDROID_ID:Ljava/lang/String; = "is_using_android_id_1"

.field public static final KEY_CATEGORY_BACK_INTER:Ljava/lang/String; = "category_back_inter"

.field public static final KEY_CATEGORY_BACK_INTER_SHOW_TIME:Ljava/lang/String; = "category_back_inter_show_time"

.field public static final KEY_CATEGORY_BACK_INTER_SHOW_TIME_INTERVAL:J = 0xea60L

.field private static final KEY_DOC_LIST_COLUMN_TYPE:Ljava/lang/String; = "doc_list_column_type"

.field private static final KEY_DOC_LIST_COLUMN_TYPE_MIRROR:Ljava/lang/String; = "doc_list_column_type_mirror"

.field private static final KEY_LIST_COLUMN_TYPE:Ljava/lang/String; = "list_column_type"

.field private static final KEY_LIST_COLUMN_TYPE_MIRROR:Ljava/lang/String; = "list_column_type_mirror"

.field private static final KEY_NEED_SHOW_PATTERN_DIALOG:Ljava/lang/String; = "need_show_pattern_dialog"

.field private static final KEY_PICTURE_SHOW_TYPE:Ljava/lang/String; = "picture_show_type"

.field private static final KEY_PICTURE_SHOW_TYPE_MIRROR:Ljava/lang/String; = "picture_show_type_mirror"

.field private static final LAST_SCAN_ID:Ljava/lang/String; = "lastScanID"

.field private static final PREF_NAME:Ljava/lang/String; = "xl_file_manager"

.field private static final PRIVACY_AGREE_TIME:Ljava/lang/String; = "privacy_agree_time"

.field private static final PRIVACY_DISAGREE_TIME:Ljava/lang/String; = "privacy_disagree_time"

.field private static final PRIVACY_SWITCH:Ljava/lang/String;

.field private static final PRIVATE_FOLDER_TOAST_TIME:Ljava/lang/String; = "private_folder_toast_time"

.field private static final PRIVATE_SECRET_KEY:Ljava/lang/String; = "private_file_secret_key"

.field private static final RECENT_PAGE_FUNCTION_GUIDE:Ljava/lang/String; = "recentGuide"

.field private static final RECORD_DOC_INFO:Ljava/lang/String; = "recordDocInfo"

.field private static final RESET_SCAN_ID:Ljava/lang/String; = "reset_scan_id"

.field private static final SHOW_CDD:Ljava/lang/String; = "showCDD"

.field private static final SHOW_ENCRYPT:Ljava/lang/String; = "show_encrypt"

.field private static final SHOW_GUIDE:Ljava/lang/String; = "showGuide"

.field private static final SHOW_VOLUME_SWITCH_POPUP:Ljava/lang/String; = "show_volume_switch_popup"

.field private static final SKIP_LIMIT_PATH:Ljava/lang/String; = "skip_limit_path"

.field private static final mCategoryBackInterAdMaxCount:I = 0x2

.field private static mEditor:Landroid/content/SharedPreferences$Editor;

.field private static mSharedPreferences:Landroid/content/SharedPreferences;


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
    const-string v0, "privacy_switch"

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const-string v0, "privacy_switch_v2"

    .line 12
    :goto_b
    sput-object v0, Lcom/android/fileexplorer/model/SettingManager;->PRIVACY_SWITCH:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/android/fileexplorer/model/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 4
    sput-object v0, Lcom/android/fileexplorer/model/SettingManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    return-void
.end method

.method public static getAppConfigVersion()J
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "app_config_version"

    .line 7
    const-wide/16 v2, -0x1

    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public static getBlackDirConfigVersion()J
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "black_dir_config_version"

    .line 7
    const-wide/16 v2, -0x1

    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public static getDataConsumptionSwitch()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "data_consumption_switch"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static getDocListColumnType()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "doc_list_column_type"

    .line 7
    const/16 v2, 0x14

    .line 9
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 12
    move-result v0

    .line 13
    sget-object v1, Lcom/android/fileexplorer/util/WpsSupportUtil;->WPS_APP_MI_NAME:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_15

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const/16 v0, 0xa

    .line 24
    :goto_17
    return v0
.end method

.method public static getDocListColumnTypeMirror()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "doc_list_column_type_mirror"

    .line 7
    const/16 v2, 0x14

    .line 9
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 12
    move-result v0

    .line 13
    sget-object v1, Lcom/android/fileexplorer/util/WpsSupportUtil;->WPS_APP_MI_NAME:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_15

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const/16 v0, 0xa

    .line 24
    :goto_17
    return v0
.end method

.method private static getEditor()Landroid/content/SharedPreferences$Editor;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 3
    if-nez v0, :cond_e

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/fileexplorer/model/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 15
    :cond_e
    sget-object v0, Lcom/android/fileexplorer/model/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 17
    return-object v0
.end method

.method public static getEnterFileViewTime()J
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "enter_file_view_time"

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public static getGlobalPadNeedForceShow()Z
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getGlobalPadPrivacyDisagreeTime()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    cmp-long v2, v0, v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v2, :cond_c

    .line 12
    goto :goto_20

    .line 13
    :cond_c
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v4

    .line 19
    sub-long/2addr v4, v0

    .line 20
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    .line 23
    move-result-wide v0

    .line 24
    const-wide/16 v4, 0x3

    .line 26
    cmp-long v0, v0, v4

    .line 28
    if-lez v0, :cond_1e

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    move v3, v0

    .line 33
    :goto_20
    return v3
.end method

.method public static getGlobalPadPrivacyDisagreeTime()J
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "privacy_disagree_time"

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public static getIfNeedResetScanId()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "reset_scan_id"

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static getIsApkUpdate()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "apk_update"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static getLastScanId()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "lastScanID"

    .line 7
    const/4 v2, -0x1

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static getListColumnType()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "list_column_type"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static getListColumnTypeMirror()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "list_column_type_mirror"

    .line 7
    const/16 v2, 0x32

    .line 9
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private static getPreference()Landroid/content/SharedPreferences;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/SettingManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    if-nez v0, :cond_11

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x4

    .line 10
    const-string v2, "xl_file_manager"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/fileexplorer/model/SettingManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 18
    :cond_11
    sget-object v0, Lcom/android/fileexplorer/model/SettingManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 20
    return-object v0
.end method

.method public static getPrivacyAgreeTime()J
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "privacy_agree_time"

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public static getPrivacyDisagreeTime()J
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "privacy_disagree_time"

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public static getPrivacySwitch()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/model/SettingManager;->PRIVACY_SWITCH:Ljava/lang/String;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static getPrivateFolderToastTime()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "private_folder_toast_time"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static getPrivateSecretKey()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "private_file_secret_key"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static getShowCDD()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "showCDD"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static getShowEncrypt()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "show_encrypt"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static getSkipLimitPath()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "skip_limit_path"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static increaseShowVolumeSwitchPopupCount()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "show_volume_switch_popup"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    return-void
.end method

.method public static isAlreadyClickStorage()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "clickStorage"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static isAlreadyShowGuide()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "showGuide"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static isCategoryBackInterAdShow()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isShowInterAdForTime()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isShowInterAdForShowCount()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public static isFirstEnterPrivateFolder()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "first_enter_private_folder"

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static isRecordDocInfo()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "recordDocInfo"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static isShowInterAdForShowCount()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "category_back_inter"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x2

    .line 13
    if-ge v0, v1, :cond_f

    .line 15
    const/4 v2, 0x1

    .line 16
    :cond_f
    return v2
.end method

.method public static isShowInterAdForTime()Z
    .registers 8

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "category_back_inter_show_time"

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 12
    move-result-wide v0

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v4

    .line 17
    invoke-static {v0, v1, v4, v5}, Lcom/android/fileexplorer/model/TimeUtils;->getDaysBetween(JJ)J

    .line 20
    move-result-wide v6

    .line 21
    cmp-long v2, v6, v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v2, :cond_22

    .line 26
    sub-long/2addr v4, v0

    .line 27
    const-wide/32 v0, 0xea60

    .line 30
    cmp-long v0, v4, v0

    .line 32
    if-gez v0, :cond_22

    .line 34
    return v3

    .line 35
    :cond_22
    if-lez v2, :cond_31

    .line 37
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 40
    move-result-object v0

    .line 41
    const-string v1, "category_back_inter"

    .line 43
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    :cond_31
    const/4 v0, 0x1

    .line 51
    return v0
.end method

.method public static isUsingAndroidID()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "is_using_android_id_1"

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static needShowPatternDialog()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "need_show_pattern_dialog"

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static setAppConfigVersion(J)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "app_config_version"

    .line 7
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setBlackDirConfigVersion(J)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "black_dir_config_version"

    .line 7
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setCategoryBackInterAdShow()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "category_back_inter"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    move-result-wide v1

    .line 33
    const-string v3, "category_back_inter_show_time"

    .line 35
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    return-void
.end method

.method public static setClickStorage()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "clickStorage"

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    return-void
.end method

.method public static setDataConsumptionSwitch(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "data_consumption_switch"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setEnterFileViewTime(J)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "enter_file_view_time"

    .line 7
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setFirstEnterPrivateFolder(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "first_enter_private_folder"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setIsApkUpdate(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "apk_update"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setIsUsingAndroidId(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "is_using_android_id_1"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setLastScanID(I)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "lastScanID"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setListColumnType(I)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "list_column_type"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setListColumnTypeMirror(I)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "list_column_type_mirror"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setNeedResetScanId(Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result p0

    .line 9
    const-string v1, "reset_scan_id"

    .line 11
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    return-void
.end method

.method public static setNeedShowPatternDialog(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "need_show_pattern_dialog"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setPrivacyAgreeTime(J)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "privacy_agree_time"

    .line 11
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    return-void
.end method

.method public static setPrivacyDisagreeTime(J)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "privacy_disagree_time"

    .line 11
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    return-void
.end method

.method public static setPrivacySwitch(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/model/SettingManager;->PRIVACY_SWITCH:Ljava/lang/String;

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 14
    return-void
.end method

.method public static setPrivateFolderToastTime(I)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "private_folder_toast_time"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setPrivateSecretKey(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "private_file_secret_key"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setRecordDocInfo(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "recordDocInfo"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setShowCDD(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "showCDD"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setShowEncrypt(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "show_encrypt"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setShowGuide(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "showGuide"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static setSkipLimitPath(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "skip_limit_path"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method

.method public static shouldShowVolumeSwitchPopup()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPreference()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "show_volume_switch_popup"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x3

    .line 13
    if-ge v0, v1, :cond_f

    .line 15
    const/4 v2, 0x1

    .line 16
    :cond_f
    return v2
.end method
