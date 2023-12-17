.class public final synthetic Lcom/android/cloud/fragment/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Lcom/android/cloud/fragment/e;->a:I

    iput-object p1, p0, Lcom/android/cloud/fragment/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/cloud/fragment/e;->a:I

    packed-switch v0, :pswitch_data_56

    goto :goto_4e

    :pswitch_6  #0x8
    iget-object v0, p0, Lcom/android/cloud/fragment/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->b(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;Landroid/view/View;)V

    return-void

    :pswitch_e  #0x7
    iget-object v0, p0, Lcom/android/cloud/fragment/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->b(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;Landroid/view/View;)V

    return-void

    :pswitch_16  #0x6
    iget-object v0, p0, Lcom/android/cloud/fragment/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->d(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/view/View;)V

    return-void

    :pswitch_1e  #0x5
    iget-object v0, p0, Lcom/android/cloud/fragment/e;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->b(Lmiuix/appcompat/widget/Spinner;Landroid/view/View;)V

    return-void

    :pswitch_26  #0x4
    iget-object v0, p0, Lcom/android/cloud/fragment/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->b(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;Landroid/view/View;)V

    return-void

    :pswitch_2e  #0x3
    iget-object v0, p0, Lcom/android/cloud/fragment/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->b(Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;Landroid/view/View;)V

    return-void

    :pswitch_36  #0x2
    iget-object v0, p0, Lcom/android/cloud/fragment/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->b(Lcom/android/fileexplorer/fragment/SearchResultFragment;Landroid/view/View;)V

    return-void

    :pswitch_3e  #0x1
    iget-object v0, p0, Lcom/android/cloud/fragment/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/BaseTabFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->b(Lcom/android/fileexplorer/fragment/BaseTabFragment;Landroid/view/View;)V

    return-void

    :pswitch_46  #0x0
    iget-object v0, p0, Lcom/android/cloud/fragment/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;->b(Lcom/android/cloud/fragment/RevokeOrLogoutConfirmFragment;Landroid/view/View;)V

    return-void

    :goto_4e
    iget-object v0, p0, Lcom/android/cloud/fragment/e;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/internal/widget/ListPopup;

    invoke-static {v0, p1}, Lmiuix/internal/widget/ListPopup;->a(Lmiuix/internal/widget/ListPopup;Landroid/view/View;)V

    return-void

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_46  #00000000
        :pswitch_3e  #00000001
        :pswitch_36  #00000002
        :pswitch_2e  #00000003
        :pswitch_26  #00000004
        :pswitch_1e  #00000005
        :pswitch_16  #00000006
        :pswitch_e  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
