.class public final synthetic Lcom/android/fileexplorer/mirror/view/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    iput p2, p0, Lcom/android/fileexplorer/mirror/view/c;->a:I

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/mirror/view/c;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_2e

    :pswitch_6  #0x4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/c;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/internal/widget/ListPopup;

    invoke-static {v0}, Lmiuix/internal/widget/ListPopup;->c(Lmiuix/internal/widget/ListPopup;)V

    return-void

    :pswitch_e  #0x3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->b(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)V

    return-void

    :pswitch_16  #0x2
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->a(Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;)V

    return-void

    :pswitch_1e  #0x1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->e(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)V

    return-void

    :pswitch_26  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->a(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;)V

    return-void

    :goto_2e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/c;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/internal/widget/PopupMenuWindow;

    invoke-virtual {v0}, Lmiuix/internal/widget/PopupMenuWindow;->onDismiss()V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_1e  #00000001
        :pswitch_16  #00000002
        :pswitch_e  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
