.class Lmiuix/stretchablewidget/StretchableDatePicker$1;
.super Ljava/lang/Object;
.source "StretchableDatePicker.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/stretchablewidget/StretchableDatePicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lmiuix/stretchablewidget/StretchableDatePicker;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker$1;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 3
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker$1;->val$context:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker$1;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 3
    invoke-static {p1}, Lmiuix/stretchablewidget/StretchableDatePicker;->access$000(Lmiuix/stretchablewidget/StretchableDatePicker;)Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->setLunarMode(Z)V

    .line 10
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker$1;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 12
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableDatePicker$1;->val$context:Landroid/content/Context;

    .line 14
    invoke-static {p1, p2, v0}, Lmiuix/stretchablewidget/StretchableDatePicker;->access$100(Lmiuix/stretchablewidget/StretchableDatePicker;ZLandroid/content/Context;)V

    .line 17
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker$1;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 19
    invoke-static {p1, p2}, Lmiuix/stretchablewidget/StretchableDatePicker;->access$202(Lmiuix/stretchablewidget/StretchableDatePicker;Z)Z

    .line 22
    return-void
.end method
