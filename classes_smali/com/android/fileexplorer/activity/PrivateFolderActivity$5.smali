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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/listener/SimpleItemActionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$200(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$300(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(I)V

    goto :goto_17

    :cond_12
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$400(Lcom/android/fileexplorer/activity/PrivateFolderActivity;I)V

    :goto_17
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 4

    const-string p1, "onItemLongClick isEditMode = "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$200(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrivateFolderActivity"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$200(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Z

    move-result p1

    if-nez p1, :cond_2f

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$300(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$300(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;I)V

    :cond_2f
    const/4 p1, 0x1

    return p1
.end method
