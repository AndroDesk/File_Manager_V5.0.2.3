.class public final synthetic Lb2/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .registers 4

    .line 1
    iput p2, p0, Lb2/a;->a:I

    .line 3
    iput-object p3, p0, Lb2/a;->c:Ljava/lang/Object;

    .line 5
    iput p1, p0, Lb2/a;->b:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lb2/a;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object v0, p0, Lb2/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;

    iget v1, p0, Lb2/a;->b:I

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;->a(Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;ILandroid/view/View;)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lb2/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;

    iget v1, p0, Lb2/a;->b:I

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->a(Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;ILandroid/view/View;)V

    return-void

    :goto_1a
    iget-object v0, p0, Lb2/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;

    iget v1, p0, Lb2/a;->b:I

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;->a(Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;ILandroid/view/View;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
