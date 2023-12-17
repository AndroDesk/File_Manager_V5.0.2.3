.class public Lcom/xiaomi/onetrack/util/aa;
.super Ljava/lang/Object;


# static fields
.field private static final A:Ljava/lang/String; = "onetrack_user_id"

.field private static final B:Ljava/lang/String; = "onetrack_user_type"

.field private static final C:Ljava/lang/String; = "custom_id"

.field private static final D:Ljava/lang/String; = "page_end"

.field private static final E:Ljava/lang/String; = "last_app_version"

.field private static final F:Ljava/lang/String; = "first_launch_time"

.field private static final G:Ljava/lang/String; = "pref_custom_privacy_policy_"

.field private static final a:Ljava/lang/String; = "onetrack"

.field private static final b:Ljava/lang/String; = "one_track_pref"

.field private static c:Landroid/content/SharedPreferences; = null

.field private static d:Landroid/content/SharedPreferences$Editor; = null

.field private static final e:Ljava/lang/String; = "last_upload_active_time"

.field private static final f:Ljava/lang/String; = "last_upload_usage_time"

.field private static final g:Ljava/lang/String; = "last_collect_crash_time"

.field private static final h:Ljava/lang/String; = "report_crash_ticket"

.field private static final i:Ljava/lang/String; = "last_secret_key_time"

.field private static final j:Ljava/lang/String; = "last_common_cloud_time"

.field private static final k:Ljava/lang/String; = "next_update_common_conf_time"

.field private static final l:Ljava/lang/String; = "common_cloud_data"

.field private static final m:Ljava/lang/String; = "common_config_hash"

.field private static final n:Ljava/lang/String; = "s_t"

.field private static final o:Ljava/lang/String; = "l_t"

.field private static final p:Ljava/lang/String; = "e_t"

.field private static final q:Ljava/lang/String; = "secret_key_data"

.field private static final r:Ljava/lang/String; = "region_rul"

.field private static final s:Ljava/lang/String; = "pref_instance_id"

.field private static final t:Ljava/lang/String; = "pref_instance_id_last_use_time"

.field private static final u:Ljava/lang/String; = "last_usage_resume_component"

.field private static final v:Ljava/lang/String; = "last_usage_resume_time"

.field private static final w:Ljava/lang/String; = "network_access_enabled"

.field private static final x:Ljava/lang/String; = "anonymous_enabled"

.field private static final y:Ljava/lang/String; = "onetrack_first_open"

.field private static final z:Ljava/lang/String; = "dau_last_time"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "last_app_version"

    .line 3
    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static B()J
    .registers 3

    .line 1
    const-string v0, "first_launch_time"

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;J)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method private static C()V
    .registers 4

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->d:Landroid/content/SharedPreferences$Editor;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const-class v0, Lcom/xiaomi/onetrack/util/aa;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    sget-object v1, Lcom/xiaomi/onetrack/util/aa;->d:Landroid/content/SharedPreferences$Editor;

    .line 11
    if-nez v1, :cond_1f

    .line 13
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    const-string v2, "one_track_pref"

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 23
    move-result-object v1

    .line 24
    sput-object v1, Lcom/xiaomi/onetrack/util/aa;->c:Landroid/content/SharedPreferences;

    .line 26
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    move-result-object v1

    .line 30
    sput-object v1, Lcom/xiaomi/onetrack/util/aa;->d:Landroid/content/SharedPreferences$Editor;

    .line 32
    :cond_1f
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_21
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    .line 36
    throw v1
.end method

