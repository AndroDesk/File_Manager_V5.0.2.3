.class final Lorg/greenrobot/eventbus/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# instance fields
.field public volatile active:Z

.field public final subscriber:Ljava/lang/Object;

.field public final subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/greenrobot/eventbus/SubscriberMethod;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    iput-object p2, p0, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/greenrobot/eventbus/Subscription;->active:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/greenrobot/eventbus/Subscription;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    check-cast p1, Lorg/greenrobot/eventbus/Subscription;

    iget-object v0, p0, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    iget-object v2, p1, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    if-ne v0, v2, :cond_18

    iget-object v0, p0, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object p1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/SubscriberMethod;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object v1, v1, Lorg/greenrobot/eventbus/SubscriberMethod;->methodString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
