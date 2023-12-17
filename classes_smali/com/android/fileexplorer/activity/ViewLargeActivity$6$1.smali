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
.method public constructor <init>(Lcom/android/fileexplorer/activity/ViewLargeActivity$6;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_65

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    .line 13
    iget-object v0, v0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 15
    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_65

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    .line 27
    iget-object v0, v0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 29
    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    .line 39
    iget-object v1, v1, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 41
    invoke-static {v1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$200(Lcom/android/fileexplorer/activity/ViewLargeActivity;)I

    .line 44
    move-result v1

    .line 45
    if-le v0, v1, :cond_65

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    .line 49
    iget-object v0, v0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 51
    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    .line 57
    iget-object v2, v2, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 59
    invoke-static {v2}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$200(Lcom/android/fileexplorer/activity/ViewLargeActivity;)I

    .line 62
    move-result v2

    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/android/fileexplorer/model/FileWithExt;

    .line 69
    const/4 v2, 0x1

    .line 70
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$1100(Lcom/android/fileexplorer/activity/ViewLargeActivity;Lcom/android/fileexplorer/model/FileWithExt;Z)V

    .line 73
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    .line 75
    iget-object v0, v0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 77
    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    .line 83
    iget-object v1, v1, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 85
    invoke-static {v1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$200(Lcom/android/fileexplorer/activity/ViewLargeActivity;)I

    .line 88
    move-result v1

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lcom/android/fileexplorer/model/FileWithExt;

    .line 95
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    .line 102
    :cond_65
    return-void
.end method
