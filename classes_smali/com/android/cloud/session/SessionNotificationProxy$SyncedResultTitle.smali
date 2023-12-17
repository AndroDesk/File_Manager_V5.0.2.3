.class Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultTitle;
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
    name = "SyncedResultTitle"
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
    invoke-direct {p0}, Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultTitle;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    const v0, 0x7f1102de

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method
