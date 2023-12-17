.class public Lcom/android/fileexplorer/controller/FabPreferenceManager;
.super Ljava/lang/Object;
.source "FabPreferenceManager.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "fab"


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

.method public static generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/controller/FabPreference;

    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iput-boolean v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    return-object v0
.end method

.method public static generateRecentFabPreference()Lcom/android/fileexplorer/controller/FabPreference;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/controller/FabPreference;

    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    return-object v0
.end method

.method public static getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/controller/FabPreference;

    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_52

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_52

    :cond_2b
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MiShare:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_45

    iput v2, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iput-boolean v3, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    goto :goto_5e

    :cond_45
    iput v3, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iput-boolean v3, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    goto :goto_5e

    :cond_52
    :goto_52
    iput v2, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iput-boolean v2, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    :goto_5e
    sget-boolean v1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz v1, :cond_64

    iput v2, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    :cond_64
    invoke-static {p0, v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p0

    return-object p0
.end method

.method public static getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object p1

    :cond_10
    new-instance p1, Lcom/android/fileexplorer/controller/FabPreference;

    invoke-direct {p1}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    :try_start_15
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p0

    iput p0, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p0

    iput p0, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_34
    return-object p1
.end method

.method private static getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getViewMode()I
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    return v0
.end method

.method public static getViewMode(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p0

    iget p0, p0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    return p0
.end method

.method public static putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-boolean p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
