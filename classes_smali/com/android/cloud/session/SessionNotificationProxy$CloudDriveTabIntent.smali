.class Lcom/android/cloud/session/SessionNotificationProxy$CloudDriveTabIntent;
.super Ljava/lang/Object;
.source "SessionNotificationProxy.java"

# interfaces
.implements Lcom/micloud/midrive/notification/ContentIntent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/session/SessionNotificationProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudDriveTabIntent"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/session/SessionNotificationProxy$CloudDriveTabIntent;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public createPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.android.fileexplorer.export.VIEW_HOME"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "extraTabName"

    .line 10
    const-string v2, "cloud"

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const/high16 v1, 0x34000000

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    const/high16 v1, 0x14000000

    .line 22
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method
