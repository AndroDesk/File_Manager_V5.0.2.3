.class public final synthetic Lcom/android/cloud/fragment/model/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Li2/g;
.implements Ll2/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .registers 4

    .line 1
    iput p3, p0, Lcom/android/cloud/fragment/model/c;->a:I

    .line 3
    iput-object p1, p0, Lcom/android/cloud/fragment/model/c;->c:Ljava/lang/Object;

    .line 5
    iput-boolean p2, p0, Lcom/android/cloud/fragment/model/c;->b:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/cloud/fragment/model/c;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/cloud/fragment/model/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    iget-boolean v1, p0, Lcom/android/cloud/fragment/model/c;->b:Z

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->c(Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;ZLjava/util/List;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/cloud/fragment/model/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    iget-boolean v1, p0, Lcom/android/cloud/fragment/model/c;->b:Z

    check-cast p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->a(Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;ZLcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method public final subscribe(Li2/f;)V
    .registers 4

    iget v0, p0, Lcom/android/cloud/fragment/model/c;->a:I

    packed-switch v0, :pswitch_data_24

    :pswitch_5  #0x1
    goto :goto_1a

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/cloud/fragment/model/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    iget-boolean v1, p0, Lcom/android/cloud/fragment/model/c;->b:Z

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->g(Lcom/android/fileexplorer/FileExplorerTabActivity;ZLi2/f;)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lcom/android/cloud/fragment/model/c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-boolean v1, p0, Lcom/android/cloud/fragment/model/c;->b:Z

    invoke-static {v0, v1, p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->c(Ljava/util/List;ZLi2/f;)V

    return-void

    :goto_1a
    iget-object v0, p0, Lcom/android/cloud/fragment/model/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    iget-boolean v1, p0, Lcom/android/cloud/fragment/model/c;->b:Z

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->a(Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;ZLi2/f;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_5  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
