.class public final synthetic Lcom/android/fileexplorer/mirror/view/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;I)V
    .registers 3

    iput p2, p0, Lcom/android/fileexplorer/mirror/view/j;->a:I

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/j;->b:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/mirror/view/j;->a:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_36

    :pswitch_6  #0x7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/j;->b:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->k(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V

    return-void

    :pswitch_c  #0x6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/j;->b:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->g(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V

    return-void

    :pswitch_12  #0x5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/j;->b:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->h(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V

    return-void

    :pswitch_18  #0x4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/j;->b:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->a(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V

    return-void

    :pswitch_1e  #0x3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/j;->b:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->d(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V

    return-void

    :pswitch_24  #0x2
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/j;->b:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->i(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V

    return-void

    :pswitch_2a  #0x1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/j;->b:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->f(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V

    return-void

    :pswitch_30  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/j;->b:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->c(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V

    return-void

    :goto_36
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/j;->b:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->j(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;)V

    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_30  #00000000
        :pswitch_2a  #00000001
        :pswitch_24  #00000002
        :pswitch_1e  #00000003
        :pswitch_18  #00000004
        :pswitch_12  #00000005
        :pswitch_c  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method
