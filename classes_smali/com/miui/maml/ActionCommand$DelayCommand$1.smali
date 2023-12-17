.class Lcom/miui/maml/ActionCommand$DelayCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/ActionCommand$DelayCommand;-><init>(Lcom/miui/maml/ActionCommand;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/ActionCommand$DelayCommand;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ActionCommand$DelayCommand;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$DelayCommand$1;->this$0:Lcom/miui/maml/ActionCommand$DelayCommand;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$DelayCommand$1;->this$0:Lcom/miui/maml/ActionCommand$DelayCommand;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/ActionCommand$DelayCommand;->access$300(Lcom/miui/maml/ActionCommand$DelayCommand;)Lcom/miui/maml/ActionCommand;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->perform()V

    .line 10
    return-void
.end method
