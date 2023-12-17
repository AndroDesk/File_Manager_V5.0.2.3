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
.method public constructor <init>(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub;-><init>()V

    .line 6
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

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_22

    .line 8
    const-string v0, ":"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    array-length v0, p1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v0, v2, :cond_14

    .line 18
    aget-object p1, p1, v1

    .line 20
    goto :goto_23

    .line 21
    :cond_14
    array-length v0, p1

    .line 22
    const/4 v3, 0x2

    .line 23
    if-lt v0, v3, :cond_22

    .line 25
    aget-object v0, p1, v1

    .line 27
    :try_start_1a
    aget-object p1, p1, v2

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    move-result v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_20

    .line 33
    :catch_20
    move-object p1, v0

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    :goto_23
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 38
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$800(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;I)I

    .line 41
    move-result v0

    .line 42
    new-instance v1, Landroid/util/Pair;

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public callServiceMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const/4 v1, 0x6

    .line 7
    const-string v2, "key_task_id"

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq p1, v1, :cond_96

    .line 12
    const/4 v1, 0x7

    .line 13
    const-string v4, "key_request_identity"

    .line 15
    if-eq p1, v1, :cond_49

    .line 17
    const/16 v1, 0x9

    .line 19
    const/4 v5, 0x0

    .line 20
    if-eq p1, v1, :cond_33

    .line 22
    const/16 v1, 0xa

    .line 24
    if-eq p1, v1, :cond_20

    .line 26
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 28
    invoke-static {p2, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$500(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;I)V

    .line 31
    goto/16 :goto_a9

    .line 33
    :cond_20
    if-eqz p2, :cond_2c

    .line 35
    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 38
    move-result v3

    .line 39
    const-string v1, "execute_slide"

    .line 41
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v5

    .line 45
    :cond_2c
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 47
    invoke-static {p2, p1, v5, v3}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$400(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;ILjava/lang/String;I)V

    .line 50
    goto/16 :goto_a9

    .line 52
    :cond_33
    if-eqz p2, :cond_3d

    .line 54
    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 57
    move-result v3

    .line 58
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v5

    .line 62
    :cond_3d
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 64
    invoke-static {p2, p1, v5, v3}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$300(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;ILjava/lang/String;I)Z

    .line 67
    move-result p1

    .line 68
    const-string p2, "check_finishing"

    .line 70
    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    goto :goto_a9

    .line 74
    :cond_49
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 81
    move-result v1

    .line 82
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 84
    invoke-static {v2, p1, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$100(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;Ljava/lang/String;I)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 90
    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 97
    move-result v1

    .line 98
    :goto_61
    if-ge v3, v1, :cond_8c

    .line 100
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 102
    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_89

    .line 120
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 122
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;

    .line 132
    const/16 v1, 0x8

    .line 134
    invoke-interface {p1, v1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;->notifyFromService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 137
    goto :goto_8c

    .line 138
    :cond_89
    add-int/lit8 v3, v3, 0x1

    .line 140
    goto :goto_61

    .line 141
    :cond_8c
    :goto_8c
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 143
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 150
    goto :goto_a9

    .line 151
    :cond_96
    if-eqz p2, :cond_9c

    .line 153
    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 156
    move-result v3

    .line 157
    :cond_9c
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 163
    invoke-static {p2, v3}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$000(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;I)I

    .line 166
    move-result p2

    .line 167
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 170
    :goto_a9
    return-object v0
.end method

.method public registerServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)I
    .registers 6

    .line 1
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->parseIdentity(Ljava/lang/String;)Landroid/util/Pair;

    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 9
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p2

    .line 17
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 19
    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/util/SparseArray;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/LinkedList;

    .line 29
    if-nez v1, :cond_2d

    .line 31
    new-instance v1, Ljava/util/LinkedList;

    .line 33
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 36
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 38
    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/util/SparseArray;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    goto :goto_30

    .line 46
    :cond_2d
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 49
    :goto_30
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 51
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 58
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 60
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 67
    move-result p2

    .line 68
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 70
    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    return p2
.end method

.method public unregisterServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->parseIdentity(Ljava/lang/String;)Landroid/util/Pair;

    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 9
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p2

    .line 17
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 19
    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/util/SparseArray;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/LinkedList;

    .line 29
    if-eqz v1, :cond_30

    .line 31
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_30

    .line 40
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 42
    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/util/SparseArray;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 49
    :cond_30
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 51
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Landroid/os/RemoteCallbackList;

    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 58
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 60
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$700(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public upDateRemoteActivityInfo(Ljava/lang/String;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->parseIdentity(Ljava/lang/String;)Landroid/util/Pair;

    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    .line 11
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;->access$700(Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method
