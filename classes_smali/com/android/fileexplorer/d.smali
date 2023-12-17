.class public final synthetic Lcom/android/fileexplorer/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/fileexplorer/PhoneMainActivityProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)V
    .registers 3

    iput p2, p0, Lcom/android/fileexplorer/d;->a:I

    iput-object p1, p0, Lcom/android/fileexplorer/d;->b:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/d;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/d;->b:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->d(Lcom/android/fileexplorer/PhoneMainActivityProxy;Landroid/view/View;)V

    return-void

    :goto_c
    iget-object v0, p0, Lcom/android/fileexplorer/d;->b:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->b(Lcom/android/fileexplorer/PhoneMainActivityProxy;Landroid/view/View;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
