.class Lcom/android/cloud/activity/CloudStatusObserverActivity$1;
.super Ljava/lang/Object;
.source "CloudStatusObserverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/activity/CloudStatusObserverActivity;->postInWorkQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

.field public final synthetic val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;


# direct methods
.method public constructor <init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$1;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    .line 3
    iput-object p2, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$1;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$1;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    .line 3
    iget-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$1;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, v1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->access$300(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 8
    return-void
.end method
