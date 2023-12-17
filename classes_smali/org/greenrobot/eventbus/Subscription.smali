.class final Lorg/greenrobot/eventbus/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# instance fields
.field public volatile active:Z

.field public final subscriber:Ljava/lang/Object;

.field public final subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/greenrobot/eventbus/SubscriberMethod;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/Subscription;->active:Z

    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lorg/greenrobot/eventbus/Subscription;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_18

    .line 6
    check-cast p1, Lorg/greenrobot/eventbus/Subscription;

    .line 8
    iget-object v0, p0, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    .line 10
    iget-object v2, p1, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    .line 12
    if-ne v0, v2, :cond_18

    .line 14
    iget-object v0, p0, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 16
    iget-object p1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 18
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/SubscriberMethod;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_18

    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_18
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 9
    iget-object v1, v1, Lorg/greenrobot/eventbus/SubscriberMethod;->methodString:Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method
