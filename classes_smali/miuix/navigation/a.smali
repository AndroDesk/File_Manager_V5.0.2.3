.class public final synthetic Lmiuix/navigation/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/fragment/app/w;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmiuix/navigation/SplitFragmentManager;

.field public final synthetic c:Landroidx/fragment/app/Fragment;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;IIIII)V
    .registers 8

    .line 1
    iput p7, p0, Lmiuix/navigation/a;->a:I

    .line 3
    iput-object p1, p0, Lmiuix/navigation/a;->b:Lmiuix/navigation/SplitFragmentManager;

    .line 5
    iput-object p2, p0, Lmiuix/navigation/a;->c:Landroidx/fragment/app/Fragment;

    .line 7
    iput p3, p0, Lmiuix/navigation/a;->d:I

    .line 9
    iput p4, p0, Lmiuix/navigation/a;->e:I

    .line 11
    iput p5, p0, Lmiuix/navigation/a;->f:I

    .line 13
    iput p6, p0, Lmiuix/navigation/a;->g:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public final onAttachFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 19

    move-object/from16 v0, p0

    iget v1, v0, Lmiuix/navigation/a;->a:I

    packed-switch v1, :pswitch_data_30

    goto :goto_1c

    :pswitch_8  #0x0
    iget-object v2, v0, Lmiuix/navigation/a;->b:Lmiuix/navigation/SplitFragmentManager;

    iget-object v3, v0, Lmiuix/navigation/a;->c:Landroidx/fragment/app/Fragment;

    iget v4, v0, Lmiuix/navigation/a;->d:I

    iget v5, v0, Lmiuix/navigation/a;->e:I

    iget v6, v0, Lmiuix/navigation/a;->f:I

    iget v7, v0, Lmiuix/navigation/a;->g:I

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static/range {v2 .. v9}, Lmiuix/navigation/SplitFragmentManager;->c(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;IIIILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void

    :goto_1c
    iget-object v8, v0, Lmiuix/navigation/a;->b:Lmiuix/navigation/SplitFragmentManager;

    iget-object v9, v0, Lmiuix/navigation/a;->c:Landroidx/fragment/app/Fragment;

    iget v10, v0, Lmiuix/navigation/a;->d:I

    iget v11, v0, Lmiuix/navigation/a;->e:I

    iget v12, v0, Lmiuix/navigation/a;->f:I

    iget v13, v0, Lmiuix/navigation/a;->g:I

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static/range {v8 .. v15}, Lmiuix/navigation/SplitFragmentManager;->d(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;IIIILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method
