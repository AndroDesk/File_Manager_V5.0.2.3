.class public Lcom/android/fileexplorer/activity/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"


# static fields
.field private static CALLBACK:Lcom/android/fileexplorer/listener/permission/PermissionCallback; = null

.field public static final KEY_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final RC_REQUEST_PERMISSION:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 4
    return-void
.end method

.method public static request(Landroid/content/Context;[Ljava/lang/String;Lcom/android/fileexplorer/listener/permission/PermissionCallback;)V
    .registers 4

    .line 1
    sput-object p2, Lcom/android/fileexplorer/activity/RequestPermissionActivity;->CALLBACK:Lcom/android/fileexplorer/listener/permission/PermissionCallback;

    .line 3
    new-instance p2, Landroid/content/Intent;

    .line 5
    const-class v0, Lcom/android/fileexplorer/activity/RequestPermissionActivity;

    .line 7
    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    const-string v0, "permissions"

    .line 12
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const/high16 p1, 0x10000000

    .line 17
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    move-result-object p1

    .line 8
    const-string v0, "permissions"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    const/16 v0, 0x64

    .line 27
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/16 v0, 0x64

    if-eq p1, v0, :cond_5

    return-void

    .line 1
    :cond_5
    array-length p1, p2

    new-array p1, p1, [Z

    const/4 v0, 0x0

    .line 2
    :goto_9
    array-length v1, p2

    if-ge v0, v1, :cond_17

    .line 3
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4
    :cond_17
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/fileexplorer/activity/RequestPermissionActivity;->onRequestPermissionsResult([Ljava/lang/String;[I[Z)V

    return-void
.end method

.method public onRequestPermissionsResult([Ljava/lang/String;[I[Z)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_23

    .line 6
    aget v3, p2, v1

    if-eqz v3, :cond_1e

    .line 7
    aget-boolean v3, p3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    .line 8
    sget-object v3, Lcom/android/fileexplorer/activity/RequestPermissionActivity;->CALLBACK:Lcom/android/fileexplorer/listener/permission/PermissionCallback;

    aget-object v4, p1, v1

    invoke-interface {v3, v4}, Lcom/android/fileexplorer/listener/permission/PermissionCallback;->shouldShowRational(Ljava/lang/String;)V

    goto :goto_20

    .line 9
    :cond_16
    sget-object v3, Lcom/android/fileexplorer/activity/RequestPermissionActivity;->CALLBACK:Lcom/android/fileexplorer/listener/permission/PermissionCallback;

    aget-object v4, p1, v1

    invoke-interface {v3, v4}, Lcom/android/fileexplorer/listener/permission/PermissionCallback;->onPermissionReject(Ljava/lang/String;)V

    goto :goto_20

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_23
    if-ne v2, v0, :cond_2a

    .line 10
    sget-object p1, Lcom/android/fileexplorer/activity/RequestPermissionActivity;->CALLBACK:Lcom/android/fileexplorer/listener/permission/PermissionCallback;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/permission/PermissionCallback;->onPermissionGranted()V

    .line 11
    :cond_2a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
