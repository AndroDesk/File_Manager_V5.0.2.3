.class public final synthetic Lcom/android/fileexplorer/mirror/view/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;I)V
    .registers 3

    iput p2, p0, Lcom/android/fileexplorer/mirror/view/e;->a:I

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/e;->b:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14

    iget v0, p0, Lcom/android/fileexplorer/mirror/view/e;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/e;->b:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->c(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    :goto_10
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/e;->b:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v2 .. v7}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->b(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
