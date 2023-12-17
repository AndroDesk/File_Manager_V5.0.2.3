.class Lcom/miui/maml/ScreenElementRoot$3;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/ScreenElementRoot;

.field public final synthetic val$command:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$3;->this$0:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    iput-object p2, p0, Lcom/miui/maml/ScreenElementRoot$3;->val$command:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$3;->this$0:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/ScreenElementRoot;->access$200(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/CommandTriggers;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot$3;->val$command:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Lcom/miui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 12
    goto :goto_19

    .line 13
    :catch_c
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    const-string v2, "ScreenElementRoot"

    .line 20
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    :goto_19
    return-void
.end method
