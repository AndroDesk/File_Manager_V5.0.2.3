.class Lcom/miui/maml/RenderUpdater$2;
.super Ljava/lang/Object;
.source "RenderUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/RenderUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/RenderUpdater;


# direct methods
.method public constructor <init>(Lcom/miui/maml/RenderUpdater;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/RenderUpdater$2;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater$2;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/RenderUpdater;->access$500(Lcom/miui/maml/RenderUpdater;)V

    .line 6
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater$2;->this$0:Lcom/miui/maml/RenderUpdater;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lcom/miui/maml/RenderUpdater;->access$602(Lcom/miui/maml/RenderUpdater;Z)Z

    .line 12
    return-void
.end method
