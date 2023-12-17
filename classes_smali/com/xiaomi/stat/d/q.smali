.class public Lcom/xiaomi/stat/d/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "tv"

.field private static final b:Ljava/lang/String; = "SystemUtil"

.field private static final c:Ljava/lang/String; = "box"

.field private static final d:Ljava/lang/String; = "tvbox"

.field private static final e:Ljava/lang/String; = "projector"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    const-string p1, "SystemUtil"

    const-string v1, "getStaticVariableValue exception"

    .line 22
    invoke-static {p1, v1, p0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .registers 6

    const-string v0, ""

    :try_start_2
    const-string v1, "mitv.common.ConfigurationManager"

    .line 8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "getProductCategory"

    new-array v5, v3, [Ljava/lang/Class;

    .line 11
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mitv.tv.TvContext"

    .line 13
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "PRODUCT_CATEGORY_MITV"

    .line 14
    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/q;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_46

    const-string v0, "tv"

    goto :goto_87

    :cond_46
    const-string v3, "PRODUCT_CATEGORY_MIBOX"

    .line 15
    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/q;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_59

    const-string v0, "box"

    goto :goto_87

    :cond_59
    const-string v3, "PRODUCT_CATEGORY_MITVBOX"

    .line 16
    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/q;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_6c

    const-string v0, "tvbox"

    goto :goto_87

    :cond_6c
    const-string v3, "PRODUCT_CATEGORY_MIPROJECTOR"

    .line 17
    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/q;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_87

    const-string v0, "projector"
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7e} :catch_7f

    goto :goto_87

    :catch_7f
    move-exception v1

    const-string v2, "SystemUtil"

    const-string v3, "getMiTvProductCategory exception"

    .line 18
    invoke-static {v2, v3, v1}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_87
    :goto_87
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 5
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_2a

    :catch_20
    move-exception p0

    const-string v0, "SystemUtil"

    const-string v1, "reflectGetSystemProperties exception"

    .line 7
    invoke-static {v0, v1, p0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    :goto_2a
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.xiaomi.mitv.services"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_15

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_1a

    move v0, v1

    goto :goto_1a

    :catch_15
    const-string p0, "Is not Mi Tv system!"

    .line 3
    invoke-static {p0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/q;->a(Landroid/content/Context;)Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1e

    .line 7
    const-string p0, "ro.mitv.product.overseas"

    .line 9
    invoke-static {p0}, Lcom/xiaomi/stat/d/q;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    const-string v0, "true"

    .line 15
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_16

    .line 19
    if-eqz p0, :cond_1e

    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :catch_16
    move-exception p0

    .line 24
    const-string v0, "SystemUtil"

    .line 26
    const-string v1, "isMiTvIntlBuild"

    .line 28
    invoke-static {v0, v1, p0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :cond_1e
    const/4 p0, 0x0

    .line 32
    return p0
.end method
