.class public final synthetic Lcom/android/fileexplorer/mirror/view/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .registers 3

    iput p2, p0, Lcom/android/fileexplorer/mirror/view/k;->a:I

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/k;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/mirror/view/k;->a:I

    packed-switch v0, :pswitch_data_60

    goto :goto_57

    :pswitch_6  #0x8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/k;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onKeyEnter(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_f  #0x7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/k;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_18  #0x6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/k;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onKeyEnter(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_21  #0x5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/k;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onKeyEnter(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_2a  #0x4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/k;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onKeyEnter(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_33  #0x3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/k;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onKeyEnter(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_3c  #0x2
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/k;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onKeyEnter(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_45  #0x1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/k;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onKeyEnter(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_4e  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/k;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->onKeyEnter(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :goto_57
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/k;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    invoke-static {v0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->g(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4e  #00000000
        :pswitch_45  #00000001
        :pswitch_3c  #00000002
        :pswitch_33  #00000003
        :pswitch_2a  #00000004
        :pswitch_21  #00000005
        :pswitch_18  #00000006
        :pswitch_f  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
