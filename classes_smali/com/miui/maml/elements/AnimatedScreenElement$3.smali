.class Lcom/miui/maml/elements/AnimatedScreenElement$3;
.super Ljava/lang/Object;
.source "AnimatedScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/AnimatedScreenElement;->folmeFromTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

.field public final synthetic val$configName:Ljava/lang/String;

.field public final synthetic val$fromStateName:Ljava/lang/String;

.field public final synthetic val$toStateName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 3
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$fromStateName:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$toStateName:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$configName:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$fromStateName:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$toStateName:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$configName:Ljava/lang/String;

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/miui/maml/elements/AnimatedScreenElement;->access$200(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method
