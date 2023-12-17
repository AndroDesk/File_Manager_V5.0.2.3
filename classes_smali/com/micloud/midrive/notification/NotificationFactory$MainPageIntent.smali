.class public Lcom/micloud/midrive/notification/NotificationFactory$MainPageIntent;
.super Ljava/lang/Object;
.source "NotificationFactory.java"

# interfaces
.implements Lcom/micloud/midrive/notification/ContentIntent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/notification/NotificationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainPageIntent"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .registers 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string v1, "extraTabName"

    .line 8
    const-string v2, "cloud"

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v1, "com.android.fileexplorer.export.VIEW_HOME"

    .line 15
    invoke-static {p1, v1, v0, p2}, Lcom/micloud/midrive/notification/NotificationFactory;->getSingleClearTopActivityPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/app/PendingIntent;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
