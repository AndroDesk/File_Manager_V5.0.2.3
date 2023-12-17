.class public final Ld0/a$d;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public static a(Landroid/app/Activity;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/core/content/c;->g(Landroid/app/Activity;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanUncheckedReflection"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v0

    .line 9
    const-class v1, Landroid/content/pm/PackageManager;

    .line 11
    const-string v2, "shouldShowRequestPermissionRationale"

    .line 13
    const/4 v3, 0x1

    .line 14
    new-array v4, v3, [Ljava/lang/Class;

    .line 16
    const-class v5, Ljava/lang/String;

    .line 18
    const/4 v6, 0x0

    .line 19
    aput-object v5, v4, v6

    .line 21
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    move-result-object v1

    .line 25
    new-array v2, v3, [Ljava/lang/Object;

    .line 27
    aput-object p1, v2, v6

    .line 29
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Boolean;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    move-result p0
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_26} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_26} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_26} :catch_27

    .line 39
    return p0

    .line 40
    :catch_27
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 43
    move-result p0

    .line 44
    return p0
.end method
