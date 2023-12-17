.class public final synthetic Lcom/android/cloud/fragment/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/android/cloud/fragment/b;->a:I

    .line 3
    iput-object p1, p0, Lcom/android/cloud/fragment/b;->b:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget v0, p0, Lcom/android/cloud/fragment/b;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/cloud/fragment/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->a(Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_e  #0x1
    iget-object v0, p0, Lcom/android/cloud/fragment/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->c(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_16  #0x0
    iget-object v0, p0, Lcom/android/cloud/fragment/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/cloud/fragment/CloudDriveFragment;

    invoke-static {v0, p1, p2}, Lcom/android/cloud/fragment/CloudDriveFragment;->c(Lcom/android/cloud/fragment/CloudDriveFragment;Landroid/content/DialogInterface;I)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/cloud/fragment/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileMultiChoiceCallback;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileMultiChoiceCallback;->b(Lcom/android/fileexplorer/fragment/file/home/HomeFileMultiChoiceCallback;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
