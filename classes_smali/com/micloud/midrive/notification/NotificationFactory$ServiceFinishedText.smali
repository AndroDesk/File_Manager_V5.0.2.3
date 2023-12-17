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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/micloud/midrive/notification/NotificationFactory$ServiceFinishedText;->success:I

    iput p2, p0, Lcom/micloud/midrive/notification/NotificationFactory$ServiceFinishedText;->fail:I

    return-void
.end method


# virtual methods
.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget v0, p0, Lcom/micloud/midrive/notification/NotificationFactory$ServiceFinishedText;->success:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget v0, p0, Lcom/micloud/midrive/notification/NotificationFactory$ServiceFinishedText;->fail:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "sync finished, success: %d, fail: %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
