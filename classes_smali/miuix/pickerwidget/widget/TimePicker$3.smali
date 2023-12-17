.class Lmiuix/pickerwidget/widget/TimePicker$3;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/pickerwidget/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/pickerwidget/widget/TimePicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/TimePicker;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$3;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$3;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 3
    invoke-static {p1}, Lmiuix/pickerwidget/widget/TimePicker;->access$200(Lmiuix/pickerwidget/widget/TimePicker;)V

    .line 6
    return-void
.end method
