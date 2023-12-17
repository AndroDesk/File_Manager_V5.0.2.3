.class public final synthetic Lcom/android/fileexplorer/filemanager/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;
.implements Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;
.implements Lcom/micloud/midrive/helper/StatHelper$IStatParam$Builder;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput p1, p0, Lcom/android/fileexplorer/filemanager/c;->a:I

    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/c;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/fileexplorer/filemanager/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    invoke-static {v0, v1, p1}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->a(Ljava/lang/String;Ljava/lang/Exception;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V

    return-void
.end method

.method public final onClick(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/filemanager/c;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, v1, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->a(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/Runnable;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->b(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Ljava/lang/String;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public final onItemClick(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->a(Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;I)V

    return-void
.end method
