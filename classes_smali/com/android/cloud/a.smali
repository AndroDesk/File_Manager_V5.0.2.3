.class public final synthetic Lcom/android/cloud/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput p1, p0, Lcom/android/cloud/a;->a:I

    .line 3
    iput-object p2, p0, Lcom/android/cloud/a;->b:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/android/cloud/a;->c:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget v0, p0, Lcom/android/cloud/a;->a:I

    packed-switch v0, :pswitch_data_4e

    goto :goto_42

    :pswitch_6  #0x4
    iget-object v0, p0, Lcom/android/cloud/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    iget-object v1, p0, Lcom/android/cloud/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->b(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_12  #0x3
    iget-object v0, p0, Lcom/android/cloud/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    iget-object v1, p0, Lcom/android/cloud/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1, p2}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->b(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;Ljava/lang/Boolean;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1e  #0x2
    iget-object v0, p0, Lcom/android/cloud/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object v1, p0, Lcom/android/cloud/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->C(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_2a  #0x1
    iget-object v0, p0, Lcom/android/cloud/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v1, p0, Lcom/android/cloud/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/micloud/midrive/infos/ErrInfo;

    invoke-static {v0, v1, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->w(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_36  #0x0
    iget-object v0, p0, Lcom/android/cloud/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/cloud/CloudDriveManager;

    iget-object v1, p0, Lcom/android/cloud/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Lcom/android/cloud/CloudDriveManager;->b(Lcom/android/cloud/CloudDriveManager;Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void

    :goto_42
    iget-object v0, p0, Lcom/android/cloud/a;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/navigator/EditDialogFragment;

    iget-object v1, p0, Lcom/android/cloud/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v0, v1, p1, p2}, Lmiuix/navigator/EditDialogFragment;->b(Lmiuix/navigator/EditDialogFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_2a  #00000001
        :pswitch_1e  #00000002
        :pswitch_12  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
