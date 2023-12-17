.class public final synthetic Lcom/android/cloud/fragment/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/cloud/fragment/CloudFileFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/fragment/CloudFileFragment;I)V
    .registers 3

    iput p2, p0, Lcom/android/cloud/fragment/d;->a:I

    iput-object p1, p0, Lcom/android/cloud/fragment/d;->b:Lcom/android/cloud/fragment/CloudFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/cloud/fragment/d;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/cloud/fragment/d;->b:Lcom/android/cloud/fragment/CloudFileFragment;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->e(Lcom/android/cloud/fragment/CloudFileFragment;Landroid/view/View;)V

    return-void

    :pswitch_c  #0x0
    iget-object v0, p0, Lcom/android/cloud/fragment/d;->b:Lcom/android/cloud/fragment/CloudFileFragment;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->d(Lcom/android/cloud/fragment/CloudFileFragment;Landroid/view/View;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/cloud/fragment/d;->b:Lcom/android/cloud/fragment/CloudFileFragment;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->c(Lcom/android/cloud/fragment/CloudFileFragment;Landroid/view/View;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
