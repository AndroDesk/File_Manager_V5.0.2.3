.class public final synthetic Lmiuix/navigation/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/fragment/app/w;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmiuix/navigation/SplitFragmentManager;

.field public final synthetic c:Landroidx/fragment/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;I)V
    .registers 4

    iput p3, p0, Lmiuix/navigation/b;->a:I

    iput-object p1, p0, Lmiuix/navigation/b;->b:Lmiuix/navigation/SplitFragmentManager;

    iput-object p2, p0, Lmiuix/navigation/b;->c:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAttachFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 5

    iget v0, p0, Lmiuix/navigation/b;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object v0, p0, Lmiuix/navigation/b;->b:Lmiuix/navigation/SplitFragmentManager;

    iget-object v1, p0, Lmiuix/navigation/b;->c:Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1, p1, p2}, Lmiuix/navigation/SplitFragmentManager;->f(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void

    :pswitch_e  #0x1
    iget-object v0, p0, Lmiuix/navigation/b;->b:Lmiuix/navigation/SplitFragmentManager;

    iget-object v1, p0, Lmiuix/navigation/b;->c:Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1, p1, p2}, Lmiuix/navigation/SplitFragmentManager;->a(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void

    :pswitch_16  #0x0
    iget-object v0, p0, Lmiuix/navigation/b;->b:Lmiuix/navigation/SplitFragmentManager;

    iget-object v1, p0, Lmiuix/navigation/b;->c:Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1, p1, p2}, Lmiuix/navigation/SplitFragmentManager;->e(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lmiuix/navigation/b;->b:Lmiuix/navigation/SplitFragmentManager;

    iget-object v1, p0, Lmiuix/navigation/b;->c:Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1, p1, p2}, Lmiuix/navigation/SplitFragmentManager;->b(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
