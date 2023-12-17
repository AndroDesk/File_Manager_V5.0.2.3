.class public Lcom/miui/maml/util/CustomUtils;
.super Ljava/lang/Object;
.source "CustomUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static replaceCameraIntentInfoOnF3M(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5

    .line 1
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 3
    const-string v1, "vela"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_39

    .line 11
    if-eqz p2, :cond_39

    .line 13
    const-string v0, "com.android.camera"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_39

    .line 21
    const-string p0, "com.android.camera.Camera"

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_39

    .line 29
    new-instance p0, Landroid/content/ComponentName;

    .line 31
    const-string p1, "com.mlab.cam"

    .line 33
    const-string v0, "com.mtlab.camera.CameraActivity"

    .line 35
    invoke-direct {p0, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    const-string p1, "android.intent.action.MAIN"

    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_39

    .line 53
    const-string p0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 55
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_39
    return-void
.end method
