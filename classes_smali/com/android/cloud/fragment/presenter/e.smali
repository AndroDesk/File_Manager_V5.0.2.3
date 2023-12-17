.class public final synthetic Lcom/android/cloud/fragment/presenter/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

.field public final synthetic c:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;I)V
    .registers 5

    iput p4, p0, Lcom/android/cloud/fragment/presenter/e;->a:I

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/e;->b:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/e;->c:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p3, p0, Lcom/android/cloud/fragment/presenter/e;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Ljava/util/List;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/cloud/fragment/presenter/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/e;->b:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/e;->d:Ljava/util/List;

    iput-object p3, p0, Lcom/android/cloud/fragment/presenter/e;->c:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget v0, p0, Lcom/android/cloud/fragment/presenter/e;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/e;->b:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/e;->c:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v2, p0, Lcom/android/cloud/fragment/presenter/e;->d:Ljava/util/List;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->u(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/e;->b:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/e;->c:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v2, p0, Lcom/android/cloud/fragment/presenter/e;->d:Ljava/util/List;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->l(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void

    :goto_1a
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/e;->b:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/e;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/android/cloud/fragment/presenter/e;->c:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v0, v2, v1, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->v(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
