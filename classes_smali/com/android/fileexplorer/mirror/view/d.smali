.class public final synthetic Lcom/android/fileexplorer/mirror/view/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput p2, p0, Lcom/android/fileexplorer/mirror/view/d;->a:I

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13

    iget v0, p0, Lcom/android/fileexplorer/mirror/view/d;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_20

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/d;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lmiuix/internal/widget/ListPopup;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lmiuix/internal/widget/ListPopup;->b(Lmiuix/internal/widget/ListPopup;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    :pswitch_13  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/d;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->b(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    :goto_20
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/d;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lmiuix/internal/widget/PopupMenuWindow;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lmiuix/internal/widget/PopupMenuWindow;->e(Lmiuix/internal/widget/PopupMenuWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_13  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
