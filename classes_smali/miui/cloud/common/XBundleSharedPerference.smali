.class public Lmiui/cloud/common/XBundleSharedPerference;
.super Ljava/lang/Object;
.source "XBundleSharedPerference.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static JSONToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .registers 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_62

    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    if-nez v3, :cond_1c

    .line 28
    goto :goto_9

    .line 29
    :cond_1c
    instance-of v4, v3, Ljava/lang/Integer;

    .line 31
    if-eqz v4, :cond_2a

    .line 33
    check-cast v3, Ljava/lang/Integer;

    .line 35
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result v3

    .line 39
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 42
    goto :goto_9

    .line 43
    :cond_2a
    instance-of v4, v3, Ljava/lang/Long;

    .line 45
    if-eqz v4, :cond_38

    .line 47
    check-cast v3, Ljava/lang/Long;

    .line 49
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 52
    move-result-wide v3

    .line 53
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 56
    goto :goto_9

    .line 57
    :cond_38
    instance-of v4, v3, Ljava/lang/Boolean;

    .line 59
    if-eqz v4, :cond_46

    .line 61
    check-cast v3, Ljava/lang/Boolean;

    .line 63
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    move-result v3

    .line 67
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    goto :goto_9

    .line 71
    :cond_46
    instance-of v4, v3, Ljava/lang/CharSequence;

    .line 73
    if-eqz v4, :cond_54

    .line 75
    check-cast v3, Ljava/lang/CharSequence;

    .line 77
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    goto :goto_9

    .line 85
    :cond_54
    instance-of v4, v3, Lorg/json/JSONObject;

    .line 87
    if-eqz v4, :cond_9

    .line 89
    check-cast v3, Lorg/json/JSONObject;

    .line 91
    invoke-static {v3}, Lmiui/cloud/common/XBundleSharedPerference;->JSONToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 98
    goto :goto_9

    .line 99
    :cond_62
    return-object v0
.end method

.method private static bundleToMap(Landroid/os/Bundle;)Ljava/util/Map;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_4d

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 26
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    if-nez v3, :cond_20

    .line 32
    goto :goto_d

    .line 33
    :cond_20
    instance-of v4, v3, Ljava/lang/Integer;

    .line 35
    if-nez v4, :cond_49

    .line 37
    instance-of v4, v3, Ljava/lang/Long;

    .line 39
    if-nez v4, :cond_49

    .line 41
    instance-of v4, v3, Ljava/lang/Boolean;

    .line 43
    if-eqz v4, :cond_2d

    .line 45
    goto :goto_49

    .line 46
    :cond_2d
    instance-of v4, v3, Ljava/lang/CharSequence;

    .line 48
    if-eqz v4, :cond_3b

    .line 50
    check-cast v3, Ljava/lang/CharSequence;

    .line 52
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    goto :goto_d

    .line 60
    :cond_3b
    instance-of v4, v3, Landroid/os/Bundle;

    .line 62
    if-eqz v4, :cond_d

    .line 64
    check-cast v3, Landroid/os/Bundle;

    .line 66
    invoke-static {v3}, Lmiui/cloud/common/XBundleSharedPerference;->bundleToMap(Landroid/os/Bundle;)Ljava/util/Map;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    goto :goto_d

    .line 74
    :cond_49
    :goto_49
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    goto :goto_d

    .line 78
    :cond_4d
    return-object v0
.end method

.method public static loadPreferencesBundle(Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    .line 1
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    .line 11
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_11} :catch_16

    .line 18
    invoke-static {v0}, Lmiui/cloud/common/XBundleSharedPerference;->JSONToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :catch_16
    const/4 p0, 0x1

    .line 24
    new-array p0, p0, [Ljava/lang/Object;

    .line 26
    const/4 p1, 0x0

    .line 27
    const-string v0, "Bad JSON stored in shared preference. "

    .line 29
    aput-object v0, p0, p1

    .line 31
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 34
    return-object v1
.end method

.method public static savePreferencesBundle(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    if-nez p2, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-static {p2}, Lmiui/cloud/common/XBundleSharedPerference;->bundleToMap(Landroid/os/Bundle;)Ljava/util/Map;

    .line 7
    move-result-object p2

    .line 8
    invoke-static {p2}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    return-void
.end method