.method public static a()J
    .registers 3

    const-string v0, "last_upload_active_time"

    const-wide/16 v1, 0x0

    .line 7
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/String;J)J
    .registers 4

    .line 3
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->C()V

    .line 4
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string p0, "custom_id"

    const-string v0, ""

    .line 12
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->C()V

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(J)V
    .registers 3

    const-string v0, "last_upload_active_time"

    .line 8
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    const-string p0, "custom_id"

    .line 11
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    const-string v0, "secret_key_data"

    .line 9
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;F)V
    .registers 3

    .line 5
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->C()V

    .line 6
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 3

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "pref_custom_privacy_policy_"

    .line 14
    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/aa;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Z)V
    .registers 2

    const-string v0, "network_access_enabled"

    .line 10
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method private static b(Ljava/lang/String;F)F
    .registers 3

    .line 7
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->C()V

    .line 8
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static b()J
    .registers 3

    const-string v0, "last_collect_crash_time"

    const-wide/16 v1, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(J)J
    .registers 3

    const-string v0, "last_upload_usage_time"

    .line 9
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    const-string v0, "region_rul"

    .line 11
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;J)V
    .registers 4

    .line 3
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->C()V

    .line 4
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->C()V

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b(Z)V
    .registers 2

    const-string v0, "anonymous_enabled"

    .line 12
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method private static b(Ljava/lang/String;Z)Z
    .registers 3

    .line 5
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->C()V

    .line 6
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static c()J
    .registers 3

    const-string v0, "report_crash_ticket"

    const-wide/16 v1, 0x0

    .line 4
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(J)V
    .registers 3

    const-string v0, "last_collect_crash_time"

    .line 3
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 2

    const-string v0, "common_config_hash"

    .line 5
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->C()V

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static c(Z)V
    .registers 2

    const-string v0, "onetrack_first_open"

    .line 6
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method public static d()J
    .registers 3

    const-string v0, "s_t"

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(J)V
    .registers 3

    const-string v0, "report_crash_ticket"

    .line 1
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    const-string v0, "common_cloud_data"

    .line 3
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e()J
    .registers 3

    const-string v0, "l_t"

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(J)V
    .registers 3

    const-string v0, "last_upload_usage_time"

    .line 1
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    const-string v0, "pref_instance_id"

    .line 3
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/util/ac;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->k(J)V

    return-void
.end method

.method public static f()J
    .registers 3

    const-string v0, "e_t"

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(J)V
    .registers 3

    const-string v0, "s_t"

    .line 1
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .registers 2

    const-string v0, "last_usage_resume_component"

    .line 3
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g()Ljava/lang/String;
    .registers 2

    const-string v0, "secret_key_data"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(J)V
    .registers 3

    const-string v0, "l_t"

    .line 1
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .registers 2

    const-string v0, "onetrack_user_id"

    .line 3
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h()Ljava/lang/String;
    .registers 2

    const-string v0, "region_rul"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(J)V
    .registers 3

    const-string v0, "e_t"

    .line 1
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .registers 2

    const-string v0, "onetrack_user_type"

    .line 3
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i()J
    .registers 3

    const-string v0, "last_secret_key_time"

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static i(J)V
    .registers 3

    const-string v0, "last_secret_key_time"

    .line 1
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    const-string v0, "page_end"

    .line 3
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j()J
    .registers 3

    const-string v0, "next_update_common_conf_time"

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static j(J)V
    .registers 3

    const-string v0, "next_update_common_conf_time"

    .line 1
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .registers 2

    const-string v0, "last_app_version"

    .line 3
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k()Ljava/lang/String;
    .registers 2

    const-string v0, "common_config_hash"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(J)V
    .registers 3

    const-string v0, "pref_instance_id_last_use_time"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static k(Ljava/lang/String;)Z
    .registers 3

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "pref_custom_privacy_policy_"

    .line 4
    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static l()Ljava/lang/String;
    .registers 2

    const-string v0, "common_cloud_data"

    const-string v1, ""

    .line 3
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(J)V
    .registers 3

    const-string v0, "last_usage_resume_time"

    .line 4
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method private static l(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->C()V

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static m()Ljava/lang/String;
    .registers 2

    const-string v0, "pref_instance_id"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m(J)V
    .registers 3

    const-string v0, "dau_last_time"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static n()J
    .registers 3

    const-string v0, "pref_instance_id_last_use_time"

    const-wide/16 v1, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static n(J)V
    .registers 3

    const-string v0, "first_launch_time"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static o()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "last_usage_resume_component"

    .line 3
    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static p()J
    .registers 3

    .line 1
    const-string v0, "last_usage_resume_time"

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;J)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static q()Z
    .registers 2

    .line 1
    const-string v0, "network_access_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static r()Z
    .registers 2

    .line 1
    const-string v0, "anonymous_enabled"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static s()Z
    .registers 2

    .line 1
    const-string v0, "onetrack_first_open"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static t()J
    .registers 3

    .line 1
    const-string v0, "dau_last_time"

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;J)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static u()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "onetrack_user_id"

    .line 3
    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static v()V
    .registers 1

    .line 1
    const-string v0, "onetrack_user_id"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->l(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static w()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "onetrack_user_type"

    .line 3
    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static x()V
    .registers 1

    .line 1
    const-string v0, "onetrack_user_type"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->l(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static y()J
    .registers 3

    .line 1
    const-string v0, "network_access_enabled"

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;J)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static z()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "page_end"

    .line 3
    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
