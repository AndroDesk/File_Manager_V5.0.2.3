.class Lcom/android/fileexplorer/activity/PrivateFolderActivity$3;
.super Ljava/lang/Object;
.source "PrivateFolderActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/PrivateFolderActivity;->initView()V
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

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$3;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeActive()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$3;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$100(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/view/EmptyView;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$3;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$100(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/view/EmptyView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->deActiveState()V

    :cond_11
    return-void
.end method

.method public onReverse()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$3;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$100(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/view/EmptyView;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$3;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$100(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/view/EmptyView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->toggleActive()V

    :cond_11
    return-void
.end method
