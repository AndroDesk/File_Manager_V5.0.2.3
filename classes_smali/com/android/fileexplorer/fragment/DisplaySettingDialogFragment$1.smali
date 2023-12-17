.class Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$1;
.super Ljava/lang/Object;
.source "DisplaySettingDialogFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$1;->this$0:Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$1;->this$0:Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->access$000(Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;)Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->onRadioChange(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$1;->this$0:Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->access$100(Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;II)V

    return-void
.end method

.method public onSpinnerItemSelected(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$1;->this$0:Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->access$100(Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;II)V

    if-ltz p1, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$1;->this$0:Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->access$200(Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->setSpinnerSelectedPos(I)V

    :cond_16
    return-void
.end method
