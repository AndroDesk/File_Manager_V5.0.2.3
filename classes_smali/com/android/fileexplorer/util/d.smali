.class public final synthetic Lcom/android/fileexplorer/util/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Li2/g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;I)V
    .registers 3

    iput p2, p0, Lcom/android/fileexplorer/util/d;->a:I

    iput-object p1, p0, Lcom/android/fileexplorer/util/d;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Li2/f;)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/util/d;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/util/d;->b:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->c(Landroid/view/View;Li2/f;)V

    return-void

    :goto_c
    iget-object v0, p0, Lcom/android/fileexplorer/util/d;->b:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->e(Landroid/view/View;Li2/f;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
