.class Lcom/android/fileexplorer/PadMainActivityProxy$1;
.super Ljava/lang/Object;
.source "PadMainActivityProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/PadMainActivityProxy;->handleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/PadMainActivityProxy;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/PadMainActivityProxy;Landroid/content/Intent;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/PadMainActivityProxy$1;->this$0:Lcom/android/fileexplorer/PadMainActivityProxy;

    iput-object p2, p0, Lcom/android/fileexplorer/PadMainActivityProxy$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy$1;->this$0:Lcom/android/fileexplorer/PadMainActivityProxy;

    invoke-static {v0}, Lcom/android/fileexplorer/PadMainActivityProxy;->access$000(Lcom/android/fileexplorer/PadMainActivityProxy;)Lcom/android/fileexplorer/AppLayoutBaseFragment;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/fileexplorer/PadMainActivityProxy$1;->this$0:Lcom/android/fileexplorer/PadMainActivityProxy;

    invoke-static {v0}, Lcom/android/fileexplorer/PadMainActivityProxy;->access$000(Lcom/android/fileexplorer/PadMainActivityProxy;)Lcom/android/fileexplorer/AppLayoutBaseFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/PadMainActivityProxy$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/AppLayoutBaseFragment;->handleIntent(Landroid/content/Intent;)V

    :cond_13
    return-void
.end method
