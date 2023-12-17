.class Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCount;
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
    name = "SyncingTitleWithCount"
.end annotation


# instance fields
.field private final ongoing:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCount;->ongoing:I

    .line 6
    return-void
.end method


# virtual methods
.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCount;->ongoing:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const v1, 0x7f1102e0

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method
