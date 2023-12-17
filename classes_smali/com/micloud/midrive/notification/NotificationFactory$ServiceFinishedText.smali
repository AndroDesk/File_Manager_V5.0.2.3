.class public Lcom/micloud/midrive/notification/NotificationFactory$ServiceFinishedText;
.super Ljava/lang/Object;
.source "NotificationFactory.java"

# interfaces
.implements Lcom/micloud/midrive/notification/ContentText;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/notification/NotificationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceFinishedText"
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
    iput p1, p0, Lcom/micloud/midrive/notification/NotificationFactory$ServiceFinishedText;->success:I

    .line 6
    iput p2, p0, Lcom/micloud/midrive/notification/NotificationFactory$ServiceFinishedText;->fail:I

    .line 8
    return-void
.end method


# virtual methods
.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 p1, 0x2

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    iget v0, p0, Lcom/micloud/midrive/notification/NotificationFactory$ServiceFinishedText;->success:I

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    aput-object v0, p1, v1

    .line 13
    iget v0, p0, Lcom/micloud/midrive/notification/NotificationFactory$ServiceFinishedText;->fail:I

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    aput-object v0, p1, v1

    .line 22
    const-string v0, "sync finished, success: %d, fail: %d"

    .line 24
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method
