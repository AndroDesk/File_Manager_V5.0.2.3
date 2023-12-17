.class Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;
.super Ljava/lang/Object;
.source "ClearableEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/widget/ClearableEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowWidgetTextWatcher"
.end annotation


# instance fields
.field public mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/androidbasewidget/widget/ClearableEditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/widget/ClearableEditText;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;->mRef:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z

    .line 15
    move-result v1

    .line 16
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 19
    move-result p1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-lez p1, :cond_18

    .line 23
    move p1, v2

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 p1, 0x0

    .line 26
    :goto_19
    if-eq v1, p1, :cond_33

    .line 28
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z

    .line 31
    move-result p1

    .line 32
    xor-int/2addr p1, v2

    .line 33
    invoke-static {v0, p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$002(Lmiuix/androidbasewidget/widget/ClearableEditText;Z)Z

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 39
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$300(Lmiuix/androidbasewidget/widget/ClearableEditText;)Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_33

    .line 45
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$300(Lmiuix/androidbasewidget/widget/ClearableEditText;)Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lr0/a;->invalidateRoot()V

    .line 52
    :cond_33
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
