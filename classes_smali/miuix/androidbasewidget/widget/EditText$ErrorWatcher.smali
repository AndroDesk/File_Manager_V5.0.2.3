.class Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;
.super Ljava/lang/Object;
.source "EditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorWatcher"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/androidbasewidget/widget/EditText;


# direct methods
.method private constructor <init>(Lmiuix/androidbasewidget/widget/EditText;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;->this$0:Lmiuix/androidbasewidget/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/androidbasewidget/widget/EditText;Lmiuix/androidbasewidget/widget/EditText$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;-><init>(Lmiuix/androidbasewidget/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;->this$0:Lmiuix/androidbasewidget/widget/EditText;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lmiuix/androidbasewidget/widget/EditText;->setMiuiStyleError(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;->this$0:Lmiuix/androidbasewidget/widget/EditText;

    .line 9
    invoke-static {p1}, Lmiuix/androidbasewidget/widget/EditText;->access$100(Lmiuix/androidbasewidget/widget/EditText;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1d

    .line 15
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;->this$0:Lmiuix/androidbasewidget/widget/EditText;

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p1, v0}, Lmiuix/androidbasewidget/widget/EditText;->access$102(Lmiuix/androidbasewidget/widget/EditText;Z)Z

    .line 21
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;->this$0:Lmiuix/androidbasewidget/widget/EditText;

    .line 23
    invoke-static {p1}, Lmiuix/androidbasewidget/widget/EditText;->access$200(Lmiuix/androidbasewidget/widget/EditText;)Landroid/text/TextWatcher;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 30
    :cond_1d
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
