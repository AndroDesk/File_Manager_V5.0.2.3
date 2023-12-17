.class public Lcom/google/firebase/heartbeatinfo/HeartBeatConsumerComponent;
.super Ljava/lang/Object;
.source "HeartBeatConsumerComponent.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/firebase/components/Component;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/heartbeatinfo/HeartBeatConsumerComponent$1;

    .line 3
    invoke-direct {v0}, Lcom/google/firebase/heartbeatinfo/HeartBeatConsumerComponent$1;-><init>()V

    .line 6
    const-class v1, Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;

    .line 8
    invoke-static {v0, v1}, Lcom/google/firebase/components/Component;->intoSet(Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
