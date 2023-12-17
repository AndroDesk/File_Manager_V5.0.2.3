.class Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCountWaitNetwork;
.super Ljava/lang/Object;
.source "SessionNotificationProxy.java"

# interfaces
.implements Lcom/micloud/midrive/notification/ContentText;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/session/SessionNotificationProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncingTitleWithCountWaitNetwork"
.end annotation


# instance fields
.field private final ongoing:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCountWaitNetwork;->ongoing:I

    .line 6
    return-void
.end method


# virtual methods
.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p0, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCountWaitNetwork;->ongoing:I

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 17
    const v2, 0x7f0f0026

    .line 20
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
