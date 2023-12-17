.class public Lcom/android/fileexplorer/controller/FabPreferenceManager;
.super Ljava/lang/Object;
.source "FabPreferenceManager.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "fab"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/controller/FabPreference;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 9
    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v2

    .line 15
    iput v2, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 17
    iput-boolean v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 19
    return-object v0
.end method

.method public static generateRecentFabPreference()Lcom/android/fileexplorer/controller/FabPreference;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/controller/FabPreference;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    iput v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 9
    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v1

    .line 15
    iput v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 20
    return-object v0
.end method

.method public static getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/controller/FabPreference;

    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    .line 2
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

    .line 3
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_52

    .line 4
    :cond_2b
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MiShare:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_45

    .line 5
    iput v2, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 6
    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 7
    iput-boolean v3, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    goto :goto_5e

    .line 8
    :cond_45
    iput v3, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 9
    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 10
    iput-boolean v3, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    goto :goto_5e

    .line 11
    :cond_52
    :goto_52
    iput v2, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 12
    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 13
    iput-boolean v2, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 14
    :goto_5e
    sget-boolean v1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz v1, :cond_64

    .line 15
    iput v2, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 16
    :cond_64
    invoke-static {p0, v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p0

    return-object p0
.end method

.method public static getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;
    .registers 4

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object p1

    .line 20
    :cond_10
    new-instance p1, Lcom/android/fileexplorer/controller/FabPreference;

    invoke-direct {p1}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    .line 21
    :try_start_15
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 22
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p0

    iput p0, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    const/4 p0, 0x1

    .line 23
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p0

    iput p0, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    const/4 p0, 0x2

    .line 24
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_34
    return-object p1
.end method

.method private static getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "fab"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static getViewMode()I
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    .line 3
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    return v0
.end method

.method public static getViewMode(Ljava/lang/String;)I
    .registers 1

    .line 4
    invoke-static {p0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p0

    .line 5
    iget p0, p0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    return p0
.end method

.method public static putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lorg/json/JSONArray;

    .line 11
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 14
    iget v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 16
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 19
    iget v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 21
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 24
    iget-boolean p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 26
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 29
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    return-void
.end method
