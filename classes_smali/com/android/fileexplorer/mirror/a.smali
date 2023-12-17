.class public final synthetic Lcom/android/fileexplorer/mirror/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/android/fileexplorer/mirror/a;->a:I

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/a;->b:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/mirror/a;->a:I

    packed-switch v0, :pswitch_data_60

    goto :goto_58

    :pswitch_6  #0x8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/a;->b:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->n(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;)V

    return-void

    :pswitch_e  #0x7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/a;->b:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->o(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Z)V

    return-void

    :pswitch_1a  #0x6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/a;->b:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->q(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Ljava/lang/Integer;)V

    return-void

    :pswitch_22  #0x5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/a;->b:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->i(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    return-void

    :pswitch_2a  #0x4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/a;->b:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->k(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    return-void

    :pswitch_32  #0x3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/a;->b:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->p(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    return-void

    :pswitch_3e  #0x2
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/a;->b:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->l(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Ljava/lang/Object;)V

    return-void

    :pswitch_44  #0x1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/a;->b:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->j(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Z)V

    return-void

    :pswitch_50  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/a;->b:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->m(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Ljava/util/List;)V

    return-void

    :goto_58
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/a;->b:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->h(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;)V

    return-void

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_50  #00000000
        :pswitch_44  #00000001
        :pswitch_3e  #00000002
        :pswitch_32  #00000003
        :pswitch_2a  #00000004
        :pswitch_22  #00000005
        :pswitch_1a  #00000006
        :pswitch_e  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
