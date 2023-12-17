.class public Lcom/miui/privacypolicy/PrivacyManager;
.super Ljava/lang/Object;
.source "PrivacyManager.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Privacy_PrivacyManager"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static checkThreadPermission(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    const-string v0, "Privacy_PrivacyManager"

    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    throw v0
.end method

.method public static declared-synchronized privacyAgree(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    const-class v0, Lcom/miui/privacypolicy/PrivacyManager;

    monitor-enter v0

    :try_start_3
    const-string v1, "can not request privacy agree in main thread!"

    .line 1
    invoke-static {v1}, Lcom/miui/privacypolicy/PrivacyManager;->checkThreadPermission(Ljava/lang/String;)V

    .line 2
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_25

    if-eqz v1, :cond_f

    const/4 p0, -0x4

    .line 3
    monitor-exit v0

    return p0

    .line 4
    :cond_f
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lcom/miui/privacypolicy/PrivacyAgreeManager;->handlePrivacyAgreeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_25

    .line 6
    monitor-exit v0

    return p0

    :catchall_25
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized privacyAgree(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    const-class v0, Lcom/miui/privacypolicy/PrivacyManager;

    monitor-enter v0

    :try_start_3
    const-string v1, "can not request privacy agree in main thread!"

    .line 7
    invoke-static {v1}, Lcom/miui/privacypolicy/PrivacyManager;->checkThreadPermission(Ljava/lang/String;)V

    .line 8
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_25

    if-eqz v1, :cond_f

    const/4 p0, -0x4

    .line 9
    monitor-exit v0

    return p0

    .line 10
    :cond_f
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/miui/privacypolicy/PrivacyAgreeManager;->handlePrivacyAgreeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_25

    .line 12
    monitor-exit v0

    return p0

    :catchall_25
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized privacyRevoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const-class v0, Lcom/miui/privacypolicy/PrivacyManager;

    monitor-enter v0

    :try_start_3
    const-string v1, "can not request privacy revoke in main thread!"

    .line 1
    invoke-static {v1}, Lcom/miui/privacypolicy/PrivacyManager;->checkThreadPermission(Ljava/lang/String;)V

    .line 2
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a

    if-eqz v1, :cond_f

    const/4 p0, -0x4

    .line 3
    monitor-exit v0

    return p0

    .line 4
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v1}, Lcom/miui/privacypolicy/PrivacyRevokeManager;->handlePrivacyRevokeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1a

    .line 5
    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized privacyRevoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const-class v0, Lcom/miui/privacypolicy/PrivacyManager;

    monitor-enter v0

    :try_start_3
    const-string v1, "can not request privacy revoke in main thread!"

    .line 6
    invoke-static {v1}, Lcom/miui/privacypolicy/PrivacyManager;->checkThreadPermission(Ljava/lang/String;)V

    .line 7
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_19

    if-eqz v1, :cond_f

    const/4 p0, -0x4

    .line 8
    monitor-exit v0

    return p0

    .line 9
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/privacypolicy/PrivacyRevokeManager;->handlePrivacyRevokeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_19

    .line 10
    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized requestPrivacyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/miui/privacypolicy/PrivacyManager;

    monitor-enter v0

    :try_start_3
    const-string v1, "can not request privacy update in main thread!"

    .line 1
    invoke-static {v1}, Lcom/miui/privacypolicy/PrivacyManager;->checkThreadPermission(Ljava/lang/String;)V

    .line 2
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_13

    const/4 p0, -0x4

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1a

    monitor-exit v0

    return-object p0

    :cond_13
    const/4 v1, 0x0

    .line 4
    :try_start_14
    invoke-static {p0, p1, p2, v1, v1}, Lcom/miui/privacypolicy/PrivacyManager;->requestPrivacyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1a

    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized requestPrivacyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const-class v0, Lcom/miui/privacypolicy/PrivacyManager;

    monitor-enter v0

    :try_start_3
    const-string v1, "can not request privacy update in main thread!"

    .line 5
    invoke-static {v1}, Lcom/miui/privacypolicy/PrivacyManager;->checkThreadPermission(Ljava/lang/String;)V

    .line 6
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_13

    const/4 p0, -0x4

    .line 7
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_db

    monitor-exit v0

    return-object p0

    .line 8
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/privacypolicy/FileUtils;->isVersionFileExit(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_ca

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/privacypolicy/FileUtils;->isAgreeErrorFileExit(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_privacy_update_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v5, v3

    if-gez v1, :cond_56

    const/4 p0, -0x5

    .line 12
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_54
    .catchall {:try_start_13 .. :try_end_54} :catchall_db

    monitor-exit v0

    return-object p0

    .line 13
    :cond_56
    :try_start_56
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_privacy_update_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v3, v4, v5}, Lcom/miui/privacypolicy/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "privacy_agree_error"

    invoke-static {v3, v4, p1}, Lcom/miui/privacypolicy/FileUtils;->readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_88
    .catchall {:try_start_56 .. :try_end_88} :catchall_db

    if-nez v4, :cond_aa

    .line 17
    :try_start_8a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "idContent"

    .line 18
    invoke-virtual {v4, v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "policyName"

    .line 19
    invoke-virtual {v4, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "timestamp"

    .line 20
    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_a1} :catch_a2
    .catchall {:try_start_8a .. :try_end_a1} :catchall_db

    goto :goto_aa

    :catch_a2
    move-exception v3

    :try_start_a3
    const-string v4, "Privacy_PrivacyManager"

    const-string v5, "parse last jsonObject error, "

    .line 21
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_aa
    :goto_aa
    move-object v4, p1

    move-object v5, p2

    move-object v6, v1

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/miui/privacypolicy/PrivacyAgreeManager;->handlePrivacyAgreeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_ba

    const/4 p0, -0x6

    .line 23
    :cond_ba
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_be
    .catchall {:try_start_a3 .. :try_end_be} :catchall_db

    monitor-exit v0

    return-object p0

    .line 24
    :cond_c0
    :try_start_c0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lcom/miui/privacypolicy/PrivacyUpdateManager;->handlePrivacyUpdateTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_c8
    .catchall {:try_start_c0 .. :try_end_c8} :catchall_db

    .line 25
    monitor-exit v0

    return-object p0

    .line 26
    :cond_ca
    :try_start_ca
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lcom/miui/privacypolicy/PrivacyQueryManager;->handlePrivacyQueryTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_d5

    const/4 p0, -0x7

    .line 27
    :cond_d5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_d9
    .catchall {:try_start_ca .. :try_end_d9} :catchall_db

    monitor-exit v0

    return-object p0

    :catchall_db
    move-exception p0

    monitor-exit v0

    throw p0
.end method
