.class public final synthetic Lcom/android/fileexplorer/util/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/android/fileexplorer/util/b;->a:I

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/util/b;->b:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/util/b;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/fileexplorer/util/b;->b:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;

    invoke-static {v0, p1, p2, p3}, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->b(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V

    return-void

    :pswitch_c  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/util/b;->b:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;

    invoke-static {v0, p1, p2, p3}, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->a(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/fileexplorer/util/b;->b:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;

    invoke-static {v0, p1, p2, p3}, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->c(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
