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
.method public constructor <init>(Lcom/android/fileexplorer/view/SearchEditText;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/SearchEditText;->access$000(Lcom/android/fileexplorer/view/SearchEditText;)Z

    .line 6
    move-result v0

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    move-result p1

    .line 11
    const/4 v1, 0x1

    .line 12
    if-lez p1, :cond_f

    .line 14
    move p1, v1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    :goto_10
    if-eq v0, p1, :cond_43

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/view/SearchEditText;->access$000(Lcom/android/fileexplorer/view/SearchEditText;)Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_23

    .line 27
    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    .line 29
    invoke-static {p1}, Lcom/android/fileexplorer/view/SearchEditText;->access$100(Lcom/android/fileexplorer/view/SearchEditText;)Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_23

    .line 35
    return-void

    .line 36
    :cond_23
    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    .line 38
    invoke-static {p1}, Lcom/android/fileexplorer/view/SearchEditText;->access$000(Lcom/android/fileexplorer/view/SearchEditText;)Z

    .line 41
    move-result v0

    .line 42
    xor-int/2addr v0, v1

    .line 43
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/SearchEditText;->access$002(Lcom/android/fileexplorer/view/SearchEditText;Z)Z

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 51
    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    .line 53
    invoke-static {p1}, Lcom/android/fileexplorer/view/SearchEditText;->access$200(Lcom/android/fileexplorer/view/SearchEditText;)Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;

    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_43

    .line 59
    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$1;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    .line 61
    invoke-static {p1}, Lcom/android/fileexplorer/view/SearchEditText;->access$200(Lcom/android/fileexplorer/view/SearchEditText;)Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lr0/a;->invalidateRoot()V

    .line 68
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
