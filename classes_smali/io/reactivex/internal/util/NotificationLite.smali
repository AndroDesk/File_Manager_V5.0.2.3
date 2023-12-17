.class public final enum Lio/reactivex/internal/util/NotificationLite;
.super Ljava/lang/Enum;
.source "NotificationLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/util/NotificationLite$DisposableNotification;,
        Lio/reactivex/internal/util/NotificationLite$SubscriptionNotification;,
        Lio/reactivex/internal/util/NotificationLite$ErrorNotification;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/util/NotificationLite;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMPLETE:Lio/reactivex/internal/util/NotificationLite;

.field public static final synthetic a:[Lio/reactivex/internal/util/NotificationLite;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/reactivex/internal/util/NotificationLite;

    .line 3
    invoke-direct {v0}, Lio/reactivex/internal/util/NotificationLite;-><init>()V

    .line 6
    sput-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v1, v1, [Lio/reactivex/internal/util/NotificationLite;

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v0, v1, v2

    .line 14
    sput-object v1, Lio/reactivex/internal/util/NotificationLite;->a:[Lio/reactivex/internal/util/NotificationLite;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    const-string v0, "COMPLETE"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    return-void
.end method

.method public static accept(Ljava/lang/Object;Li2/h;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Li2/h<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 6
    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_9

    .line 7
    invoke-interface {p1}, Li2/h;->onComplete()V

    return v1

    .line 8
    :cond_9
    instance-of v0, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    if-eqz v0, :cond_15

    .line 9
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;->e:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Li2/h;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 10
    :cond_15
    invoke-interface {p1, p0}, Li2/h;->onNext(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static accept(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_9

    .line 2
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return v1

    .line 3
    :cond_9
    instance-of v0, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    if-eqz v0, :cond_15

    .line 4
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;->e:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 5
    :cond_15
    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static acceptFull(Ljava/lang/Object;Li2/h;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Li2/h<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 8
    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_9

    .line 9
    invoke-interface {p1}, Li2/h;->onComplete()V

    return v1

    .line 10
    :cond_9
    instance-of v0, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    if-eqz v0, :cond_15

    .line 11
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;->e:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Li2/h;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 12
    :cond_15
    instance-of v0, p0, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 13
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;

    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;->d:Lk2/b;

    invoke-interface {p1, p0}, Li2/h;->onSubscribe(Lk2/b;)V

    return v1

    .line 14
    :cond_22
    invoke-interface {p1, p0}, Li2/h;->onNext(Ljava/lang/Object;)V

    return v1
.end method

.method public static acceptFull(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_9

    .line 2
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return v1

    .line 3
    :cond_9
    instance-of v0, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    if-eqz v0, :cond_15

    .line 4
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;->e:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 5
    :cond_15
    instance-of v0, p0, Lio/reactivex/internal/util/NotificationLite$SubscriptionNotification;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 6
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$SubscriptionNotification;

    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$SubscriptionNotification;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    return v1

    .line 7
    :cond_22
    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return v1
.end method

.method public static complete()Ljava/lang/Object;
    .registers 1

    .line 1
    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    .line 3
    return-object v0
.end method

.method public static disposable(Lk2/b;)Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;

    .line 3
    invoke-direct {v0, p0}, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;-><init>(Lk2/b;)V

    .line 6
    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    .line 3
    invoke-direct {v0, p0}, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;-><init>(Ljava/lang/Throwable;)V

    .line 6
    return-object v0
.end method

.method public static getDisposable(Ljava/lang/Object;)Lk2/b;
    .registers 1

    .line 1
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;

    .line 3
    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;->d:Lk2/b;

    .line 5
    return-object p0
.end method

.method public static getError(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 1

    .line 1
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    .line 3
    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;->e:Ljava/lang/Throwable;

    .line 5
    return-object p0
.end method

.method public static getSubscription(Ljava/lang/Object;)Lorg/reactivestreams/Subscription;
    .registers 1

    .line 1
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$SubscriptionNotification;

    .line 3
    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$SubscriptionNotification;->s:Lorg/reactivestreams/Subscription;

    .line 5
    return-object p0
.end method

.method public static getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p0
.end method

.method public static isComplete(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    .line 3
    if-ne p0, v0, :cond_6

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p0, 0x0

    .line 8
    :goto_7
    return p0
.end method

.method public static isDisposable(Ljava/lang/Object;)Z
    .registers 1

    .line 1
    instance-of p0, p0, Lio/reactivex/internal/util/NotificationLite$DisposableNotification;

    .line 3
    return p0
.end method

.method public static isError(Ljava/lang/Object;)Z
    .registers 1

    .line 1
    instance-of p0, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    .line 3
    return p0
.end method

.method public static isSubscription(Ljava/lang/Object;)Z
    .registers 1

    .line 1
    instance-of p0, p0, Lio/reactivex/internal/util/NotificationLite$SubscriptionNotification;

    .line 3
    return p0
.end method

.method public static next(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p0
.end method

.method public static subscription(Lorg/reactivestreams/Subscription;)Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lio/reactivex/internal/util/NotificationLite$SubscriptionNotification;

    .line 3
    invoke-direct {v0, p0}, Lio/reactivex/internal/util/NotificationLite$SubscriptionNotification;-><init>(Lorg/reactivestreams/Subscription;)V

    .line 6
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/util/NotificationLite;
    .registers 2

    .line 1
    const-class v0, Lio/reactivex/internal/util/NotificationLite;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/reactivex/internal/util/NotificationLite;

    .line 9
    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/util/NotificationLite;
    .registers 1

    .line 1
    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->a:[Lio/reactivex/internal/util/NotificationLite;

    .line 3
    invoke-virtual {v0}, [Lio/reactivex/internal/util/NotificationLite;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/reactivex/internal/util/NotificationLite;

    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "NotificationLite.Complete"

    return-object v0
.end method
