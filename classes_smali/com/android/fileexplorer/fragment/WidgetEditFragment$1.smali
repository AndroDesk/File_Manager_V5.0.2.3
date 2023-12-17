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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment$1;->this$0:Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment$1;->this$0:Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->access$000(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment$1;->this$0:Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->access$100(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->getDataList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment$1;->this$0:Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->dropDataAndTryAddNewFiles(Ljava/util/List;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment$1;->this$0:Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
