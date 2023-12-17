.class Lcom/google/android/material/snackbar/Snackbar$1;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/snackbar/Snackbar;

.field public final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/Snackbar;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/snackbar/Snackbar$1;->this$0:Lcom/google/android/material/snackbar/Snackbar;

    .line 3
    iput-object p2, p0, Lcom/google/android/material/snackbar/Snackbar$1;->val$listener:Landroid/view/View$OnClickListener;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/Snackbar$1;->val$listener:Landroid/view/View$OnClickListener;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/material/snackbar/Snackbar$1;->this$0:Lcom/google/android/material/snackbar/Snackbar;

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 12
    return-void
.end method
