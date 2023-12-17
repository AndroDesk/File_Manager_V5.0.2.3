.class public final Landroidx/core/content/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/PermissionChecker$PermissionResult;
    }
.end annotation


# static fields
.field public static final PERMISSION_DENIED:I = -0x1

.field public static final PERMISSION_DENIED_APP_OP:I = -0x2

.field public static final PERMISSION_GRANTED:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_f

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 20
    move-result v1

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    move-result v2

    .line 25
    invoke-static {p0, p1, v1, v2, v0}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public static checkCallingPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_c

    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 16
    move-result v0

    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    move-result v1

    .line 21
    invoke-static {p0, p1, v0, v1, p2}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .registers 7

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 4
    move-result p2

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p2, v0, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-static {p1}, Ld0/f;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-nez p1, :cond_10

    .line 16
    return p2

    .line 17
    :cond_10
    if-nez p4, :cond_24

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    move-result-object p4

    .line 23
    invoke-virtual {p4, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 26
    move-result-object p4

    .line 27
    if-eqz p4, :cond_23

    .line 29
    array-length v1, p4

    .line 30
    if-gtz v1, :cond_20

    .line 32
    goto :goto_23

    .line 33
    :cond_20
    aget-object p4, p4, p2

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    :goto_23
    return v0

    .line 37
    :cond_24
    :goto_24
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    if-ne v0, p3, :cond_36

    .line 47
    invoke-static {v1, p4}, Ll0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_36

    .line 53
    const/4 v0, 0x1

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v0, p2

    .line 56
    :goto_37
    if-eqz v0, :cond_64

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    const/16 v1, 0x1d

    .line 62
    if-lt v0, v1, :cond_57

    .line 64
    invoke-static {p0}, Ld0/g;->c(Landroid/content/Context;)Landroid/app/AppOpsManager;

    .line 67
    move-result-object v0

    .line 68
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 71
    move-result v1

    .line 72
    invoke-static {v0, p1, v1, p4}, Ld0/g;->a(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I

    .line 75
    move-result p4

    .line 76
    if-eqz p4, :cond_4e

    .line 78
    goto :goto_70

    .line 79
    :cond_4e
    invoke-static {p0}, Ld0/g;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    invoke-static {v0, p1, p3, p0}, Ld0/g;->a(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I

    .line 86
    move-result p4

    .line 87
    goto :goto_70

    .line 88
    :cond_57
    const-class p3, Landroid/app/AppOpsManager;

    .line 90
    invoke-static {p0, p3}, Ld0/f;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    move-result-object p0

    .line 94
    check-cast p0, Landroid/app/AppOpsManager;

    .line 96
    invoke-static {p0, p1, p4}, Ld0/f;->c(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    move-result p4

    .line 100
    goto :goto_70

    .line 101
    :cond_64
    const-class p3, Landroid/app/AppOpsManager;

    .line 103
    invoke-static {p0, p3}, Ld0/f;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Landroid/app/AppOpsManager;

    .line 109
    invoke-static {p0, p1, p4}, Ld0/f;->c(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-result p4

    .line 113
    :goto_70
    if-nez p4, :cond_73

    .line 115
    goto :goto_74

    .line 116
    :cond_73
    const/4 p2, -0x2

    .line 117
    :goto_74
    return p2
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-static {p0, p1, v0, v1, v2}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 16
    move-result p0

    .line 17
    return p0
.end method
