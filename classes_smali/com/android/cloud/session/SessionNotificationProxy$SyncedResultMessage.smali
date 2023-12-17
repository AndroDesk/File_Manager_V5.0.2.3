.class Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultMessage;
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
    name = "SyncedResultMessage"
.end annotation


# instance fields
.field private final fail:I

.field private final success:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultMessage;->success:I

    .line 6
    iput p2, p0, Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultMessage;->fail:I

    .line 8
    return-void
.end method


# virtual methods
.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v1

    .line 10
    iget v2, p0, Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultMessage;->success:I

    .line 12
    const/4 v3, 0x1

    .line 13
    new-array v4, v3, [Ljava/lang/Object;

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v5

    .line 19
    const/4 v6, 0x0

    .line 20
    aput-object v5, v4, v6

    .line 22
    const v5, 0x7f0f0025

    .line 25
    invoke-virtual {v1, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object p1

    .line 36
    iget v1, p0, Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultMessage;->fail:I

    .line 38
    new-array v2, v3, [Ljava/lang/Object;

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v3

    .line 44
    aput-object v3, v2, v6

    .line 46
    const v3, 0x7f0f0024

    .line 49
    invoke-virtual {p1, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method
