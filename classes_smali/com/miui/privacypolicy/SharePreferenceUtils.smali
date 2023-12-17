.class public Lcom/miui/privacypolicy/SharePreferenceUtils;
.super Ljava/lang/Object;
.source "SharePreferenceUtils.java"


# static fields
.field private static mInstance:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 15
    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 1
    sget-object v0, Lcom/miui/privacypolicy/SharePreferenceUtils;->mInstance:Landroid/content/SharedPreferences;

    .line 3
    if-nez v0, :cond_d

    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "privacy_sdk"

    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object p0

    .line 12
    sput-object p0, Lcom/miui/privacypolicy/SharePreferenceUtils;->mInstance:Landroid/content/SharedPreferences;

    .line 14
    :cond_d
    sget-object p0, Lcom/miui/privacypolicy/SharePreferenceUtils;->mInstance:Landroid/content/SharedPreferences;

    .line 16
    return-object p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, ""

    .line 2
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 3
    invoke-static {p0}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 4
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 15
    return-void
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 15
    return-void
.end method

.method public static putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 15
    return-void
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 15
    return-void
.end method
