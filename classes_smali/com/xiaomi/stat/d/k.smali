.class public Lcom/xiaomi/stat/d/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/d/k$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "http://test.data.mistat.xiaomi.srv/get_all_config"

.field public static final b:Ljava/lang/String; = "http://test-idservice.data.mistat.xiaomi.com/deviceid_get"

.field public static final c:Ljava/lang/String; = "http://test.data.mistat.xiaomi.srv/mistats/v3"

.field private static final d:Ljava/lang/String; = "MI_STAT"

.field private static final e:Ljava/lang/String; = "com.xiaomi.stat.demo"

.field private static f:Z = false

.field private static final g:I = 0xfa0


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 1

    .line 19
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MI_STAT"

    if-nez v0, :cond_19

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_19

    :cond_f
    const-string v0, "_"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_19
    :goto_19
    if-nez p0, :cond_1f

    .line 3
    invoke-static {v1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    :cond_1f
    const/4 p1, 0x1

    if-ne p0, p1, :cond_26

    .line 4
    invoke-static {v1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    :cond_26
    const/4 p1, 0x2

    if-ne p0, p1, :cond_2d

    .line 5
    invoke-static {v1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    :cond_2d
    const/4 p1, 0x3

    if-ne p0, p1, :cond_34

    .line 6
    invoke-static {v1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    :cond_34
    const/4 p1, 0x4

    if-ne p0, p1, :cond_3a

    .line 7
    invoke-static {v1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    :goto_3a
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    const-string v0, "MI_STAT"

    .line 10
    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 11
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->f:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 12
    invoke-static {v0, p0, p1, v1}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 15
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->f:Z

    if-eqz v0, :cond_1b

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 13
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->f:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 14
    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 17
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->f:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 18
    invoke-static {v0, p0, v1, p1}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public static a(Z)V
    .registers 1

    .line 8
    sput-boolean p0, Lcom/xiaomi/stat/d/k;->f:Z

    return-void
.end method

.method public static a()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->f:Z

    return v0
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_23

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, p3, v0}, Lcom/xiaomi/stat/d/k;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26

    .line 6
    :cond_23
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/stat/d/k;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    const-string v0, "MI_STAT"

    .line 7
    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 8
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->f:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 9
    invoke-static {v0, p0, p1, v1}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 10
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->f:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    .line 11
    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static b()Z
    .registers 4

    const/4 v0, 0x0

    .line 12
    :try_start_1
    invoke-static {}, Lcom/xiaomi/stat/d/k;->a()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 13
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_25

    const-string v2, "com.xiaomi.stat.demo"

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "demo_config"

    .line 15
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "mistat_test_url"

    .line 16
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_25

    :catchall_25
    :cond_25
    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .registers 2

    const-string v0, "MI_STAT"

    .line 1
    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->f:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, p1, v1}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 4
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->f:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 5
    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    const-string v0, "MI_STAT"

    .line 1
    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->f:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, p1, v1}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 4
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->f:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    .line 5
    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    const-string v0, "MI_STAT"

    .line 1
    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->f:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, p1, v1}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method
