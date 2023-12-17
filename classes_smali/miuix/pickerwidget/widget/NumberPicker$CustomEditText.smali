.class public Lmiuix/pickerwidget/widget/NumberPicker$CustomEditText;
.super Landroidx/appcompat/widget/h;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEditText"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method public onEditorAction(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    .line 4
    const/4 v0, 0x6

    .line 5
    if-ne p1, v0, :cond_9

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 10
    :cond_9
    return-void
.end method
