.class Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;
.super Ljava/lang/Object;
.source "ViewLargeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/ViewLargeActivity$6;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    iget-object v0, v0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    iget-object v0, v0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_65

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    iget-object v0, v0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    iget-object v1, v1, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$200(Lcom/android/fileexplorer/activity/ViewLargeActivity;)I

    move-result v1

    if-le v0, v1, :cond_65

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    iget-object v0, v0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    iget-object v2, v2, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v2}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$200(Lcom/android/fileexplorer/activity/ViewLargeActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileWithExt;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$1100(Lcom/android/fileexplorer/activity/ViewLargeActivity;Lcom/android/fileexplorer/model/FileWithExt;Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    iget-object v0, v0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    iget-object v1, v1, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$200(Lcom/android/fileexplorer/activity/ViewLargeActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    :cond_65
    return-void
.end method
