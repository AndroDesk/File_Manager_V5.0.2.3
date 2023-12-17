.class Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;
.super Lcom/android/fileexplorer/adapter/recycle/listener/SimpleItemActionAdapter;
.source "PrivateFolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/PrivateFolderActivity;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/listener/SimpleItemActionAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$200(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_12

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$300(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(I)V

    .line 18
    goto :goto_17

    .line 19
    :cond_12
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    .line 21
    invoke-static {p1, p2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$400(Lcom/android/fileexplorer/activity/PrivateFolderActivity;I)V

    .line 24
    :goto_17
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 4

    .line 1
    const-string p1, "onItemLongClick isEditMode = "

    .line 3
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    .line 9
    invoke-static {v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$200(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Z

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const-string v0, "PrivateFolderActivity"

    .line 22
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    .line 27
    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$200(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Z

    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_2f

    .line 33
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    .line 35
    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$300(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    .line 41
    invoke-static {v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$300(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;I)V

    .line 48
    :cond_2f
    const/4 p1, 0x1

    .line 49
    return p1
.end method
