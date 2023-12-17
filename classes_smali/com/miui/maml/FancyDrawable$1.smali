.class Lcom/miui/maml/FancyDrawable$1;
.super Ljava/lang/Object;
.source "FancyDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/FancyDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/FancyDrawable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/FancyDrawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/FancyDrawable$1;->this$0:Lcom/miui/maml/FancyDrawable;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable$1;->this$0:Lcom/miui/maml/FancyDrawable;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/miui/maml/FancyDrawable;->access$002(Lcom/miui/maml/FancyDrawable;Z)Z

    .line 7
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable$1;->this$0:Lcom/miui/maml/FancyDrawable;

    .line 9
    invoke-static {v0}, Lcom/miui/maml/FancyDrawable;->access$100(Lcom/miui/maml/FancyDrawable;)V

    .line 12
    return-void
.end method
