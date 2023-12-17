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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/ToastTextView;Landroid/view/View$OnClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView$2;->this$0:Lcom/android/fileexplorer/view/ToastTextView;

    iput-object p2, p0, Lcom/android/fileexplorer/view/ToastTextView$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView$2;->this$0:Lcom/android/fileexplorer/view/ToastTextView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/ToastTextView;->dismiss()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/ToastTextView$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
