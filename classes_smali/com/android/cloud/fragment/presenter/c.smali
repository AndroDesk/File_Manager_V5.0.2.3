.class public final synthetic Lcom/android/cloud/fragment/presenter/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;I)V
    .registers 4

    iput p3, p0, Lcom/android/cloud/fragment/presenter/c;->a:I

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/c;->b:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/c;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget v0, p0, Lcom/android/cloud/fragment/presenter/c;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/c;->b:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/c;->c:Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->s(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/c;->b:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/c;->c:Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->m(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
