.class Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field public final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic access$600(Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    .line 4
    return-void
.end method

.method private setStep(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 3
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 5
    invoke-static {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;Z)V

    .line 8
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 10
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1900(Lmiuix/pickerwidget/widget/NumberPicker;)J

    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    return-void
.end method
