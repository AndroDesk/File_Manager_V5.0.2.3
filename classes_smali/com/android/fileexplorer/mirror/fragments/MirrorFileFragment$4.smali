.class Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;
.super Ljava/lang/Object;
.source "MirrorFileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRightClick(FF)V
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;

    move-result-object v2

    move v3, v1

    :goto_19
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_2f

    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2b

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2e
    move v1, v2

    :cond_2f
    :goto_2f
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    move-result v2

    new-instance v3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v5, v4, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object v4, v4, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    new-instance v6, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;

    invoke-direct {v6, p0, v2, v1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;ZZLandroid/content/ClipboardManager;)V

    const/4 v0, -0x1

    invoke-direct {v3, v5, v4, v6, v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;I)V

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v3, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->show(II)V

    return-void
.end method
