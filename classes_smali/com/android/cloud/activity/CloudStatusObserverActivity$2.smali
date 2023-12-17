.class Lcom/android/cloud/activity/CloudStatusObserverActivity$2;
.super Ljava/lang/Object;
.source "CloudStatusObserverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/activity/CloudStatusObserverActivity;->postSuccessQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

.field public final synthetic val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 3

    iput-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$2;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    iput-object p2, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$2;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$2;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    iget-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$2;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0, v1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->access$400(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    return-void
.end method
