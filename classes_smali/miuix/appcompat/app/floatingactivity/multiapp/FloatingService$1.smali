.class Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;
.super Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub;
.source "FloatingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)V
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub;-><init>()V

    return-void
.end method

.method private parseIdentity(Ljava/lang/String;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    aget-object p1, p1, v1

    goto :goto_23

    :cond_14
    array-length v0, p1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_22

    aget-object v0, p1, v1

    :try_start_1a
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_20

    :catch_20
    move-object p1, v0

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$800(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;I)I

    move-result v0

    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public callServiceMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x6

    const-string v2, "key_task_id"

    const/4 v3, 0x0

    if-eq p1, v1, :cond_96

    const/4 v1, 0x7

    const-string v4, "key_request_identity"

    if-eq p1, v1, :cond_49

    const/16 v1, 0x9

    const/4 v5, 0x0

    if-eq p1, v1, :cond_33

    const/16 v1, 0xa

    if-eq p1, v1, :cond_20

    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {p2, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$500(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;I)V

    goto/16 :goto_a9

    :cond_20
    if-eqz p2, :cond_2c

    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v1, "execute_slide"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2c
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {p2, p1, v5, v3}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$400(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;ILjava/lang/String;I)V

    goto/16 :goto_a9

    :cond_33
    if-eqz p2, :cond_3d

    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3d
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {p2, p1, v5, v3}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$300(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;ILjava/lang/String;I)Z

    move-result p1

    const-string p2, "check_finishing"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_a9

    :cond_49
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {v2, p1, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$100(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_61
    if-ge v3, v1, :cond_8c

    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;

    const/16 v1, 0x8

    invoke-interface {p1, v1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;->notifyFromService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_8c

    :cond_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_8c
    :goto_8c
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_a9

    :cond_96
    if-eqz p2, :cond_9c

    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    :cond_9c
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {p2, v3}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$000(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_a9
    return-object v0
.end method

.method public registerServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)I
    .registers 6

    invoke-direct {p0, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->parseIdentity(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-nez v1, :cond_2d

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_30

    :cond_2d
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :goto_30
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p2

    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return p2
.end method

.method public unregisterServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->parseIdentity(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-eqz v1, :cond_30

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_30
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$700(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public upDateRemoteActivityInfo(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->parseIdentity(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$700(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
