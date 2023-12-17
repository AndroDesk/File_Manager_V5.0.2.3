.class Lmiuix/appcompat/widget/Spinner$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/Spinner;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/widget/Spinner;->access$100(Lmiuix/appcompat/widget/Spinner;)Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_11

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 15
    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner;->showPopup()V

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1c

    .line 26
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 29
    :cond_1c
    return-void
.end method
