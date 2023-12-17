.class public Lcom/android/fileexplorer/activity/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"


# static fields
.field private static CALLBACK:Lcom/android/fileexplorer/listener/permission/PermissionCallback; = null

.field public static final KEY_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final RC_REQUEST_PERMISSION:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92df2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/activity/RequestPermissionActivity;->RC_REQUEST_PERMISSION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static request(Landroid/content/Context;[Ljava/lang/String;Lcom/android/fileexplorer/listener/permission/PermissionCallback;)V
    .registers 4

    sput-object p2, Lcom/android/fileexplorer/activity/RequestPermissionActivity;->CALLBACK:Lcom/android/fileexplorer/listener/permission/PermissionCallback;

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/android/fileexplorer/activity/RequestPermissionActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "permissions"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "permissions"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    return-void

    :cond_10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

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

    :cond_5
    array-length p1, p2

    new-array p1, p1, [Z

    const/4 v0, 0x0

    :goto_9
    array-length v1, p2

    if-ge v0, v1, :cond_17

    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/fileexplorer/activity/RequestPermissionActivity;->onRequestPermissionsResult([Ljava/lang/String;[I[Z)V

    return-void
.end method

.method public onRequestPermissionsResult([Ljava/lang/String;[I[Z)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_23

    aget v3, p2, v1

    if-eqz v3, :cond_1e

    aget-boolean v3, p3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    sget-object v3, Lcom/android/fileexplorer/activity/RequestPermissionActivity;->CALLBACK:Lcom/android/fileexplorer/listener/permission/PermissionCallback;

    aget-object v4, p1, v1

    invoke-interface {v3, v4}, Lcom/android/fileexplorer/listener/permission/PermissionCallback;->shouldShowRational(Ljava/lang/String;)V

    goto :goto_20

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

    sget-object p1, Lcom/android/fileexplorer/activity/RequestPermissionActivity;->CALLBACK:Lcom/android/fileexplorer/listener/permission/PermissionCallback;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/permission/PermissionCallback;->onPermissionGranted()V

    :cond_2a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
