.class public Lcom/android/fileexplorer/model/DisplayPreferenceManager;
.super Ljava/lang/Object;
.source "DisplayPreferenceManager.java"


# static fields
.field public static final KEY_HIDE_EMPTY_DIRS:Ljava/lang/String; = "hide_empty_dirs"

.field public static final KEY_USER_CREATE_DIRS:Ljava/lang/String; = "user_created_dirs"

.field private static final NAME:Ljava/lang/String; = "display"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "display"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static getUserCreatedDirs()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/model/DisplayPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "user_created_dirs"

    .line 12
    const-string v3, ""

    .line 14
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_2b

    .line 24
    new-instance v0, Lcom/google/gson/Gson;

    .line 26
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 29
    new-instance v2, Lcom/android/fileexplorer/model/DisplayPreferenceManager$1;

    .line 31
    invoke-direct {v2}, Lcom/android/fileexplorer/model/DisplayPreferenceManager$1;-><init>()V

    .line 34
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/util/List;

    .line 44
    :cond_2b
    return-object v0
.end method

.method public static isHideEmptyOrSysDirs()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/DisplayPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "hide_empty_dirs"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static setHideEmptyOrSysDirs(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/DisplayPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "hide_empty_dirs"

    .line 11
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    return-void
.end method

.method public static setUserCreatedDirs(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/DisplayPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/gson/Gson;

    .line 11
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 14
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    const-string v1, "user_created_dirs"

    .line 20
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    return-void
.end method
