.class public final synthetic Lcom/android/fileexplorer/util/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Li2/f;


# direct methods
.method public synthetic constructor <init>(Li2/f;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/android/fileexplorer/util/c;->a:I

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/util/c;->b:Li2/f;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/util/c;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/util/c;->b:Li2/f;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->b(Landroid/view/View;Li2/f;)V

    return-void

    :goto_c
    iget-object v0, p0, Lcom/android/fileexplorer/util/c;->b:Li2/f;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->d(Landroid/view/View;Li2/f;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
