.class Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;
.super Ljava/lang/Object;
.source "BottomSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 3
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 5
    if-eqz v0, :cond_19

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_19

    .line 13
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->shouldWindowCloseOnTouchOutside()Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_19

    .line 21
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancel()V

    .line 26
    :cond_19
    return-void
.end method
