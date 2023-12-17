.class public final synthetic Lcom/android/cloud/fragment/presenter/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

.field public final synthetic c:Lcom/android/fileexplorer/model/FileInfo;

.field public final synthetic d:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic e:Lcom/micloud/midrive/infos/ErrInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;I)V
    .registers 6

    iput p5, p0, Lcom/android/cloud/fragment/presenter/g;->a:I

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/g;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/g;->c:Lcom/android/fileexplorer/model/FileInfo;

    iput-object p3, p0, Lcom/android/cloud/fragment/presenter/g;->d:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p4, p0, Lcom/android/cloud/fragment/presenter/g;->e:Lcom/micloud/midrive/infos/ErrInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 14

    iget v0, p0, Lcom/android/cloud/fragment/presenter/g;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_14

    :pswitch_6  #0x0
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/g;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object v2, p0, Lcom/android/cloud/fragment/presenter/g;->c:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v3, p0, Lcom/android/cloud/fragment/presenter/g;->d:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v4, p0, Lcom/android/cloud/fragment/presenter/g;->e:Lcom/micloud/midrive/infos/ErrInfo;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->d(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V

    return-void

    :goto_14
    iget-object v5, p0, Lcom/android/cloud/fragment/presenter/g;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object v6, p0, Lcom/android/cloud/fragment/presenter/g;->c:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v7, p0, Lcom/android/cloud/fragment/presenter/g;->d:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v8, p0, Lcom/android/cloud/fragment/presenter/g;->e:Lcom/micloud/midrive/infos/ErrInfo;

    move-object v9, p1

    move v10, p2

    invoke-static/range {v5 .. v10}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->h(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
