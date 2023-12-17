.class Lcom/android/fileexplorer/view/ToastTextView$2;
.super Ljava/lang/Object;
.source "ToastTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/ToastTextView;->setTextClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/ToastTextView;

.field public final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/ToastTextView;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView$2;->this$0:Lcom/android/fileexplorer/view/ToastTextView;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/view/ToastTextView$2;->val$listener:Landroid/view/View$OnClickListener;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView$2;->this$0:Lcom/android/fileexplorer/view/ToastTextView;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/ToastTextView;->dismiss()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView$2;->val$listener:Landroid/view/View$OnClickListener;

    .line 8
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 11
    return-void
.end method
