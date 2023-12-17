.class public final synthetic Lcom/android/cloud/fragment/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/cloud/fragment/c;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget v0, p0, Lcom/android/cloud/fragment/c;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_12

    :pswitch_6  #0x2
    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileMultiChoiceCallback;->a(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_a  #0x1
    invoke-static {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->b(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_e  #0x0
    invoke-static {p1, p2}, Lcom/android/cloud/fragment/CloudDriveFragment;->d(Landroid/content/DialogInterface;I)V

    return-void

    :goto_12
    invoke-static {p1, p2}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->a(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_a  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
