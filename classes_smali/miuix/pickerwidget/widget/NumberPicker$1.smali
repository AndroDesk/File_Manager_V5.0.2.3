.class Lmiuix/pickerwidget/widget/NumberPicker$1;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


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
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$1;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result p1

    .line 5
    const/16 p2, 0x9

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eq p1, p2, :cond_25

    .line 10
    const/16 p2, 0xa

    .line 12
    if-eq p1, p2, :cond_e

    .line 14
    goto :goto_3c

    .line 15
    :cond_e
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$1;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 17
    invoke-static {p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$102(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 20
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$1;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 22
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$200(Lmiuix/pickerwidget/widget/NumberPicker;)Lmiuix/animation/IHoverStyle;

    .line 25
    move-result-object p1

    .line 26
    sget-object p2, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 28
    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 31
    move-result-object p1

    .line 32
    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    .line 34
    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->hoverExit([Lmiuix/animation/base/AnimConfig;)V

    .line 37
    goto :goto_3c

    .line 38
    :cond_25
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$1;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 40
    const/4 p2, 0x1

    .line 41
    invoke-static {p1, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$102(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 44
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$1;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 46
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$200(Lmiuix/pickerwidget/widget/NumberPicker;)Lmiuix/animation/IHoverStyle;

    .line 49
    move-result-object p1

    .line 50
    sget-object p2, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 52
    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 55
    move-result-object p1

    .line 56
    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    .line 58
    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->hoverEnter([Lmiuix/animation/base/AnimConfig;)V

    .line 61
    :goto_3c
    return v0
.end method
