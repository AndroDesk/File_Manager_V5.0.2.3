.class Lorg/greenrobot/eventbus/util/AsyncExecutor$1;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/eventbus/util/AsyncExecutor;->execute(Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/greenrobot/eventbus/util/AsyncExecutor;

.field public final synthetic val$runnable:Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;


# direct methods
.method public constructor <init>(Lorg/greenrobot/eventbus/util/AsyncExecutor;Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;->this$0:Lorg/greenrobot/eventbus/util/AsyncExecutor;

    .line 3
    iput-object p2, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;->val$runnable:Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;->val$runnable:Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;

    .line 3
    invoke-interface {v0}, Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 6
    goto :goto_30

    .line 7
    :catch_6
    move-exception v0

    .line 8
    :try_start_7
    iget-object v1, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;->this$0:Lorg/greenrobot/eventbus/util/AsyncExecutor;

    .line 10
    invoke-static {v1}, Lorg/greenrobot/eventbus/util/AsyncExecutor;->access$200(Lorg/greenrobot/eventbus/util/AsyncExecutor;)Ljava/lang/reflect/Constructor;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v0, v2, v3

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_31

    .line 24
    instance-of v1, v0, Lorg/greenrobot/eventbus/util/HasExecutionScope;

    .line 26
    if-eqz v1, :cond_27

    .line 28
    move-object v1, v0

    .line 29
    check-cast v1, Lorg/greenrobot/eventbus/util/HasExecutionScope;

    .line 31
    iget-object v2, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;->this$0:Lorg/greenrobot/eventbus/util/AsyncExecutor;

    .line 33
    invoke-static {v2}, Lorg/greenrobot/eventbus/util/AsyncExecutor;->access$400(Lorg/greenrobot/eventbus/util/AsyncExecutor;)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v1, v2}, Lorg/greenrobot/eventbus/util/HasExecutionScope;->setExecutionScope(Ljava/lang/Object;)V

    .line 40
    :cond_27
    iget-object v1, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;->this$0:Lorg/greenrobot/eventbus/util/AsyncExecutor;

    .line 42
    invoke-static {v1}, Lorg/greenrobot/eventbus/util/AsyncExecutor;->access$300(Lorg/greenrobot/eventbus/util/AsyncExecutor;)Lorg/greenrobot/eventbus/EventBus;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 49
    :goto_30
    return-void

    .line 50
    :catch_31
    move-exception v1

    .line 51
    iget-object v2, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;->this$0:Lorg/greenrobot/eventbus/util/AsyncExecutor;

    .line 53
    invoke-static {v2}, Lorg/greenrobot/eventbus/util/AsyncExecutor;->access$300(Lorg/greenrobot/eventbus/util/AsyncExecutor;)Lorg/greenrobot/eventbus/EventBus;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lorg/greenrobot/eventbus/EventBus;->getLogger()Lorg/greenrobot/eventbus/Logger;

    .line 60
    move-result-object v2

    .line 61
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 63
    const-string v4, "Original exception:"

    .line 65
    invoke-interface {v2, v3, v4, v0}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    .line 70
    const-string v2, "Could not create failure event"

    .line 72
    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    throw v0
.end method
