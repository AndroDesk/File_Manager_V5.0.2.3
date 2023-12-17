.class public final synthetic Lcom/android/fileexplorer/fragment/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/android/fileexplorer/fragment/a;->a:I

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/a;->b:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/fragment/a;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/a;->b:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->c(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;Landroid/view/View;)V

    return-void

    :goto_c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/a;->b:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->d(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;Landroid/view/View;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
