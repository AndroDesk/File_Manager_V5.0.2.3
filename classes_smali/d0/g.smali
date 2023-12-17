.class public final Ld0/g;
.super Ljava/lang/Object;
.source "AppOpsManagerCompat.java"


# direct methods
.method public static a(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I
    .registers 4

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/a0;->k(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Landroid/app/AppOpsManager;
    .registers 2

    .line 1
    const-class v0, Landroid/app/AppOpsManager;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/AppOpsManager;

    .line 9
    return-object p0
.end method
