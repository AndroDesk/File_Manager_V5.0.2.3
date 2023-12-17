.class Lcom/android/fileexplorer/fragment/WidgetEditFragment$1;
.super Ljava/lang/Object;
.source "WidgetEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/WidgetEditFragment;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/WidgetEditFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment$1;->this$0:Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment$1;->this$0:Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->access$000(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment$1;->this$0:Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    .line 8
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->access$100(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->getDataList()Ljava/util/List;

    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment$1;->this$0:Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->dropDataAndTryAddNewFiles(Ljava/util/List;Landroid/content/Context;)V

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment$1;->this$0:Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 34
    return-void
.end method
