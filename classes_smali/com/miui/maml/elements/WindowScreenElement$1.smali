.class Lcom/miui/maml/elements/WindowScreenElement$1;
.super Ljava/lang/Object;
.source "WindowScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/WindowScreenElement;->onVisibilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/WindowScreenElement;

.field public final synthetic val$_v:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/WindowScreenElement;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement$1;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 3
    iput-boolean p2, p0, Lcom/miui/maml/elements/WindowScreenElement$1;->val$_v:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/WindowScreenElement$1;->val$_v:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$1;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 7
    invoke-static {v0}, Lcom/miui/maml/elements/WindowScreenElement;->access$000(Lcom/miui/maml/elements/WindowScreenElement;)V

    .line 10
    goto :goto_f

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$1;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 13
    invoke-static {v0}, Lcom/miui/maml/elements/WindowScreenElement;->access$100(Lcom/miui/maml/elements/WindowScreenElement;)V

    .line 16
    :goto_f
    return-void
.end method
