.class public final Lorg/greenrobot/eventbus/NoSubscriberEvent;
.super Ljava/lang/Object;
.source "NoSubscriberEvent.java"


# instance fields
.field public final eventBus:Lorg/greenrobot/eventbus/EventBus;

.field public final originalEvent:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/eventbus/NoSubscriberEvent;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    iput-object p2, p0, Lorg/greenrobot/eventbus/NoSubscriberEvent;->originalEvent:Ljava/lang/Object;

    return-void
.end method