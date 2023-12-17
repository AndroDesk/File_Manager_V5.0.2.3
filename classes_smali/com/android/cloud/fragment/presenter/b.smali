.class public final synthetic Lcom/android/cloud/fragment/presenter/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll2/c;
.implements Lp0/d;
.implements Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;
.implements Lcom/android/fileexplorer/view/SearchEditText$EditTextClearCallBack;
.implements Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;
.implements Landroidx/lifecycle/r;
.implements Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;
.implements Lcom/android/fileexplorer/mirror/modecallback/MirrorFavoriteMultiCallback$OnFavRemoveListener;
.implements Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$QueryOpenCallback;
.implements Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;
.implements Lcom/micloud/midrive/helper/StatHelper$IStatParam$Builder;
.implements Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;
.implements Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;
.implements Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;
.implements Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/android/cloud/fragment/presenter/b;->a:I

    .line 3
    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public a(Lp0/e;ILandroid/os/Bundle;)Z
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/view/View;

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/16 v4, 0x19

    .line 11
    if-lt v1, v4, :cond_39

    .line 13
    and-int/2addr p2, v3

    .line 14
    if-eqz p2, :cond_39

    .line 16
    :try_start_f
    iget-object p2, p1, Lp0/e;->a:Lp0/e$c;

    .line 18
    invoke-interface {p2}, Lp0/e$c;->b()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_30

    .line 21
    iget-object p2, p1, Lp0/e;->a:Lp0/e$c;

    .line 23
    invoke-interface {p2}, Lp0/e$c;->e()Ljava/lang/Object;

    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Landroid/view/inputmethod/InputContentInfo;

    .line 29
    if-nez p3, :cond_24

    .line 31
    new-instance p3, Landroid/os/Bundle;

    .line 33
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 36
    goto :goto_2a

    .line 37
    :cond_24
    new-instance v4, Landroid/os/Bundle;

    .line 39
    invoke-direct {v4, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 42
    move-object p3, v4

    .line 43
    :goto_2a
    const-string v4, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    .line 45
    invoke-virtual {p3, v4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    goto :goto_39

    .line 49
    :catch_30
    move-exception p1

    .line 50
    const-string p2, "InputConnectionCompat"

    .line 52
    const-string p3, "Can\'t insert content from IME; requestPermission() failed"

    .line 54
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    goto :goto_76

    .line 58
    :cond_39
    :goto_39
    new-instance p2, Landroid/content/ClipData;

    .line 60
    iget-object v4, p1, Lp0/e;->a:Lp0/e$c;

    .line 62
    invoke-interface {v4}, Lp0/e$c;->d()Landroid/content/ClipDescription;

    .line 65
    move-result-object v4

    .line 66
    new-instance v5, Landroid/content/ClipData$Item;

    .line 68
    iget-object v6, p1, Lp0/e;->a:Lp0/e$c;

    .line 70
    invoke-interface {v6}, Lp0/e$c;->a()Landroid/net/Uri;

    .line 73
    move-result-object v6

    .line 74
    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 77
    invoke-direct {p2, v4, v5}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 80
    const/4 v4, 0x2

    .line 81
    const/16 v5, 0x1f

    .line 83
    if-lt v1, v5, :cond_5a

    .line 85
    new-instance v1, Lm0/c$a;

    .line 87
    invoke-direct {v1, p2, v4}, Lm0/c$a;-><init>(Landroid/content/ClipData;I)V

    .line 90
    goto :goto_5f

    .line 91
    :cond_5a
    new-instance v1, Lm0/c$c;

    .line 93
    invoke-direct {v1, p2, v4}, Lm0/c$c;-><init>(Landroid/content/ClipData;I)V

    .line 96
    :goto_5f
    iget-object p1, p1, Lp0/e;->a:Lp0/e$c;

    .line 98
    invoke-interface {p1}, Lp0/e$c;->c()Landroid/net/Uri;

    .line 101
    move-result-object p1

    .line 102
    invoke-interface {v1, p1}, Lm0/c$b;->a(Landroid/net/Uri;)V

    .line 105
    invoke-interface {v1, p3}, Lm0/c$b;->setExtras(Landroid/os/Bundle;)V

    .line 108
    invoke-interface {v1}, Lm0/c$b;->build()Lm0/c;

    .line 111
    move-result-object p1

    .line 112
    invoke-static {v0, p1}, Lm0/g0;->i(Landroid/view/View;Lm0/c;)Lm0/c;

    .line 115
    move-result-object p1

    .line 116
    if-nez p1, :cond_76

    .line 118
    move v2, v3

    .line 119
    :cond_76
    :goto_76
    return v2
.end method

.method public accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/cloud/fragment/presenter/b;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    check-cast p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->j(Ljava/util/List;Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    check-cast p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->g(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public build(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 3

    iget v0, p0, Lcom/android/cloud/fragment/presenter/b;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0xd
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/micloud/midrive/stat/TransferSessionResultStat;

    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->a(Lcom/micloud/midrive/stat/TransferSessionResultStat;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V

    return-void

    :pswitch_e  #0xc
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->a(Lcom/micloud/midrive/stat/SyncSessionResultStat;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V

    return-void

    :pswitch_16  #0xb
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/micloud/midrive/stat/FileOperationResultStat;

    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->a(Lcom/micloud/midrive/stat/FileOperationResultStat;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/micloud/midrive/stat/TransferTaskResultStat;

    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->a(Lcom/micloud/midrive/stat/TransferTaskResultStat;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V

    return-void

    :pswitch_data_26
    .packed-switch 0xb
        :pswitch_16  #0000000b
        :pswitch_e  #0000000c
        :pswitch_6  #0000000d
    .end packed-switch
.end method

.method public onAddClick()V
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->c(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Lm0/r0;Lmiuix/internal/util/ViewUtils$RelativePadding;)Lm0/r0;
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-static {v0, p1, p2, p3}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->a(Lmiuix/navigator/bottomnavigation/BottomNavigationView;Landroid/view/View;Lm0/r0;Lmiuix/internal/util/ViewUtils$RelativePadding;)Lm0/r0;

    move-result-object p1

    return-object p1
.end method

.method public onChanged(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/cloud/fragment/presenter/b;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x5
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->b(Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;Ljava/lang/Integer;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->a(Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x5
        :pswitch_6  #00000005
    .end packed-switch
.end method

.method public onClear()V
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->c(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    return-void
.end method

.method public onDismiss()V
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->b(Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;)V

    return-void
.end method

.method public onItemClick(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->g(Lcom/android/fileexplorer/activity/PrivateFolderActivity;I)V

    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/navigator/app/MiuixNavigatorImpl;

    invoke-static {v0, p1}, Lmiuix/navigator/app/MiuixNavigatorImpl;->l(Lmiuix/navigator/app/MiuixNavigatorImpl;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onProgress(JJ)V
    .registers 6

    iget v0, p0, Lcom/android/cloud/fragment/presenter/b;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x10
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/micloud/midrive/task/ForegroundDownloadTask;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/task/ForegroundDownloadTask;->a(Lcom/micloud/midrive/task/ForegroundDownloadTask;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void

    :pswitch_16  #0xf
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/micloud/midrive/task/DownloadTask;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/task/DownloadTask;->a(Lcom/micloud/midrive/task/DownloadTask;JJ)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/micloud/midrive/task/UploadTask;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/task/UploadTask;->a(Lcom/micloud/midrive/task/UploadTask;JJ)V

    return-void

    :pswitch_data_26
    .packed-switch 0xf
        :pswitch_16  #0000000f
        :pswitch_6  #00000010
    .end packed-switch
.end method

.method public onQueryResult(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->a(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Ljava/util/List;)V

    return-void
.end method

.method public onRemove(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->onFavoriteRemove(Ljava/util/List;)V

    return-void
.end method

.method public onSelectChange(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->a(Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;Ljava/util/List;)V

    return-void
.end method
