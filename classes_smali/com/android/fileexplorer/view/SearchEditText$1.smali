.class Lcom/android/fileexplorer/view/SearchEditText$1;
.super Ljava/lang/Object;
.source "SearchEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/SearchEditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/SearchEditText;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-static {v0}, Lcom/android/fileexplorer/view/SearchEditText;->access$000(Lcom/android/fileexplorer/view/SearchEditText;)Z

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_f

    move p1, v1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    if-eq v0, p1, :cond_43

    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-static {p1}, Lcom/android/fileexplorer/view/SearchEditText;->access$000(Lcom/android/fileexplorer/view/SearchEditText;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-static {p1}, Lcom/android/fileexplorer/view/SearchEditText;->access$100(Lcom/android/fileexplorer/view/SearchEditText;)Z

    move-result p1

    if-eqz p1, :cond_23

    return-void

    :cond_23
    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-static {p1}, Lcom/android/fileexplorer/view/SearchEditText;->access$000(Lcom/android/fileexplorer/view/SearchEditText;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/SearchEditText;->access$002(Lcom/android/fileexplorer/view/SearchEditText;Z)Z

    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-static {p1}, Lcom/android/fileexplorer/view/SearchEditText;->access$200(Lcom/android/fileexplorer/view/SearchEditText;)Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;

    move-result-object p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-static {p1}, Lcom/android/fileexplorer/view/SearchEditText;->access$200(Lcom/android/fileexplorer/view/SearchEditText;)Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;

    move-result-object p1

    invoke-virtual {p1}, Lr0/a;->invalidateRoot()V

    :cond_43
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
