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
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onRightClick(FF)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2f

    .line 15
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2e

    .line 21
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;

    .line 24
    move-result-object v2

    .line 25
    move v3, v1

    .line 26
    :goto_19
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    .line 29
    move-result v4

    .line 30
    if-ge v3, v4, :cond_2f

    .line 32
    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_2b

    .line 42
    const/4 v1, 0x1

    .line 43
    goto :goto_2f

    .line 44
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_19

    .line 47
    :cond_2e
    move v1, v2

    .line 48
    :cond_2f
    :goto_2f
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    .line 55
    move-result v2

    .line 56
    new-instance v3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 58
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 60
    iget-object v5, v4, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 62
    iget-object v4, v4, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 64
    new-instance v6, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;

    .line 66
    invoke-direct {v6, p0, v2, v1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;ZZLandroid/content/ClipboardManager;)V

    .line 69
    const/4 v0, -0x1

    .line 70
    invoke-direct {v3, v5, v4, v6, v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;I)V

    .line 73
    float-to-int p1, p1

    .line 74
    float-to-int p2, p2

    .line 75
    invoke-virtual {v3, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->show(II)V

    .line 78
    return-void
.end method
