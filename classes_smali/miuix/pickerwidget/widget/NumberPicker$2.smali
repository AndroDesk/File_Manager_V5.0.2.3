.class Lmiuix/pickerwidget/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/pickerwidget/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$2;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-eq p1, p2, :cond_b

    .line 8
    const/4 p2, 0x3

    .line 9
    if-eq p1, p2, :cond_b

    .line 11
    goto :goto_10

    .line 12
    :cond_b
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$2;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 14
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$300(Lmiuix/pickerwidget/widget/NumberPicker;)V

    .line 17
    :goto_10
    const/4 p1, 0x0

    .line 18
    return p1
.end method
